package gcn_webview

import (
	"fmt"
	"log"

	"github.com/asticode/go-astilectron"
	flutter "github.com/go-flutter-desktop/go-flutter"
	"github.com/go-flutter-desktop/go-flutter/plugin"
)

const (
	channelName = "gcn_webview"
)

// GcnWebviewPlugin implements flutter.Plugin and handles method.
type GcnWebviewPlugin struct {
	channel        *plugin.MethodChannel
	Options        astilectron.Options
	WindowsOptions *astilectron.WindowOptions
}

var _ flutter.Plugin = &GcnWebviewPlugin{} // compile-time type check

// InitPlugin initializes the plugin.
func (p *GcnWebviewPlugin) InitPlugin(messenger plugin.BinaryMessenger) error {
	p.channel = plugin.NewMethodChannel(messenger, channelName, plugin.StandardMethodCodec{})
	p.channel.HandleFunc("gcnWebview", p.handleWebview)
	return nil
}

func (p *GcnWebviewPlugin) handleWebview(arguments interface{}) (reply interface{}, err error) {

	// check if webview is ready and active in viewport
	ready := make(chan bool)
	go func() {
		for {
			select {
			case <-ready:
				close(ready)
				p.channel.InvokeMethod("gcnWebviewReady", true)
				return
			}
		}
	}()

	url := arguments.(string)
	// Set logger
	l := log.New(log.Writer(), log.Prefix(), log.Flags())

	// Create astilectron
	a, err := astilectron.New(l, p.Options)
	if err != nil {
		l.Fatal(fmt.Errorf("main: creating astilectron failed: %w", err))
		return nil, err
	}
	defer a.Close()

	// Handle signals
	a.HandleSignals()

	// Start
	if err = a.Start(); err != nil {
		l.Fatal(fmt.Errorf("main: starting astilectron failed: %w", err))
		return nil, err
	}
	// New window
	var w *astilectron.Window
	if w, err = a.NewWindow(url, p.WindowsOptions); err != nil {
		l.Fatal(fmt.Errorf("main: new window failed: %w", err))
		return nil, err
	}

	// Create windows
	if err = w.Create(); err != nil {
		l.Fatal(fmt.Errorf("main: creating window failed: %w", err))
		return nil, err
	}

	ready <- true
	// Blocking pattern
	a.Wait()

	return true, nil
}

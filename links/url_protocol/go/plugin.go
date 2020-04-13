package url_protocol

import (
	"encoding/json"
	"net/url"
	"os"

	flutter "github.com/go-flutter-desktop/go-flutter"
	"github.com/go-flutter-desktop/go-flutter/plugin"
)

const (
	channelName = "url_protocol"
)

// UrlProtocolPlugin implements flutter.Plugin and handles method.
type UrlProtocolPlugin struct {
	Scheme  string
	Host    string
	URLTest string
}

var _ flutter.Plugin = &UrlProtocolPlugin{} // compile-time type check

// InitPlugin initializes the plugin.
func (p *UrlProtocolPlugin) InitPlugin(messenger plugin.BinaryMessenger) error {
	channel := plugin.NewMethodChannel(messenger, channelName, plugin.StandardMethodCodec{})
	channel.HandleFunc("getRoute", p.getRoute)
	return nil
}

func (p *UrlProtocolPlugin) getRoute(arguments interface{}) (reply interface{}, err error) {
	urlPath := ""

	if len(os.Args) > 1 {
		urlPath = os.Args[1]
	} else if p.URLTest == "" {
		urlPath = getDefaultURL(p.Scheme, p.Host)
	} else {
		urlPath = p.URLTest
	}

	query := getRouteAndParams(urlPath)
	return query, nil
}
func getRouteAndParams(urlArgs string) string {
	u, err := url.Parse(urlArgs)
	m := make(map[string]interface{})

	if err != nil {
		m["route"] = "/"
		return "/"
	}

	m["scheme"] = u.Scheme
	m["host"] = u.Host
	m["route"] = u.Path
	m["params"] = u.Query()

	data, _ := json.Marshal(m)

	return string(data)
}

func getDefaultURL(scheme, host string) string {
	return scheme + "://" + host + "/"
}

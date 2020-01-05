package main

import (
	"flag"
	"fmt"
	"os"

	"github.com/rylio/ytdl"
)

func main() {

	id := ""
	flag.StringVar(&id, "id", "", "the YoutTube ID you want to playback to download")
	flag.Parse()

	if id == "" {
		panic("-id must be specified")
	}

	URL := "https://www.youtube.com/watch?v=" + id

	vid, err := ytdl.GetVideoInfo(URL)
	if err != nil {
		fmt.Println("Failed to get video info")
		return
	}
	// TODO: output jsonfile with meta data, and name video by the ID.
	file, _ := os.Create(vid.Title + ".mp4")
	defer file.Close()
	vid.Download(vid.Formats[0], file)

}

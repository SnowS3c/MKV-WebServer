# Play MKV Films on a Node Web Server
Play films in format mkv on web pages using Node. First convert mkv file into mp4 file using the script ```convert.sh```
or you can convert it manually with VLC. Then exec the node server to host the films and open a web browser, go to localhost:3000 and select
the film you want to watch.

Save all the files in the directory ./public/videos/

## Convert MKV to MP4

### 2 Options

### Fast
Use the script convert.sh to change the format from mkv to mp4.
```
./convert.sh file.mkv
./convert.sh file1.mkv file2.mkv file3.mkv
```

### Manually 
VLC

Media -> Convert -> Add... (Select files) -> Convert/Save

Profile Video - H.264 + MP3 (MP4) -> (Edit(Tool Settings))

Profile edition
- Video codec -> Keep original video track
- Audio codec -> Codec MPEG 4 Audio (AAC) - Channels 1
- Save

Destination file: file.mp4 -> Start

#### If the file.mp4 has more than 1 audio track:
You have to delete them with ffmpeg
```
sudo apt-get update
sudo apt-get install ffmpeg
ffmpeg -i input_file.mp4 -map 0 -map -0:a:0 -c copy output_file.mp4
```
Use -map to select the streams.
```
-map 0 Selects all streams from the input
-map -0:a:2 Deselects audio stream 3.
```
More help:

![alt text](https://github.com/xansx/MKV-WebServer/blob/main/ffmpeg.png)

## Create Node Server
```
cd Folder
npm init
npm install express --save
```

## Launch Node
```
node server.js
```

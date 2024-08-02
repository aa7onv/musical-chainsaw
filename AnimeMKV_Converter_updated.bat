@echo off & setlocal enabledelayedexpansion
for %%v in ("*.mkv") do (
  set FileName=%%v

  ffmpeg -i "!FileName!" -y -c copy -map 0:v -map 0:a:0 -sn -strict -2 "!FileName:~0,-4!.mp4"
)
mkdir old_mkv
move "*.mkv" old_mkv
pause

//vallhalla
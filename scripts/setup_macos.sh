#!/bin/bash

# Download and unzip MacOS framework
MACOS_URL="https://github.com/sk3llo/ffmpeg_kit_flutter/releases/download/6.0.2/ffmpeg-kit-macos-full-gpl-6.0.zip"
mkdir -p Frameworks
curl -L $MACOS_URL -o frameworks.zip
unzip -o frameworks.zip -d Frameworks
rm frameworks.zip

# Delete bitcode from all frameworks
xcrun bitcode_strip -r Frameworks/ffmpeg-kit-macos-full-gpl/ffmpegkit.framework/ffmpegkit -o Frameworks/ffmpeg-kit-macos-full-gpl/ffmpegkit.framework/ffmpegkit
xcrun bitcode_strip -r Frameworks/ffmpeg-kit-macos-full-gpl/libavcodec.framework/libavcodec -o Frameworks/ffmpeg-kit-macos-full-gpl/libavcodec.framework/libavcodec
xcrun bitcode_strip -r Frameworks/ffmpeg-kit-macos-full-gpl/libavdevice.framework/libavdevice -o Frameworks/ffmpeg-kit-macos-full-gpl/libavdevice.framework/libavdevice
xcrun bitcode_strip -r Frameworks/ffmpeg-kit-macos-full-gpl/libavfilter.framework/libavfilter -o Frameworks/ffmpeg-kit-macos-full-gpl/libavfilter.framework/libavfilter
xcrun bitcode_strip -r Frameworks/ffmpeg-kit-macos-full-gpl/libavformat.framework/libavformat -o Frameworks/ffmpeg-kit-macos-full-gpl/libavformat.framework/libavformat
xcrun bitcode_strip -r Frameworks/ffmpeg-kit-macos-full-gpl/libavutil.framework/libavutil -o Frameworks/ffmpeg-kit-macos-full-gpl/libavutil.framework/libavutil
xcrun bitcode_strip -r Frameworks/ffmpeg-kit-macos-full-gpl/libswresample.framework/libswresample -o Frameworks/ffmpeg-kit-macos-full-gpl/libswresample.framework/libswresample
xcrun bitcode_strip -r Frameworks/ffmpeg-kit-macos-full-gpl/libswscale.framework/libswscale -o Frameworks/ffmpeg-kit-macos-full-gpl/libswscale.framework/libswscale
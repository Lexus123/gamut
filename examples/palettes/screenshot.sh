#!/bin/sh
go run main.go

for filename in ${GOPATH}/src/github.com/Lexus123/gamut/examples/palettes/palette_*.html; do
    palette=`basename -s .html ${filename}`
    CutyCapt --url=file://${filename} --out="${GOPATH}/src/github.com/Lexus123/gamut/docs/${palette}.png" --min-width=900 --min-height=48
done

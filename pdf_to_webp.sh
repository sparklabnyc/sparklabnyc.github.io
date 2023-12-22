#!/bin/sh

files=$(find . -type f -name '*.jpg')

for file in $files ; do
    echo $file ;
    magick -density 1200 -quality 100 $file ${file%.jpg}.webp
done

files2=$(find . -type f -name '*.jpeg')

for file2 in $files2 ; do
    echo $file2 ;
    magick -density 1200 -quality 100 $file ${file2%.jpeg}.webp
done

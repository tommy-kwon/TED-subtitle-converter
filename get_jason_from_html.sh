#!/bin/bash 

for htmlfile in `ls *.html`
do 
	echo $htmlfile
	id=`grep "var talkID = .*;" $htmlfile | sed -r 's/[^0-9]//g'`
	echo "file: $htmlfile id: $id" 
	saved_file_name=`echo ${htmlfile%%.html}.jason`
	echo "saved_file_name: $saved_file_name"
	wget -O $saved_file_name http://www.ted.com/talks/subtitles/id/$id/lang/zh-cn/format/jason
done

#!/bin/bash

TITLE="$1"
EXTENSION="$2"

if ! test "$TITLE"; then
	echo "USAGE: $0 <title>"
	exit 1
fi

if ! test "$EXTENSION"; then
	EXTENSION="md";
fi

SLUG=$(echo "$TITLE" | sed 's/[ "'"'"':,«»\.?()]/-/g' | sed 's/-*$//' | sed 's/[éèêë]/e/g' | tr '[:upper:]' '[:lower:]' | sed 's/--*/-/g')
DATE=$(date '+%Y-%m-%d')
DATETIME=$(date '+%Y-%m-%d %H:%M')
FILENAME=$DATE"-"$SLUG

echo "---" > _posts/$FILENAME"."$EXTENSION
echo "title: $TITLE" >> _posts/$FILENAME"."$EXTENSION
echo "date:  $DATETIME" >> _posts/$FILENAME"."$EXTENSION
echo "layout: post" >> _posts/$FILENAME"."$EXTENSION
echo "category: []" >> _posts/$FILENAME"."$EXTENSION
echo "tags: []" >> _posts/$FILENAME"."$EXTENSION
echo "---" >> _posts/$FILENAME"."$EXTENSION

echo _posts/$FILENAME"."$EXTENSION created

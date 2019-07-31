
BASENAME=draft-mauch-idr-accepted-prefixes
EXT=.xml
VERSION=00
SOURCENAME=${BASENAME}${EXT}
DRAFTNAME=${BASENAME}-${VERSION}

all:
	xml2rfc ${SOURCENAME} -o ${DRAFTNAME}.txt --text
	xml2rfc ${SOURCENAME} -o ${DRAFTNAME}.raw.txt --raw
	xml2rfc ${SOURCENAME} -o ${DRAFTNAME}.html --html

raw:
	xml2rfc ${SOURCENAME} -o ${DRAFTNAME}.raw.txt --raw

text:
	xml2rfc ${SOURCENAME} -o ${DRAFTNAME}.txt --text

html:
	xml2rfc ${SOURCENAME} -o ${DRAFTNAME}.html --html

clean:
	rm ${DRAFTNAME}.*

echo "*** Producing HTML ***"
asciidoctor Gremlin-Graph-Guide.adoc
echo "*** Producing DOCBOOK ***"
asciidoctor -n -b docbook -d book Gremlin-Graph-Guide.adoc -o Gremlin-Graph-Guide.xml
echo "*** Producing EPUB ***"
pandoc -f docbook -t epub -N --number-sections --chapters --toc --toc-depth=4 Gremlin-Graph-Guide.xml -o Gremlin-Graph-Guide.epub
echo "*** Producing MOBI ***"
ebook-convert Gremlin-Graph-Guide.epub Gremlin-Graph-Guide.mobi

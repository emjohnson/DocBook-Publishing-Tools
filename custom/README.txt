This folder contains a basic customization layer for the DocBook XSLT build 
sytem used to generate HTML, PDF, and EPub from DocBook XML content. You 
make a copy of this folder into your DocBook XML source directory in:
 ./template/custom

The following files are the keys to the system:
* build_book(_with_conditions).xml - Ant build file that is used to generate 
  an individual book. This file should be copied to the each folder that 
  contains a book.
* build_library.xml - Ant build file for generating all of the books in a 
  library. This file should be copied to the top level of your library.
* xhtml.xslt - XSLT script controling the generation of HTML output.
* olinks_html_collect_targets.xsl - XSLT script for generating the olink 
  target database files for HTML output.
* pdf.xslt - XSLT script controling the generation of PDF output.
* olinks_pdf_collect_targets.xsl - XSLT script for generating the olink 
  target database files for PDF output.

You can then modify the contents to customize how your generated content 
looks. A good resource for leaning how to customize the templates is:
http://sagehill.net/docbookxsl/index.html
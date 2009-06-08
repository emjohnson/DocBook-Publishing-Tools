<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:d="http://docbook.org/ns/docbook"
  exclude-result-prefixes="d">

  <!--Stylesheet fragments whose names begin with ziona_ are designed to be 
      included in DocBook XSL stylesheets, whose names begin with iona-*. 
      
      This is ziona_olinks_collect_targets.xsl
      which is included in all iona-* DocBook stylesheets that have an HTML 
      or PDF output target, where one or more chapter files use olink elements
      to cross-reference to other chapters or books. The olink system presumes
      that a site.xml file is one directory above all the book files in a 
      project, and presumes that your xsltproc command line includes a
      current.docid argument that specifies the book name being generated,
      using the exact book name specified in the site.xml file. 
  -->

<xsl:import href="../lib/docbook-xsl-ns/fo/docbook.xsl"/>

<xsl:param name="targets.filename" select="'./targetpdf.db'" />
<xsl:param name="root.filename" select="'index'" />
<xsl:param name="collect.xref.targets" select="'only'" />
  
</xsl:stylesheet>
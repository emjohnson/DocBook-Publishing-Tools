<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:d="http://docbook.org/ns/docbook"
  xmlns:saxon="http://icl.com/saxon"
  xmlns="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="d"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../lib/docbook-xsl-ns/epub/docbook.xsl"/>

  <xsl:import href="html_titlepage.xsl" /> 
  
  <xsl:param name="chunk.tocs.and.lots" select="1" />
  <xsl:param name="chunk.separate.lots" select="1" />
  <xsl:param name="chunk.tocs.and.lots.has.title" select="1" />
  <xsl:param name="generate.legalnotice.link" select="1" />
  
  <!-- Use packaged draft image -->
  <xsl:param name="draft.watermark.image" select="'imagesdb/draft.png'" />	
  
  <!--Do not display a title on abstracts-->
  <xsl:param name="abstract.notitle.enabled" select="1"></xsl:param>
  
  <!--Use this CSS stylesheet in the HTML output -->
  <xsl:param name="html.stylesheet">imagesdb/forge-docbook.css</xsl:param>
  
  <!--Use id attribute as chunk filename-->
  <xsl:param name="use.id.as.filename">1</xsl:param>

  <!--Disable header and footer navigation-->
  <xsl:param name="suppress.navigation">1</xsl:param>

  <!--Break on sections-->
  <xsl:param name="chunk.section.depth" select="2"/>
  <xsl:param name="chunk.first.sections" select="1"/>
  
  <!--Control which pages include a TOC-->
  <xsl:param name="generate.toc">appendix  toc,title
    article   toc,title
    book      toc,title,figure,table,example
    chapter   toc,title
    part      toc,title
    reference toc,title
    section   toc,title
    set       toc,title</xsl:param>
  <xsl:param name="generate.section.toc.level" select="2"/>
  
  <!-- Make admonitions use graphics -->
  <xsl:param name="admon.graphics" select="1" />
  <xsl:param name="admon.graphics.path" select="'imagesdb/'" />
  <xsl:param name="admon.graphics.extension" select="'.gif'" />
  <xsl:param name="admon.style" select="''" />
  
  <!-- Do not let XSLT generate style information -->
  <xsl:param name="css.decoration" select="0" />
  
  <!-- Generate valid XHTML -->
  <xsl:param name="make.valid.html" select="1" />

  <xsl:output method="saxon:xhtml" />  

</xsl:stylesheet>
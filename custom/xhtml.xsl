<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:saxon="http://icl.com/saxon"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:d="http://docbook.org/ns/docbook"
  exclude-result-prefixes="d"
  version="1.0">

  <xsl:import href="../lib/docbook-xsl-ns/xhtml/chunk.xsl"/>
 
 <xsl:import href="html_olinks_use.xsl"/>
  
  <xsl:import href="html_olinks.xsl"/>
  
  <xsl:import href="html_navigation.xsl"/>
  
  <xsl:import href="html_titlepage.xsl" />
  
  <!-- Specifies the name of the output directory into which the chunks are written -->
  <xsl:param name="base.dir">./output/</xsl:param>
  
  <!--Create separate legal notice page"-->
  <xsl:param name="generate.legalnotice.link" select="1"/>
  
  <!--Use id attribute as chunk filename-->
  <xsl:param name="use.id.as.filename">1</xsl:param>
  
  <!--Use this CSS stylesheet in the HTML output-->
  <xsl:param name="html.stylesheet" select="'./imagesdb/forge-docbook.css'"/>
  
  <!--Do not display a title on abstracts-->
  <xsl:param name="abstract.notitle.enabled" select="1"></xsl:param>
  
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

  <!-- Forces Web links to open in new page -->
  <xsl:param name="ulink.target">_blank</xsl:param>
  
  <!-- Use graphics for page navigation -->
  <xsl:param name="navig.graphics" select="1" />
  <xsl:param name="navig.graphics.path" select="'imagesdb/'" />
  <xsl:param name="navig.graphics.extension" select="'.png'" />
  <xsl:param name="navig.showtitles" select="0" />
  
  <xsl:output method="saxon:xhtml" />  
  
</xsl:stylesheet>
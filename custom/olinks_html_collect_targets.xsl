<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:saxon="http://icl.com/saxon"
  xmlns="http://www.w3.org/1999/xhtml"
    xmlns:d="http://docbook.org/ns/docbook"
  exclude-result-prefixes="d"
version="1.0">
  <!-- Style sheet used to collect the olink targets for HTML-based output.
  This style sheet should be nearly the same as the style sheet for generating 
  the HTML output. If it is different the targets may not map properly. The most
  import sections include setting up the chunking. -->

  <!-- Imports the base DocBook style sheet for HTML. -->
  <xsl:import href="../lib/docbook-xsl-ns/html/chunk.xsl"/>
 
  <!-- Sets up the target database for using olinks. -->
  <xsl:import href="html_olinks_use.xsl"/>
  
  <!-- Customizes xref generation to look cleaner. -->
  <xsl:import href="html_xrefs.xsl"/>
  
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
    set       toc,title  </xsl:param>
  <xsl:param name="generate.section.toc.level" select="2"/>

  <!-- Generate valid XHTML -->
  <xsl:param name="make.valid.html" select="1" />
  
  <xsl:param name="collect.xref.targets" select="'only'" />
  <xsl:param name="targets.filename" select="'./target.db'" />
  <xsl:param name="root.filename" select="'index'" />
  
</xsl:stylesheet>
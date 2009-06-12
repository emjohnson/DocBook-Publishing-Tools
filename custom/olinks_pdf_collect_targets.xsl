<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:d="http://docbook.org/ns/docbook"
  exclude-result-prefixes="d">
  <!-- Style sheet used to collect the olink targets for PDF output.
    This style sheet should be nearly the same as the style sheet for generating 
    the PDF output. If it is different the targets may not map properly.-->

<xsl:import href="../lib/docbook-xsl-ns/fo/docbook.xsl"/>

<xsl:param name="targets.filename" select="'./targetpdf.db'" />
<xsl:param name="root.filename" select="'index'" />
<xsl:param name="collect.xref.targets" select="'only'" />
  
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:d="http://docbook.org/ns/docbook"
  exclude-result-prefixes="d"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../lib/docbook-xsl-ns/fo/docbook.xsl"/>

<xsl:import href="fo_olinks_use.xsl"/>

<xsl:import href="fo_callouts_use.xsl"/>
  
<xsl:import href="fo_guitext.xsl" />
  
  <xsl:import href="fo_titlepage.xsl" />
  
  <xsl:import href="fo_header.xsl" />

  <xsl:param name="fop1.extensions" select="1"></xsl:param>
  
  <xsl:param name="use.role.for.mediaobject" select="1" />
  <xsl:param name="preferred.mediaobject.role" select="fo" />
  
  <xsl:param name="formal.procedures" select="1" />
  <xsl:attribute-set name="formal.object.properties">
    <xsl:attribute name="keep-together.within-column">auto</xsl:attribute>
  </xsl:attribute-set> 
  
  <!-- Makes pages double sided -->
  <xsl:param name="double.sided" select="1"></xsl:param>
  
  <!-- Makes monospace text wrap -->
  <xsl:attribute-set name="monospace.verbatim.properties">
    <xsl:attribute name="font-size">8pt</xsl:attribute>
    <xsl:attribute name="wrap-option">wrap</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="monospace.properties">
    <xsl:attribute name="font-size">90%</xsl:attribute>    
  </xsl:attribute-set>
  
  <!-- Makes admonitions use graphics -->
  <xsl:param name="admon.graphics" select="1" />
  <xsl:param name="admon.graphics.path" select="'output/imagesdb/'" />
  <xsl:param name="admon.graphics.extension" select="'.gif'" />
  <xsl:template match="*" mode="admon.graphic.width">
    <xsl:text>25px</xsl:text>
  </xsl:template>

</xsl:stylesheet>
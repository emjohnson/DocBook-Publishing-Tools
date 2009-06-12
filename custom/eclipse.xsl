<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:d="http://docbook.org/ns/docbook"
  exclude-result-prefixes="d"
  version="1.0">
  <!-- Customization XSLT script for generating Eclipse Help. -->

        <!--Import the standard eclipse.xsl stylesheet-->
        <xsl:import href="../lib/docbook-xsl-ns/eclipse/eclipse.xsl"/>

        <!--Standard Eclipse-specific parameters -->

        <!--Insert provider name here - e.g. IONA Technologies  -->
        <xsl:param name="eclipse.plugin.provider">IONA Technologies</xsl:param>

        <!--Use this CSS stylesheet in the HTML output-->
        <xsl:param name="html.stylesheet" select="'./imagesdb/eclipse_book.css'"/>

        <!--Drop "Chapter" + autonumbering from chapter headings-->
        <xsl:param name="chapter.autolabel">0</xsl:param>

        <!--Drop "Appendix" + autonumbering from appendix headings-->
        <xsl:param name="appendix.autolabel">0</xsl:param>

        <!--Disable header and footer navigation-->
        <xsl:param name="suppress.navigation">1</xsl:param>

        <!--Create separate legal notice page"-->
        <xsl:param name="generate.legalnotice.link" select="1"/>

        <!--Use id attribute as chunk filename-->
        <xsl:param name="use.id.as.filename">1</xsl:param>

        <!--Reword some TOC title to Eclilpse style "Contents"-->
        <xsl:param name="local.l10n.xml" select="document('')"/>
        <l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
                <l:l10n language="en">
                        <l:gentext key="TableofContents" text="Contents"/>
                </l:l10n>
        </l:i18n>
        
        <!--Do not display a title on abstracts-->
        <xsl:param name="abstract.notitle.enabled" select="1"></xsl:param>

        <!--Break on sections-->
        <xsl:param name="chunk.section.depth" select="2"/>
        <xsl:param name="chunk.first.sections" select="1"/>

        <!--Control which pages include a TOC-->
        <xsl:param name="generate.toc"> appendix toc,title chapter toc,title part toc,title preface
                toc,title </xsl:param>
        <xsl:param name="generate.section.toc.level" select="2"/>

        <!--Do not include preface in toc.xml or generated HTML-->
        <xsl:template match="d:preface[@role = 'NotInToc']" mode="etoc"/>
        <xsl:template match="d:preface"/> 
        
        <!--Use the greater than symbol between guimenu and guimenuitem or guisubmenu-->
        <xsl:param name="menuchoice.menu.separator"> &gt; </xsl:param>
        
       <!--Do not include plugin name, ID, and provider in plugin.xml. These go in the manifest.mf-->
        <xsl:template name="plugin.xml">
	  <xsl:call-template name="write.chunk">
	    <xsl:with-param name="filename">
	      <xsl:if test="$manifest.in.base.dir != 0">
	        <xsl:value-of select="$base.dir"/>
	      </xsl:if>
	      <xsl:value-of select="'plugin.xml'"/>
	    </xsl:with-param>
	    <xsl:with-param name="method" select="'xml'"/>
	    <xsl:with-param name="encoding" select="'utf-8'"/>
	    <xsl:with-param name="indent" select="'yes'"/>
	    <xsl:with-param name="content">
	      <plugin>
	        <extension point="org.eclipse.help.toc">
	          <toc file="toc.xml" primary="true"/>
	        </extension>
	      </plugin>
	    </xsl:with-param>
	  </xsl:call-template>
	</xsl:template>
</xsl:stylesheet>
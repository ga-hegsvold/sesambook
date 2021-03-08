<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <!--
	<xsl:import href="http://docbook.sourceforge.net/release/xsl/1.77.0/html/docbook.xsl"/>
	-->
  <xsl:import href="1.77.0/html/docbook.xsl"/>
  <xsl:include href="customization.common.xsl"/>
  <!--
   | ========================================================================
   | 1.1 Admonitions
   | ========================================================================
   +-->
  <!-- See xsl/customization.common.xsl -->
  <!--
	 | ========================================================================
	 | 1.4 ToC/LoT/Index Generation
	 | ========================================================================
	 +-->
  <xsl:param name="generate.toc">
    article toc
	</xsl:param>
  <!--
	 | ========================================================================
	 | 1.7 HTML
	 | ========================================================================
	 +-->
  <xsl:param name="css.decoration" select="1"/>
  <xsl:param name="make.clean.html" select="1"/>
  <!--
  <xsl:param name="custom.css.source">css/dnet.css.xml</xsl:param>
  -->
  <!--
	 | ========================================================================
	 | 1.11 Tables
	 | ========================================================================
	 +-->
  <!--
	<xsl:param name="html.cellpadding">2</xsl:param>
	-->
  <!--
	 | ========================================================================
	 | 1.18 Miscellaneous
	 | ========================================================================
	 +-->
  <!--
	 | ========================================================================
	 | 1.20 Graphics
	 | ========================================================================
	 +-->
  <xsl:param name="img.src.path">img/</xsl:param>
  <!-- See xsl/customization.common.xsl -->
</xsl:stylesheet>

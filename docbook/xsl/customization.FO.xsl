<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
  <!--
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/1.77.0/fo/docbook.xsl"/>
  -->
  <xsl:import href="1.77.0/fo/docbook.xsl"/>
  <xsl:include href="customization.common.xsl"/>
  <xsl:include href="customization.FO.header.xsl"/>
  <xsl:include href="customization.FO.footer.xsl"/>
  <!--
   | ========================================================================
   | Theme
   | ========================================================================
   +-->
  <xsl:variable name="fg.color">#000000</xsl:variable>
  <xsl:variable name="bg.color">#f5f5f5</xsl:variable>
  <xsl:variable name="header.border.style">solid</xsl:variable>
  <xsl:variable name="header.border.width">medium</xsl:variable>
  <xsl:variable name="footer.border.style">solid</xsl:variable>
  <xsl:variable name="footer.border.width">medium</xsl:variable>
  <xsl:variable name="section.title.bg.color">#000000</xsl:variable>
  <xsl:variable name="section.title.border.color">
    <xsl:value-of select="$fg.color"/>
  </xsl:variable>
  <xsl:variable name="section.title.border.style">solid</xsl:variable>
  <xsl:variable name="section.title.border.width">thick</xsl:variable>
  <xsl:variable name="section.title.font.color">#eeeeee</xsl:variable>
  <xsl:variable name="example.color">
    <xsl:value-of select="$bg.color"/>
  </xsl:variable>
  <xsl:variable name="example.border.color">
    <xsl:value-of select="$fg.color"/>
  </xsl:variable>
  <xsl:variable name="example.border.style">solid</xsl:variable>
  <xsl:variable name="example.border.width">thin</xsl:variable>
  <xsl:variable name="table.head.bg.color">
    <xsl:value-of select="$bg.color"/>
  </xsl:variable>
  <!--
   | ========================================================================
   | 2.1 Admonitions
   | ========================================================================
   +-->
  <!-- See xsl/customization.common.xsl -->
  <!--
   | ========================================================================
   | 2.3 ToC/LoT/Index Generation
   | ========================================================================
   +-->
  <xsl:param name="generate.toc">
  article toc,title
  </xsl:param>
  <xsl:param name="toc.max.depth" select="2"/>
  <xsl:param name="toc.section.depth" select="2"/>
  <!--
   | ========================================================================
   | 2.4 Processor Extensions
   | ========================================================================
   +-->
  <xsl:param name="fop1.extensions" select="1"/>
  <!--
   | ========================================================================
   | 2.6 Automatic labelling
   | ========================================================================
   +-->
  <!-- See xsl/customization.common.xsl -->
  <!--
   | ========================================================================
   | 2.10 Tables
   | ========================================================================
	 +-->
  <xsl:attribute-set name="table.properties" use-attribute-sets="formal.object.properties">
    <xsl:attribute name="keep-together.within-column">auto</xsl:attribute>
    <xsl:attribute name="background-color">#D8EBC8</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="table.cell.padding">
    <xsl:attribute name="padding-start">2px</xsl:attribute>
    <xsl:attribute name="padding-end">2px</xsl:attribute>
    <xsl:attribute name="padding-top">2px</xsl:attribute>
    <xsl:attribute name="padding-bottom">2px</xsl:attribute>
  </xsl:attribute-set>
  <!--
   | ========================================================================
   | 2.13 Lists
   | ========================================================================
   +-->
  <!--
   | ========================================================================
   | 2.16 Glossary
   | ========================================================================
   +-->
  <!-- See xsl/customization.common.xsl -->
  <!--
   | ========================================================================
   | 2.17 Miscellaneous
   | ========================================================================
   +-->
  <!--
  <xsl:param name="shade.verbatim" select="1"/>
  <xsl:attribute-set name="shade.verbatim.style">
    <xsl:attribute name="background-color">#D8EBC8</xsl:attribute>
    <xsl:attribute name="border-width">0.5pt</xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-color">#575757</xsl:attribute>
    <xsl:attribute name="padding">3pt</xsl:attribute>
  </xsl:attribute-set>
  <xsl:param name="hyphenate.verbatim" select="0"/>
  -->
  <!--
   | ========================================================================
	 | 2.18 Graphics
   | ========================================================================
   +-->
  <!--
  <xsl:param name="img.src.path">img/../</xsl:param>
  <xsl:param name="default.image.width">20cm</xsl:param>
  <xsl:param name="ignore.image.scaling" select="0"></xsl:param>
  -->
  <!--
   | ========================================================================
   | 2.19 Pagination and General Styles
   | ========================================================================
   +-->
  <xsl:param name="page.margin.inner">15mm</xsl:param>
  <xsl:param name="page.margin.bottom">10mm</xsl:param>
  <xsl:param name="page.margin.outer">25mm</xsl:param>
  <xsl:param name="page.margin.top">10mm</xsl:param>
  <xsl:param name="page.orientation">portrait</xsl:param>
  <xsl:param name="paper.type">A4</xsl:param>
  <xsl:param name="body.margin.top">20mm</xsl:param>
  <xsl:param name="body.margin.bottom">20mm</xsl:param>
  <xsl:param name="body.start.indent">
    <xsl:choose>
      <xsl:when test="$fop.extensions != 0">0pt</xsl:when>
      <xsl:when test="$passivetex.extensions != 0">0pt</xsl:when>
      <xsl:otherwise>0mm</xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <xsl:param name="body.end.indent" select="'0pt'"/>
  <xsl:param name="hyphenate">false</xsl:param>
  <!--
  <xsl:param name="line-height" select="'2mm'"/>
  -->
  <xsl:param name="column.count.back" select="1"/>
  <xsl:param name="column.count.body" select="1"/>
  <xsl:param name="column.count.front" select="1"/>
  <xsl:param name="column.count.index" select="1"/>
  <xsl:param name="column.count.lot" select="1"/>
  <xsl:param name="column.count.titlepage" select="1"/>
  <xsl:param name="column.gap.body">10mm</xsl:param>
  <xsl:param name="region.after.extent">15mm</xsl:param>
  <xsl:param name="region.before.extent">15mm</xsl:param>
  <!--
  <xsl:param name="body.font.size">8pt</xsl:param>
  -->
  <!-- Header customization -->
  <xsl:param name="header.rule">0</xsl:param>
  <!--
  <xsl:param name="header.column.widths">1 2 1</xsl:param>

  <xsl:attribute-set name="header.table.properties">
    <xsl:attribute name="border-color"><xsl:value-of select="$fg.color"/></xsl:attribute>
    <xsl:attribute name="border-bottom-style"><xsl:value-of select="$header.border.style"/></xsl:attribute>
    <xsl:attribute name="border-bottom-width"><xsl:value-of select="$header.border.width"/></xsl:attribute>
  </xsl:attribute-set>
  -->
  <!-- Footer customization -->
  <xsl:param name="footer.rule">0</xsl:param>
  <xsl:param name="footer.column.widths">1 1 1</xsl:param>
  <xsl:attribute-set name="footer.table.properties">
    <xsl:attribute name="border-color">
      <xsl:value-of select="$fg.color"/>
    </xsl:attribute>
    <xsl:attribute name="border-top-style">
      <xsl:value-of select="$footer.border.style"/>
    </xsl:attribute>
    <xsl:attribute name="border-top-width">
      <xsl:value-of select="$footer.border.width"/>
    </xsl:attribute>
  </xsl:attribute-set>
  <!--
   | ========================================================================
   | 2.20 Font Families
   | ========================================================================
	 +-->
  <xsl:param name="body.font.family">sans-serif</xsl:param>
  <xsl:param name="monospace.font.family">Courier</xsl:param>
  <xsl:param name="title.font.family">Ubuntu</xsl:param>
  <!--
   | ========================================================================
   | 2.21 Property Sets
   | ========================================================================
   +-->
  <xsl:attribute-set name="informal.object.properties">
    <xsl:attribute name="keep-together.within-column">auto</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="monospace.verbatim.properties">
    <xsl:attribute name="wrap-option">wrap</xsl:attribute>
    <!--
    <xsl:attribute name="hyphenation-character">\</xsl:attribute>
    -->
  </xsl:attribute-set>
  <xsl:attribute-set name="sidebar.properties" use-attribute-sets="formal.object.properties">
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-width">1pt</xsl:attribute>
    <xsl:attribute name="border-color">black</xsl:attribute>
    <xsl:attribute name="background-color">#DDDDDD</xsl:attribute>
    <xsl:attribute name="padding-start">12pt</xsl:attribute>
    <xsl:attribute name="padding-end">12pt</xsl:attribute>
    <xsl:attribute name="padding-top">6pt</xsl:attribute>
    <xsl:attribute name="padding-bottom">6pt</xsl:attribute>
    <xsl:attribute name="margin-{$direction.align.start}">0pt</xsl:attribute>
    <xsl:attribute name="margin-{$direction.align.end}">0pt</xsl:attribute>
    <!--
		<xsl:attribute name="margin-top">6pt</xsl:attribute>
		<xsl:attribute name="margin-bottom">6pt</xsl:attribute>
		-->
  </xsl:attribute-set>
  <xsl:attribute-set name="section.title.level1.properties">
    <xsl:attribute name="background-color">
      <xsl:value-of select="$section.title.bg.color"/>
    </xsl:attribute>
    <xsl:attribute name="border-color">
      <xsl:value-of select="$section.title.border.color"/>
    </xsl:attribute>
    <xsl:attribute name="border-top-style">
      <xsl:value-of select="$section.title.border.style"/>
    </xsl:attribute>
    <xsl:attribute name="border-top-width">
      <xsl:value-of select="$section.title.border.width"/>
    </xsl:attribute>
    <xsl:attribute name="color">
      <xsl:value-of select="$section.title.font.color"/>
    </xsl:attribute>
    <xsl:attribute name="padding">5px</xsl:attribute>
    <!--
    <xsl:attribute name="border-bottom">1pt solid black</xsl:attribute>
    <xsl:attribute name="padding-top">5px</xsl:attribute>
    <xsl:attribute name="padding-bottom">5px</xsl:attribute>
    -->
  </xsl:attribute-set>
  <xsl:attribute-set name="section.level1.properties">
    <xsl:attribute name="break-before">page</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="example.properties" use-attribute-sets="formal.object.properties">
    <xsl:attribute name="background-color">
      <xsl:value-of select="$example.color"/>
    </xsl:attribute>
    <xsl:attribute name="border-color">
      <xsl:value-of select="$example.border.color"/>
    </xsl:attribute>
    <xsl:attribute name="border-left-style">
      <xsl:value-of select="$example.border.style"/>
    </xsl:attribute>
    <xsl:attribute name="border-left-width">
      <xsl:value-of select="$example.border.width"/>
    </xsl:attribute>
    <xsl:attribute name="margin-top">5px</xsl:attribute>
    <xsl:attribute name="padding">5px</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="informaltable.properties" use-attribute-sets="informal.object.properties">
    <xsl:attribute name="background-color">
      <xsl:value-of select="$example.color"/>
    </xsl:attribute>
  </xsl:attribute-set>
  <!-- FIXME:
  http://www.sagehill.net/docbookxsl/PrintTableStyles.html#CustomCellProperties 
  -->
  <!--
  <xsl:template name="table.cell.properties">
    <xsl:param name="bgcolor.pi" select="''"/>
    <xsl:variable name="tabstyle">
      <xsl:call-template name="tabstyle"/>
    </xsl:variable>
    <xsl:variable name="bgcolor">
      <xsl:choose>
        <xsl:when test="$tabstyle = 'styleA' 
           and ancestor::thead">#D8EBC8</xsl:when>
        <xsl:when test="ancestor::thead">
          <xsl:value-of select="$table.head.bg.color"/>
        </xsl:when>
        <xsl:when test="$tabstyle = 'styleA'">#DDDDDD</xsl:when>
        <xsl:when test="$bgcolor.pi != ''">
          <xsl:value-of select="$bgcolor.pi"/>
        </xsl:when>
      </xsl:choose>
    </xsl:variable>
    <xsl:if test="$bgcolor != ''">
      <xsl:attribute name="background-color">
        <xsl:value-of select="$bgcolor"/>
      </xsl:attribute>
    </xsl:if>
  </xsl:template>
  -->
</xsl:stylesheet>

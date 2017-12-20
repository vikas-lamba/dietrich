<?xml version="1.0" encoding="UTF-8" ?>
<!-- This file is part of the DITA Open Toolkit project hosted on
     Sourceforge.net. See the accompanying license.txt file for
     applicable licenses.-->
<!-- (c) Copyright IBM Corp. 2004, 2005 All Rights Reserved. -->

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:dita="http://dita-ot.sourceforge.net"
                exclude-result-prefixes="dita">

<xsl:import href="docbook/util.xsl"/>
<xsl:import href="docbook/topic2db.xsl"/>
<xsl:import href="docbook/highlight2db.xsl"/>
<xsl:import href="docbook/programming2db.xsl"/>
<xsl:import href="docbook/software2db.xsl"/>
<xsl:import href="docbook/ui2db.xsl"/>

<dita:extension id="dita.xsl.docbook" behavior="org.dita.dost.platform.ImportXSLAction" />

<xsl:output
    method="xml"
    indent="yes"
    omit-xml-declaration="no"
    standalone="no"/>


<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   - DOCUMENT
   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<xsl:template match="/">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="comment()">
  <xsl:comment><xsl:copy/></xsl:comment>
</xsl:template>

<xsl:template match="dita">
  <section>
    <title/>
    <xsl:apply-templates/>
  </section>
</xsl:template>


</xsl:stylesheet>

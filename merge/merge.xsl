<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Grab each element inside the letters root --> 
  <xsl:template match="/">
      <letters>
          <xsl:apply-templates select="document('letters1.xml')/letters/*"/><!-- Grab the two documents. Grab root. grab all children --> 
          <xsl:apply-templates select="document('letters2.xml')/letters/*"/>
      </letters>
  </xsl:template>
  
  
  <!-- Copy each attribute and element -->
  <xsl:template match="@*|node()"><!-- all elements and all attribute --> 
      <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
      <!-- copy all of the elements --> 
  </xsl:template>
  
</xsl:stylesheet>

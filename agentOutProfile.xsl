<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/">
    <html>
        <body>
            <h1>Band Profiles</h1>
            <xsl:apply-templates/>
        </body>
    </html> 
</xsl:template>
    

    
    <xsl:template match="lineup">
  <xsl:for-each select="artist">
    <xsl:result-document method="html" href="agentOut_{@id}-output.html">
        <p><xsl:value-of select="@id"/></p>
    </xsl:result-document>
  </xsl:for-each>
</xsl:template>
    
   
    
    
</xsl:stylesheet>
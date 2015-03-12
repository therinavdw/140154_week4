<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/">
    <html>
        <body>
            <h1>Festival schedule</h1>
            <xsl:apply-templates/>
        </body>
    </html> 
</xsl:template>
    
    <xsl:template match="lineup/artist">
        Name:<xsl:apply-templates select="name"/><br/> 
        <xsl:apply-templates select="gig"/><br/>
    </xsl:template>
    
    <xsl:template match="gig">
        Day:<xsl:apply-templates select="day"/><br/>
        <xsl:apply-templates select="time"/>
    </xsl:template>
    
    <xsl:template match="time">
        Starts:<xsl:apply-templates select="starts"/><br/>
        Ends:<xsl:apply-templates select="ends"/><br/>
    </xsl:template>
    
    
</xsl:stylesheet>
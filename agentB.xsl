<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <lineup>       
            <xsl:apply-templates/>       
    </lineup>
</xsl:template>
    
<xsl:template match="artist">
    <artist>
        <xsl:attribute name="id">13<xsl:value-of select='translate
(id, "BCD", "123")'/>
        </xsl:attribute>  
        
     <name><xsl:value-of select="name"/></name>
        
    <genres>
        <xsl:apply-templates select="genres/g"/>  
    </genres>
        
    <writeup>
        <xsl:apply-templates select="description"/>
    </writeup>
        
    <gig><xsl:apply-templates select="time"/></gig>
    
    <photo><xsl:attribute name="format">
        <xsl:value-of select="substring-after(image,'.')"/>    
           </xsl:attribute>
         <xsl:value-of select="substring-before(image,'.')"/>
    </photo>
        
    </artist>
</xsl:template>
    
<xsl:template match="genres/g">
   <genre><xsl:value-of select="."/></genre>
</xsl:template>
    
<xsl:template match="time">
    <day><xsl:value-of select="upper-case(day)"/></day>
    <time>
        <starts><xsl:value-of select="substring-before(time,'-')"/></starts>
       <ends><xsl:value-of select="substring-after(time,'-')"/></ends>
    </time>  

</xsl:template>
    
</xsl:stylesheet>


  


    


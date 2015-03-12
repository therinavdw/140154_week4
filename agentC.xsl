<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <lineup>
        
            <xsl:apply-templates/>
           
    </lineup>
</xsl:template>
  

<xsl:template match="client">
<artist>
     <xsl:attribute name="id">
        <xsl:value-of select="data[@key='id']/@value"/>
     </xsl:attribute>
    
    <name><xsl:value-of select="data[@key='name']/@value"/></name>
    
    <genres>
         <genre><xsl:value-of select="substring-before(data[@key='genre']/@value, '/')"/></genre>
        <genre><xsl:value-of select="substring-after(data[@key='genre']/@value, '/')"/></genre>
    </genres>
        
    <writeup><xsl:value-of select="data[@key='description']/@value"/></writeup>
    
    <gig>
        <day>
            <xsl:value-of select="data[@key='performanceday']/upper-case(@value)"/>
        </day> 
        
        <time>
            <xsl:if test="substring(data[@key='performancetime']/@value, 3, 2) = 'PM' ">
            <starts><xsl:value-of select="number(substring(data[@key='performancetime']/@value, 1, 2)) + 12"/>:00</starts>
            </xsl:if>
            
              <xsl:if test="substring(data[@key='performancetime']/@value, 3, 2) = 'AM' ">
            <starts><xsl:value-of select="number(substring(data[@key='performancetime']/@value, 1, 2))"/>:00</starts>
            </xsl:if>
            
            <xsl:if test="substring(data[@key='performancetime']/@value, 8, 2) = 'PM' ">
            <ends><xsl:value-of select="number(substring(data[@key='performancetime']/@value, 6, 2)) + 12"/>:00</ends>
            </xsl:if>     
        </time>
        
    </gig>
  	<photo>
		<xsl:attribute name="format">
			<xsl:value-of select="substring-after(data[@key='picture']/@value, '.' )"/>
		</xsl:attribute>
		<xsl:value-of select="substring-before(data[@key='picture']/@value, '.')"/>
	</photo>

</artist>
</xsl:template>
    
   
    
 

    
         

         
    
    
                  
               
    
</xsl:stylesheet>
 
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:alto="http://www.loc.gov/standards/alto/ns-v4#"
    exclude-result-prefixes="#all" version="2.0">
    
    
    <xsl:output method="text" encoding="UTF-8"/>
    
    <xsl:strip-space elements="*"/>
    
    
    <xsl:template match="/">
        <xsl:text>info&#x0a;</xsl:text>
        <xsl:apply-templates select="descendant::document"/>
        <xsl:result-document method="text" encoding="UTF-8" href="sortie.csv">
            <!-- on va créer un mode, ce qui permet d'établir plusieurs règles sur un même élément -->
            <xsl:apply-templates select="descendant::document" mode="output"/>
        </xsl:result-document>
    </xsl:template>
    

    
    
</xsl:stylesheet>
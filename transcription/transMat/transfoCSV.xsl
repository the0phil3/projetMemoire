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
        <xsl:text>qui parle;texte&#x0a;</xsl:text>
        <xsl:apply-templates select="descendant::tei:sp"/>
        <xsl:result-document method="text" encoding="UTF-8" href="labeCompte.csv">
            <!-- on va créer un mode, ce qui permet d'établir plusieurs règles sur un même élément -->
            <xsl:apply-templates select="descendant::tei:sp" mode="output"/>
        </xsl:result-document>
    </xsl:template>
    
    
    <xsl:template match="tei:sp">
        <xsl:value-of select="substring-after(@who, '#')"/>
        <xsl:text>;</xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:speaker"/>
    <xsl:template match="tei:p[parent::tei:sp]">
        
       <!--<xsl:value-of select="normalize-space(.)"/>-->
        <xsl:apply-templates/>
        <xsl:text>&#x0a;</xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:choice|tei:reg|tei:corr|tei:expan|tei:ex">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:orig|tei:sic|tei:abbr|tei:am"/>
    
    <xsl:template match="text()[parent::tei:p]">
         <xsl:apply-templates select="replace(., '\n|\s+', ' ')"/>
    </xsl:template>
    
    <!-- mode output -->
    <xsl:template match="tei:sp" mode="output">
        <xsl:variable name="valWho">
            <xsl:value-of select="@who"/>
        </xsl:variable>
        <xsl:variable name="compter">
            <xsl:number count="tei:sp[@who=$valWho]"  from="tei:body"/>
        </xsl:variable>
        <xsl:if test="not(following::tei:sp[@who=$valWho])">          <xsl:value-of select="@who"/>
            <xsl:text>;</xsl:text>
            <xsl:value-of select="$compter"/>  
            <xsl:text>&#x0a;</xsl:text>
        </xsl:if>
    </xsl:template>
    
    
</xsl:stylesheet>
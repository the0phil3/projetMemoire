<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:alto="http://www.loc.gov/standards/alto/ns-v4#" exclude-result-prefixes="#all"
    version="2.0">

    <xsl:output encoding="UTF-8" method="xml" omit-xml-declaration="no" indent="yes"/>

    <xsl:template match="/" name="main">
        <xsl:result-document href="../outputMat/sortie.xml" method="xml">
            <xsl:element name="document">
                <xsl:variable name="folderURI" select="resolve-uri('.', base-uri())"/>

                <xsl:variable name="facsi">
                    <xsl:perform-sort select="collection(concat($folderURI, '?select=*.xml'))/*">
                        <xsl:sort select="."/>
                    </xsl:perform-sort>
                </xsl:variable>
                <xsl:for-each select="$facsi">

                    <xsl:apply-templates select="alto:alto"/>
                </xsl:for-each>

            </xsl:element>
        </xsl:result-document>
    </xsl:template>

    <xsl:template match="alto:alto">
        <!-- pour chaque élément alto, on crée un pb qui reprend la valeur qu'il y a dans fileName -->
        <xsl:element name="document">
            <xsl:value-of select="alto:Description/alto:sourceImageInformation/alto:fileName"/>
        </xsl:element>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="alto:Description"/>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1209']">
        <xsl:element name="personne">
            <xsl:element name="nom">
                <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1210']">
        <xsl:element name="personne">
            <xsl:element name="prenom">
                <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1212']">
        <xsl:element name="date">
            <xsl:attribute name="annee">
                <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1213']">
        <xsl:element name="localisation">
            <xsl:element name="pays">
                <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1213']">
        <xsl:element name="localisation">
            <xsl:element name="precision">
                <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1214']">
        <xsl:element name="compliment">
            <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1215']">
        <xsl:element name="compliment">
            <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1216']">
        <xsl:element name="compliment">
            <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1217']">
        <xsl:element name="compliment">
            <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1218']">
        <xsl:element name="compliment">
            <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1219']">
        <xsl:element name="compliment">
            <xsl:element name="nro">
                <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="alto:TextLine[@TAGREFS = 'LT1220']">
        <xsl:element name="compliment">
            <xsl:element name="mention">
                <xsl:value-of select="descendant::alto:String/@CONTENT"/>
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>



</xsl:stylesheet>

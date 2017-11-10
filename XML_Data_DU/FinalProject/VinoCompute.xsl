<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xls="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Vino</title>
                <link rel="stylesheet" type="text/css" href="vinoXML.css"/>
            </head>
            <body>
                <h1>Vino</h1>
                <div class="center">
                    <a href="VinoHome.xml" class="button">Vino Home</a>
                    <a href="VinoVintageSort.xml" class="button">Vino Vintage Sort</a>
                    <a href="Vino2013.xml" class="button">2013 Vino</a>
                    <a href="Vino2014.xml" class="button">2014 Vino</a>
                    <a href="FrenchVino.xml" class="button">Vino Francé</a>
                    <a href="USAVino.xml" class="button">Vino American</a>
                    <a href="VinoCompute.xml" class="button">Vino Stats</a>
                </div>
                <table>
                    <tr>
                        <th>Origin</th>
                        <th>Count</th>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

    <!--Can I set the variable count here to apply in my Origin templates??? -->
    
    <!--<xsl:variable/param name="count" select="count()"/>-->
    
    <!--Can I create templates to track the count of each origin/country of wine to apply in the table above-->

    <xls:template name="USA">
        <xsl:value-of select="count(/wine/winedetail[origin='USA'])"/>
    </xls:template>

    <xls:template name="FRA" match="wine/winedetail[origin = 'FRA']">
        <xsl:value-of select="count(/wine/winedetail[origin='FRA'])"/>
    </xls:template>

    <xls:template name="ITA" match="wine/winedetail[origin = 'ITA']">
        <xsl:value-of select="count(/wine/winedetail[origin='ITA'])"/>
    </xls:template>

    <xls:template name="NWZ" match="wine/winedetail[origin = 'NWZ']">
        <xsl:value-of select="count(/wine/winedetail[origin='NWZ'])"/>
    </xls:template>

    <xls:template name="ARG" match="wine/winedetail[origin = 'ARG']">
        <xsl:value-of select="count(/wine/winedetail[origin='ARG'])"/>
    </xls:template>

    <xls:template name="AUS" match="wine/winedetail[origin = 'AUS']">
        <xsl:value-of select="count(/wine/winedetail[origin='AUS'])"/>
    </xls:template>

</xsl:stylesheet>




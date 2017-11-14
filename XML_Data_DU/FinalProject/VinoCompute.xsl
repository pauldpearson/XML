<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xls="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:variable name="total" select="count(wine/winedetail[origin])"/>
        <xsl:variable name="USA" select="count(wine/winedetail[origin='USA'])"/>
        <xsl:variable name="FRA" select="count(wine/winedetail[origin='FRA'])"/>
        <xsl:variable name="ITA" select="count(wine/winedetail[origin='ITA'])"/>
        <xsl:variable name="AUS" select="count(wine/winedetail[origin='AUS'])"/>
        <xsl:variable name="NWZ" select="count(wine/winedetail[origin='NWZ'])"/>
        <html>
            <body>
                <head>
                    <title>Vino</title>
                    <link rel="stylesheet" type="text/css" href="vinoXML.css"/>
                </head>

                <div class="nav">
                    <ul>
                        <li>
                            <a href="VinoHome.xml" class="button">Vino Home</a>
                        </li>
                        <li>
                            <a href="VinoVintageSort.xml" class="button">Vino Vintage Sort</a>
                        </li>
                        <li>
                            <a href="Vino2013.xml" class="button">2013 Vino</a>
                        </li>
                        <li>
                            <a href="Vino2014.xml" class="button">2014 Vino</a>
                        </li>
                        <li>
                            <a href="FrenchVino.xml" class="button">Vino Francé</a>
                        </li>
                        <li>
                            <a href="USAVino.xml" class="button">Vino American</a>
                        </li>
                        <li>
                            <a href="VinoCompute.xml" class="button">Vino Compute</a>
                        </li>
                    </ul>
                </div>

                <div class="header">
                    <h1>Vino</h1>
                </div>

                <div>
                    <table class="compute">
                        <tr>
                            <th>Origin</th>
                            <th>Count</th>
                            <th>% of Vino</th>
                        </tr>
                        <tr>
                            <td class="USA">USA</td>
                            <td>
                                <xsl:value-of select="$USA"/>
                            </td>
                            <td>
                                <xsl:variable name="percentUSA" select="$USA div $total"/>
                                <xsl:value-of select="format-number($percentUSA, '#%')"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="FRA">FRA</td>
                            <td>
                                <xsl:value-of select="$FRA"/>
                            </td>
                            <td>
                                <xsl:variable name="percentFRA" select="$FRA div $total"/>
                                <xsl:value-of select="format-number($percentFRA, '#%')"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="ITA">ITA</td>
                            <td>
                                <xsl:value-of select="$ITA"/>
                            </td>
                            <td>
                                <xsl:variable name="percentITA" select="$ITA div $total"/>
                                <xsl:value-of select="format-number($percentITA, '#%')"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="AUS">AUS</td>
                            <td>
                                <xsl:value-of select="$AUS"/>
                            </td>
                            <td>
                                <xsl:variable name="percentAUS" select="$AUS div $total"/>
                                <xsl:value-of select="format-number($percentAUS, '#%')"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="NWZ">NWZ</td>
                            <td>
                                <xsl:value-of select="$NWZ"/>
                            </td>
                            <td>
                                <xsl:variable name="percentNWZ" select="$NWZ div $total"/>
                                <xsl:value-of select="format-number($percentNWZ, '#%')"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="Totals">Totals</td>
                            <td colspan="2" class="textcenter">
                                <xsl:value-of select="$total"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>




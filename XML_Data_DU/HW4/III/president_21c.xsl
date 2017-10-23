<?xml version="1.0" encoding="UTF-8"?>

<!--Paul Pearson-->
<!--president_21c.xsl-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:value-of select="//president[number()>41]/number"/>
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="president_21c.css"/>
                <title>Table of US Presidents</title>
            </head>
            <body>
                <h1>Table of US Presidents</h1>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Birthday</th>
                        <th>Took Office</th>
                        <th>Left Office</th>
                        <th>Party</th>
                        <th>Picture</th>
                    </tr>
                    <xsl:apply-templates select="presidents/president"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="president">
        <tr>
            <td>
                <xsl:value-of select="name"/>
            </td>
            <td>
                <xsl:value-of select="date"/>
            </td>
            <td>
                <xsl:value-of select="took_office"/>
            </td>
            <td>
                <xsl:value-of select="left_office"/>
            </td>
            <td>
                <xsl:value-of select="party"/>
            </td>
            <td>
                <xsl:if test="(number=42)">
                    <img src="42.jpg"/>
                </xsl:if>
                <xsl:if test="(number=43)">
                    <img src="43.jpg"/>
                </xsl:if>
                <xsl:if test="(number=44)">
                    <img src="44.jpg"/>
                </xsl:if>
                <xsl:if test="(number=45)">
                    <img src="45.jpg"/>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>



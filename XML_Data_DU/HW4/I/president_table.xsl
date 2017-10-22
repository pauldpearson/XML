<?xml version="1.0" encoding="UTF-8"?>
<!--Paul Pearson-->
<!--president_table.xsl-->

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0"/>

    <xsl:template match="/">
        <link rel="stylesheet" type="text/css" href="president_table.css"/>
        <html>
            <head>
                <title>Table of US Presidents</title>
            </head>
            <body>
                <h1>Table of US Presidents</h1>
                <xsl:apply-templates select="presidents/president"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="president">
        <table border="2">
            <tr bgcolor="#9acd32">
                <th>Name</th>
                <th>Birthday</th>
                <th>Took Office</th>
                <th>Left Office</th>
                <th>Party</th>
                <tr>
                    <td>
                        <xsl:value-of select="name"/>
                    </td>
                    <td>
                        <xsl:apply-templates select="date"/>
                    </td>
                    <td>
                        <xsl:apply-templates select="took_office"/>
                    </td>
                    <td>
                        <xsl:apply-templates select="left_office"/>
                    </td>
                    <td>
                        <xsl:apply-templates select="party"/>
                    </td>
                </tr>
            </tr>
        </table>
    </xsl:template>

    <xsl:template match="name">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="date">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="took_office">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="left_office">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="party">
        <xsl:value-of select="."/>
    </xsl:template>

</xsl:stylesheet>

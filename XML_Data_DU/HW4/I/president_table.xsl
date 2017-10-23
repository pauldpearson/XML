<?xml version="1.0" encoding="UTF-8"?>
<!--Paul Pearson-->
<!--president_table.xsl-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Table of US Presidents</title>
                <link rel="stylesheet" type="text/css" href="president_table.css"/>
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
        </tr>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/css" href="president_table.css" ?>
<!--Paul Pearson-->
<!--president_table.xsl-->

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0"/>
    <xsl:template match="presidents">
        <html>
            <body>
                <h1>Table of US Presidents</h1>
                <table border="3">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">Name</th>
                        <th style="text-align:left">Birthday</th>
                        <th style="text-align:left">Took Office</th>
                        <th style="text-align:left">Left Office</th>
                        <th style="text-align:left">Party</th>
                        <xsl:for-each select="//president">
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
                        </xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>

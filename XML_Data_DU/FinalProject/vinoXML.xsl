<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="12.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Wine Collection</title>
                <link rel="stylesheet" type="text/css" href="vinoXML.css"/>
            </head>
            <body>
                <h1>Wine Collection</h1>
                <table class="winedetail">
                    <tr>
                        <th class="name">Name</th>
                        <th class="category">Category</th>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="winedetail/name">
        <tr>
            <td class="name">
                <xsl:value-of select="name"/>
            </td>

            <td class="photo" src="{name}.jbp" alt="{name}"/>
        </tr>
    </xsl:template>
</xsl:stylesheet>


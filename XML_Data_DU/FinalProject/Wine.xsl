<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
                    <a href="" class="button">Vino Home</a>
                    <a href="" class="button">Vino Stats by Vintage</a>
                    <a href="" class="button">Vino Stats by Country</a>
                </div>
                <table class="winedetail">
                    <tr>
                        <th class="name">Name</th>
                        <th class="category">Category</th>
                        <th class="variety">Variety</th>
                        <th class="vintage">Vintage</th>
                        <th class="wineregion">Wine Region</th>
                        <th class="origin">Origin</th>
                        <th class="notes">Notes</th>
                        <th class="photo">Photo</th>
                    </tr>
                    <xsl:apply-templates select="wine/winedetail">
                        <xsl:sort select="vintage"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="winedetail">
        <tr>
            <td class="name">
                <xsl:value-of select="name"/>
            </td>
            <td class="category">
                <xsl:value-of select="category"/>
            </td>
            <td class="variety">
                <xsl:value-of select="variety"/>
            </td>
            <td class="vintage">
                <xsl:value-of select="vintage"/>
            </td>
            <td class="wineregion">
                <xsl:value-of select="wineregion"/>
            </td>
            <td class="origin">
                <xsl:value-of select="origin"/>
            </td>
            <td class="notes">
                <xsl:value-of select="notes"/>
            </td>
            <td>
                <img src="/Users/Pearson/github/XML/XML/XML_Data_DU/FinalProject/photos/{name}.jpg"
                     alt="{name}"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>


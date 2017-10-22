<?xml version="1.0" encoding="UTF-8"?>
<!--Paul Pearson-->
<!--president_table.xsl-->

<xsl:stylesheet version="2.0"
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
        <p>
            <xsl:value-of select="name"/>
        </p>
    </xsl:template>


</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>

<!--Paul Pearson-->
<!--president_table.xsl-->

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" version="4.0"/>
    <xsl:template match="presidents/president">
        <html>
            <body>
                <h1>Table of US Presidents</h1>
                <xsl:apply-templates select="presidents/president"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

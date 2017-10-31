<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <!-- <xsl:output method="html" encoding="UTF-8" indent="yes" version="4.0" /> -->
    <xsl:output method="xhtml"
                indent="yes"/>
    <xsl:template match="/">
        <xsl:text>
 </xsl:text>
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" lang="en"/>
                <title>Table of US Presidents</title>
                <link rel="stylesheet" type="text/css" href="president_table.css"/>
            </head>
            <body>
                <h1>Table of US Presidents</h1>
                <table class="president">
                    <tr>
                        <th class="name">Name</th>
                        <th class="birthday">Birthday</th>
                        <th class="took_office">Took Office</th>
                        <th class="left_office">Left Office</th>
                        <th class="party">Party</th>
                    </tr>
                    <xsl:apply-templates select="presidents/president">
                        <!-- <xsl:sort select="party"/> -->
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="president">
        <tr>
            <td class="name">
                <xsl:value-of select="name"/>
            </td>
            <td class="birthday">
                <xsl:value-of select="date"/>
            </td>
            <td class="took_office">
                <xsl:value-of select="took_office"/>
            </td>
            <td class="left_office">
                <xsl:value-of select="left_office"/>
            </td>
            <!-- We build the element this was so that the class name can be built separately -->
            <xsl:element name="td">
                <!-- party1 uses only XSLT1.0 functions translate for lower case translation-->
                <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz</xsl:variable>
                <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
                <xsl:variable name="party1" select="translate(replace(party,' ','_'),$ucletters,$lcletters)"/>
                <!-- party2 uses XSLT2.0 function lower-case to do the job -->
                <!-- <xsl:variable name="party2" select="lower-case(replace(party,' ','_'))"/> -->
                <xsl:attribute name="class">
                    <xsl:value-of select="$party1"/>
                </xsl:attribute>
                <xsl:value-of select="party"/>
            </xsl:element>
        </tr>
    </xsl:template>
</xsl:stylesheet>
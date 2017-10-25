<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <!-- <xsl:output method="html" encoding="UTF-8" indent="yes" version="4.0" /> -->
    <xsl:output method="xhtml"
                indent="yes"
    />

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
                        23:
                        <th class="party">Party</th>
                    </tr>
                    24:
                    <xsl:apply-templates select="presidents/president">
                        25:                         <!-- <xsl:sort select="party"/> -->
                        26:
                    </xsl:apply-templates>
                    27:
                </table>
                28:
            </body>
            29:
        </html>
        30:
    </xsl:template>
    31:
    <xsl:template match="president">
        32:
        <tr>
            33:
            <td class="name">
                <xsl:value-of select="name"/>
            </td>
            34:
            <td class="birthday">
                <xsl:value-of select="date"/>
            </td>
            35:
            <td class="took_office">
                <xsl:value-of select="took_office"/>
            </td>
            36:
            <td class="left_office">
                <xsl:value-of select="left_office"/>
            </td>
            37:             <!-- We build the element this was so that the class name can be built separately -->
            38:
            <xsl:element name="td">
                39:                 <!-- party1 uses only XSLT1.0 functions translate for lower case translation-->
                40:
                <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz</xsl:variable>
                41:
                <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
                42:
                <xsl:variable name="party1" select="translate(replace(party,' ','_'),$ucletters,$lcletters)"/>
                43:
                44:                 <!-- party2 uses XSLT2.0 function lower-case to do the job -->
                45:                 <!-- <xsl:variable name="party2" select="lower-case(replace(party,' ','_'))"/> -->
                46:
                47:
                <xsl:attribute name="class">
                    <xsl:value-of select="$party1"/>
                </xsl:attribute>
                48:
                <xsl:value-of select="party"/>
                49:
            </xsl:element>
            50:
        </tr>
        :
    </xsl:template>
</xsl:stylesheet>
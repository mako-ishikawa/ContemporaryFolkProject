<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="Xinterval" select="150"/>
    <xsl:template match="/">
            <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" >
                <g transform="translate(30, 400)">
                    <line x1="20"
                        x2="20"
                        y1="0"
                        y2="-350"
                        stroke="black"
                        stroke-width="1"/>
                    <line x1="20"
                        x2="1050"
                        y1="0"
                        y2="0"
                        stroke="black"
                        stroke-width="1"/>
                    <line x1="20" x2="1050" y1="-100" y2="-100" stroke="black" stroke-dasharray="8 4" stroke-width="1"/>
                    <line x1="20" x2="1050" y1="-200" y2="-200" stroke="black" stroke-dasharray="8 4" stroke-width="1"/>
                    <line x1="20" x2="1050" y1="-300" y2="-300" stroke="black" stroke-dasharray="8 4" stroke-width="1"/>
                    <text x="5" y="0" text-anchor="middle">0</text>
                    <text x="5" y="-100" text-anchor="middle">5</text>
                    <text x="5" y="-200" text-anchor="middle">10</text>
                    <text x="5" y="-300" text-anchor="middle">15</text>
                    <line x1="1050"
                        x2="1050"
                        y1="0"
                        y2="-350"
                        stroke="black"
                        stroke-width="1"/>
                    <text x="1060" y="0" text-anchor="middle">0</text>
                    <text x="1060" y="-100" text-anchor="middle">5</text>
                    <text x="1060" y="-200" text-anchor="middle">10</text>
                    <text x="1060" y="-300" text-anchor="middle">15</text>
                <xsl:for-each select="//theme">
                    <xsl:sort order="descending" select="number(count)"/>
                    <xsl:variable name="xPos" select="position()*$Xinterval"/>
                    <xsl:variable name="xText" select="$xPos+20"/>
                    <xsl:variable name="yPos" select="count*20"/>
                    <rect x="{$xPos}" y="-{$yPos}" fill="blue" stroke="black" stroke-width="2" width="50" height="{$yPos}"/>
                    <text x="{$xText}" y="20" text-anchor="middle"><xsl:apply-templates select="name"/></text>
                    <text x="{$xText}" y="40" text-anchor="middle"><xsl:apply-templates select="count"/></text>
                </xsl:for-each>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>CD</h2>
                <ol start="1">
                    <xsl:for-each select="catalog/cd">    
                        <li>
                            <p>
                                <span style="color:red;"><xsl:value-of select="title"/></span>
                                <br/>
                                <xsl:value-of select="artist"/>
                                <xsl:text>,</xsl:text>
                                <xsl:value-of select="year"/>
                                <br/>
                                 <xsl:text>$</xsl:text>
                                <xsl:value-of select="price"/>
                            </p>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
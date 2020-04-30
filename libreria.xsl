<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
            </head>
            <body>
                <h1>ditorial Yoquese</h1>
                <table border="0">
                    <tr style="background-color: white">
                        <th></th>
                    </tr>
                    <xsl:for-each select=""><!-- bucle general -->
                    <tr><!-- crear tabla, para que la repita las veces que necesite el bucle -->
                        <td><xsl:value-of select=""/></td>
                        <xsl:for-each select=""> <!--solo colocar la etiqueta a repetir-->
                            <td><xsl:value-of select=""/></td>
                        </xsl:for-each>
                        <td><xsl:value-of select=""/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
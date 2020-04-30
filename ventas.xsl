<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Editorial Yoquese</title>
            </head>
            <body>
                <h1>Editorial Yoquese</h1>
                <h2>Informe de Ventas</h2>
                <h3>Ventas Aragón</h3>
                <table border="0">
                    <tr style="background-color: white">
                        <th>Provincia\Trimestre</th>
                        <th>T1</th>
                        <th>T2</th>
                        <th>T3</th>
                        <th>T4</th>
                        <th>Total</th>
                    </tr>
                    <xsl:for-each select="ventas/datos/provincia"><!-- bucle general -->
                    <tr><!-- crear tabla, para que la repita las veces que necesite el bucle -->
                        <td><xsl:value-of select="nombre"/></td>
                        <xsl:for-each select="trimestre"> <!--solo colocar la etiqueta a repetir-->
                            <td><xsl:value-of select="@cantidad"/></td>
                        </xsl:for-each>
                        <td><xsl:value-of select="sum(trimestre/@cantidad)"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
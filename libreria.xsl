<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Librería</title>
            </head>
            <body>
                <h1>Librería</h1>
                <table border="2">
                    <tr style="background-color: white;">
                        <th colspan="6" style="background-color:lightgreen;">PRODUCTOS</th>
                    </tr>
                    <tr style="background-color: yellow;">
                        <th>categoría</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                        <th>Total</th>
                    </tr>
                    <xsl:for-each select="libreria/libros/producto">
                    <xsl:sort select="producto/@cat" data-type="text" order="descending" />
                    <tr style="background-color:cyan;">                        
                        <td><xsl:value-of select="@cat"/></td>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <xsl:choose>
                            <xsl:when test="precio='NC'">
                                <td width="100">No Consta</td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td width="100"><xsl:value-of select="precio"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <td><xsl:value-of select="cantidad"/></td>
                        <!-- <xsl:choose>
                            <xsl:when test="Total='NaN">
                                <td width="100">Desconocido</td>
                            </xsl:when>
                            <xsl:otherwise> -->
                                <td width="100"><xsl:value-of select="(cantidad*precio)"/></td>
                            <!-- </xsl:otherwise>
                        </xsl:choose> -->
                    </tr>
                    </xsl:for-each>
                </table>
               
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



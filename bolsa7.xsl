<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>La bolsa el <xsl:value-of select="@dia"/> a las <xsl:value-of select="@hora"/></title>
            </head>
            <body>
                <h2>Bolsa</h2>
                <table border="1" aling="center">
                    <tr style="background-color: white">
                        <th>Símbolo</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="Bolsa/Empresa">
                    <xsl:sort select="Precio" order="descending" data-type="number"/>
                        <tr>
                            <xsl:choose>
                                <xsl:when test="Precio &gt;= 75">
                                <tr>
                                    <td>
                                        <xsl:value-of select="Simbolo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Nombre"/>
                                            <xsl:if test="indice='general'">(*)</xsl:if>
                                    </td>
                                    <td style="color:blue">
                                        <xsl:value-of select="Precio"/>
                                    </td>
                                </tr>
                                </xsl:when>
                                <xsl:when test="Precio &lt;= 25">
                                <tr>
                                    <td>
                                        <xsl:value-of select="Simbolo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Nombre"/>
                                            <xsl:if test="indice='general'">(*)</xsl:if>
                                    </td>
                                    <td style="color:red">
                                        <xsl:value-of select="Precio"/>
                                    </td>
                                </tr>
                                </xsl:when>
                                <xsl:when test="Precio &gt;=25 and &lt;=75">
                                <tr>
                                    <td>
                                        <xsl:value-of select="Simbolo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Nombre"/>
                                            <xsl:if test="indice='general'">(*)</xsl:if>
                                    </td>
                                    <td>    
                                        <xsl:value-of select="Precio"/>
                                    </td>
                                </tr>    
                                </xsl:otherwise>
                            </xsl:choose>                            
                        </tr>
                    </xsl:for-each>
                </table> 
                    <p aling="left"><b>(*) Estas Empresas son del índice General</b></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
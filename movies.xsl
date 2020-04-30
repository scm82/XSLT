<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Listado de Películas</title>
            </head>
            <body>
                <h1>Listado de Películas</h1>
                <ol start="1">
                    <xsl:for-each select="movies/movie">    
                        <li >
                            <xsl:text>Título: </xsl:text>
                            <xsl:value-of select="title"/>
                            <br/>
                            <xsl:text>Director: </xsl:text>
                            <xsl:value-of select="director"/>
                            <br/>
                            <xsl:text>Productor: </xsl:text>
                            <xsl:value-of select="producer"/>
                            <br/>
                            <xsl:text>Actores: </xsl:text>
                            <ul>
                                <xsl:for-each select="actor"> <!--para que nos genere otra lista anidada hay que indicar solo la etiqueta a repetir-->
                                <li><xsl:value-of select="."/></li><!--poner en el select ".", asi nos sacara todos los actores-->
                                </xsl:for-each>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
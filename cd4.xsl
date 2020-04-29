<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
  <xsl:template match="/">
    <html>
    <body>
      <h2>CD</h2>
          <table border="1">
            <tr style="background-color: white">
              <th>Title</th>
              <th>Artist</th>
              <th>Year</th>
            </tr>
          <xsl:for-each select="catalog/cd">
          <xsl:sort select="year" data-type="number" order="ascending"/>
          <xsl:choose>
            <xsl:when test="year&gt;=1970 and year&lt;=1979">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="artist"/></td>
              <td style="background-color: yellow;"><xsl:value-of select="year"/></td>
          </tr>
          </xsl:when>
           <xsl:when test="year&gt;=1980 and year&lt;=1989">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="artist"/></td>
              <td style="background-color: green;"><xsl:value-of select="year"/></td>
          </tr>
          </xsl:when>
          <xsl:when test="year&gt;=1990 and year&lt;=1999">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="artist"/></td>
              <td style="background-color: blue;"><xsl:value-of select="year"/></td>
          </tr>
          </xsl:when>
          </xsl:choose>
          </xsl:for-each>
          </table>
    </body>
    </html>
  </xsl:template>
  <xsl:template match="year">
    <xsl:value-of select="year"/>
  </xsl:template>
</xsl:stylesheet>
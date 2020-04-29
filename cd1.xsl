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
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="year"/></td>
     </tr>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
<xsl:template match="year">
    <xsl:value-of  select="year"/>
</xsl:template>
</xsl:stylesheet>
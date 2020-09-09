<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
<html>

    <head>
      <title>Styling with xsl</title>
    </head>

<body>
  <h2>List of Clients</h2>
<table  border="1">
    <tr>
      <th >Name</th>
      <th>Phone</th>
      <th>Email</th>
      <th text-align="right">Account Total</th>
    </tr>

  <xsl:for-each select="Accounts/Client">
    
    <tr style="border: 1px solid black">
      <td><xsl:value-of select="Name"/></td>
      <td><xsl:value-of select="Phone"/></td>
      <td><xsl:value-of select="E-mail"/></td>
      <xsl:choose>
       <xsl:when test="Account_Total &lt;= '80000'">
       <td style="color:red; text-align:right;"> <xsl:value-of select="concat('$', Account_Total)"/></td>
       </xsl:when>
       <xsl:otherwise>
       <td style="text-align:right;"> <xsl:value-of select="concat('$', Account_Total)"/></td>
       </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:for-each>
  
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


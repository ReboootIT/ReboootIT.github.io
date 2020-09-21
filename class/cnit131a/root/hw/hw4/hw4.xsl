<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
 <html>

<head>
<title>Hw 4 - ABC information page</title>
<style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>


<body>
<h1>ABC Financial Startup</h1>

<img src="abc.jpg" />

<p>We are very young financial manager company and we are very proud of our clients</p>


<p>We have started with 1 client a little bit more than 10 years ago and now we have <xsl:value-of select="count(Accounts/Client)" /> clients<xsl:text>!</xsl:text></p>



<p>These are our clients:
  <xsl:for-each select="Accounts/Client/Name"> 
  <xsl:value-of select="First"/><xsl:text> </xsl:text>
  <xsl:value-of select="Last"/> 
  <xsl:choose> 
	<xsl:when test="position()=last()">.</xsl:when> 
	<xsl:when test="position()=last() - 1">, and </xsl:when> 
  <xsl:otherwise>, </xsl:otherwise>
  </xsl:choose>
  </xsl:for-each>
</p>



<p>
<xsl:value-of select="count(Accounts/Client/Years[. &gt; 7])" /> of our Clients are with us for more than 7 years<xsl:text> !</xsl:text>  
</p>

 </body>
</html>
</xsl:template>

</xsl:stylesheet>


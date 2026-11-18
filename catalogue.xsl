<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/document">
<html>
<head>
<title><xsl:value-of select="titre"/></title>
<link rel="stylesheet" href="style.css"/>
</head>
<body>
<h1><xsl:value-of select="titre"/> - Prénom NOM, né(e) le jj/mm/aaaa</h1>
<p class="infos">Cote : <xsl:value-of select="@cote"/> - Année : <xsl:value-of select="annee"/> - Prix : <xsl:value-of select="prix"/> FCFA</p>
<h2>Auteur(s)</h2>
<ul>
<xsl:apply-templates select="auteur"/>
</ul>
<p class="etat">État :
<xsl:value-of select="etat"/>
</p>
</body>
</html>
</xsl:template>

<xsl:template match="auteur">
<li><xsl:value-of select="."/></li>
</xsl:template>

</xsl:stylesheet>
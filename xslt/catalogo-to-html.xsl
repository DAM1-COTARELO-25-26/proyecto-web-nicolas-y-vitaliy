<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>

<head>
<title>Catálogo de Smartphones</title>

<style>
table{border-collapse:collapse;}
th,td{border:1px solid black;padding:6px;}

.destacado{background-color:#ffeaa7;font-weight:bold;}
.normal{background-color:#ffffff;}

.caro{color:red;font-weight:bold;}
.barato{color:green;}

</style>

</head>

<body>

<h1>Catálogo de Smartphones</h1>

<xsl:variable name="totalMoviles" select="count(catalogo/smartphone)"/>
<xsl:variable name="precioTotal" select="sum(catalogo/smartphone/precio)"/>

<p>Total de smartphones: <xsl:value-of select="$totalMoviles"/></p>
<p>Suma total de precios: <xsl:value-of select="$precioTotal"/> €</p>

<table>

<tr>
<th>#</th>
<th>ID</th>
<th>Marca</th>
<th>Modelo</th>
<th>Sistema</th>
<th>Precio</th>
<th>Colores</th>
</tr>

<xsl:apply-templates select="catalogo/smartphone[stock='true']"/>

</table>

</body>

</html>

</xsl:template>

<xsl:template match="smartphone">

<tr>

<xsl:attribute name="class">
<xsl:choose>
<xsl:when test="@destacado='true'">destacado</xsl:when>
<xsl:otherwise>normal</xsl:otherwise>
</xsl:choose>
</xsl:attribute>

<td>
<xsl:value-of select="position()"/>
</td>

<td>
<xsl:value-of select="@id"/>
</td>

<td>
<xsl:value-of select="marca"/>
</td>

<td>

<xsl:value-of select="concat(marca,' ',modelo)"/>
</td>

<td>
<xsl:value-of select="@sistema"/>
</td>

<td>

<xsl:variable name="precioMovil" select="precio"/>

<span>

<xsl:attribute name="class">
<xsl:choose>
<xsl:when test="$precioMovil &gt; 1000">caro</xsl:when>
<xsl:otherwise>barato</xsl:otherwise>
</xsl:choose>
</xsl:attribute>

<xsl:value-of select="precio"/> €

</span>

</td>

<td>


<xsl:for-each select="colores/color">


<xsl:sort select="."/>
<xsl:value-of select="."/>

<xsl:if test="position()!=last()">, </xsl:if>

</xsl:for-each>

</td>

</tr>

</xsl:template>

<xsl:template match="catalogo">

<xsl:for-each select="smartphone">

<xsl:sort select="marca"/>
<xsl:sort select="precio" data-type="number"/>

<xsl:apply-templates select="."/>

</xsl:for-each>

</xsl:template>

</xsl:stylesheet>
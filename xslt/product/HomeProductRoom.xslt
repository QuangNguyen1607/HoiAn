<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="home-2 main-section" setBackground="/Data/Sites/1/media/home/h2-bg.png">
			<div class="container">
				<div class="wrap-title-main">
					<div class="main-title line-blue"><h2><xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h2></div>
					<div class="desc-title"><xsl:value-of select="Zone/Description" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<div class="wrap-box-product-1">
					<div class="row">
						<xsl:apply-templates select="Zone/Product"></xsl:apply-templates>
						
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-lg-4 col-sm-6">
			<a class="box-product zoom-img" href="">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="img img-scale">
					<img class="lozad">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="wrap-title">
					<h3 class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					<p class="desc">
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
				<div class="stt">
					<xsl:if test="position()&lt;10">
						<xsl:text disable-output-escaping="yes">0</xsl:text>
					</xsl:if>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>

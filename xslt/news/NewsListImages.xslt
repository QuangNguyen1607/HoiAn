<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="main-section page-gallery-image">
			<div class="container">
				<div class="wrap-title-main">
					<div class="main-title"><xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="desc-title"><xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<div class="grid-container">
					<xsl:apply-templates select="News"></xsl:apply-templates>
					
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="grid-item">
			<a class="img zoom-img img-scale" href="javascript:;">
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:text disable-output-escaping="yes">images-</xsl:text>
					<xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<img class="lozad">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
			<div class="hidden">
				<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
			</div>
			<div class="inner"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:if test="position()&gt;1">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="../Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:text disable-output-escaping="yes">images-</xsl:text>
					<xsl:value-of select="../NewsId" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

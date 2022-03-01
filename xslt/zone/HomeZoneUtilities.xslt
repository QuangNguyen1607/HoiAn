<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="wrap-title-main">
			<div class="main-title">
				<xsl:value-of select="Zone/Title" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="desc-title">
				<xsl:value-of select="Zone/Description" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<div class="box-post-tin post-1">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="img img-scale">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
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
			</div>
			<div class="box-content">
				<a class="title line line-1">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<div class="desc line line-2">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="wrap-button">
					<div class="button-prev-2">
						<em class="lnr lnr-chevron-left"></em>
					</div>
					<div class="button-next-2">
						<em class="lnr lnr-chevron-right"></em>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

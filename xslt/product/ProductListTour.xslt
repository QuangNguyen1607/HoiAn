<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductList">
		<section class="main-section page-service-tour">
			<div class="container">
				<div class="wrap-title-main">
					<div class="main-title"><xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="desc-title"><xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<div class="wrap-items">
					<xsl:apply-templates select="Product"></xsl:apply-templates>


				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product">
		<div class="items">
			<div class="box-img zoom-img">
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
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
			</div>
			<div class="box-content">
				<div class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:text disable-output-escaping="yes"> </xsl:text><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
				<div class="desc"><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></div>
				<a class="button-readmore" href="">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/ViewMore"></xsl:value-of>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

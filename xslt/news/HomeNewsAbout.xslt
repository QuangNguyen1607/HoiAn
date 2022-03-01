<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="home-1 main-section" setBackground="/Data/Sites/1/media/sec-1.jpg">
			<div class="container">
				<xsl:apply-templates select="News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="row">
			<div class="col-xl-6">
				<div class="box-content">
					<div class="wrap-title-main">
						<div class="main-title">
							<h1><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h1>
						</div>
						<div class="desc-title">
							<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ViewMore"></xsl:value-of>
					</a>
				</div>
			</div>
			<div class="col-xl-6">
				<div class="box-img">
					<img class="lozad">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

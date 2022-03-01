<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="main-section page-news-list">
			<div class="container">
				<div class="wrap-title-main">
					<div class="main-title"><xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="desc-title"><xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<div class="row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-md-4 col-sm-12">
			<xsl:if test="position()&gt;0 and position()&lt;3">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">col-md-6 col-sm-12</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="item">
				<a class="img zoom-img img-scale" href="">
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
				<a class="wrap-content" href="">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<span class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></span>
					<time><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYY" disable-output-escaping="yes"></xsl:value-of></time>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

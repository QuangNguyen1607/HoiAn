<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductList">
		<section class="main-section page-restaurant-utilities bg-primary">
			<div class="container">
				<div class="wrap-title-main">
					<div class="main-title"><xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="desc-title"><xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<div class="row">
					<xsl:apply-templates select="Product[1]"></xsl:apply-templates>
					<xsl:apply-templates select="Product[2]"></xsl:apply-templates>
				</div>
			</div>
		</section>
		<xsl:if test="count(Product)&gt;2">
			<section class="main-section page-restaurant-utilities bg-2">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="Product[3]"></xsl:apply-templates>
						<xsl:apply-templates select="Product[4]"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="count(Product)&gt;4">
			<section class="main-section page-restaurant-utilities bg-primary">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="Product[position()&gt;4]"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-md-6 col-sm-12">
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
				<a class="inner-title line line-1" href="">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</div>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			<div class="item-content">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

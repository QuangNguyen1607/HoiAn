<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="page-hoat-dong-khac-main tien-ich-page-main small-section">
			<div class="container">
				<xsl:apply-templates select="Zone[IsActive='true']"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="wrap-title-main">
			<div class="main-title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="desc-title">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<xsl:apply-templates select="Zone" mode="Zone-Child"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone-Child">
		<div class="wrap-box-item-hd">
			<div class="img zoom-img">
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
				<div class="icon">
					<img class="lozad">
						<xsl:attribute name="data-src">
							<xsl:value-of select="SecondImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="desc">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
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
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ViewMore"></xsl:value-of>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

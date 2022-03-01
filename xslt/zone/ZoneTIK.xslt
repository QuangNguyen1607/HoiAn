<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">

		<section class="home-3 slide-product-main">
				<div class="container">
					<div class="title-product"><xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="wrap-slide">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="Zone[IsActive='true']/Zone[IsActive!='true']"></xsl:apply-templates>

							</div>
						</div>
						<div class="wrap-button">
							<div class="button-prev button-sw-1"><em class="lnr lnr-arrow-left"></em></div>
							<div class="button-next button-sw-1"><em class="lnr lnr-arrow-right"></em></div>
						</div>
					</div>
				</div>
			</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="box-product-slide">
				<div class="img ">
					<a class="img-scale">
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
				<div class="box-desc">
					<div class="wrap-text">
						<a class="title-p" href="">
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
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
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
		</div>
	</xsl:template>
</xsl:stylesheet>

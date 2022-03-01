<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="main-section intro-5 bg-2">
			<xsl:apply-templates select="News"></xsl:apply-templates>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-intro-5">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</div>
			<div class="wrap-button">
				<div class="button-prev button-sw-1"><em class="lnr lnr-arrow-left"></em></div>
				<div class="button-next button-sw-1"><em class="lnr lnr-arrow-right"></em></div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="img">
				<a data-fancybox="intro5">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<img class="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
				<p class="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

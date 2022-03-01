<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/BannerList">
		<div class="swiper-container slide-home">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="Banner"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="box-banner">
				<div class="img img-scale video-scale">
					<xsl:choose>
						<xsl:when test="Url != ''">
							<video width="100%" height="100%" loop="true" autoplay="" muted="" playsinline="" src="/Data/Sites/1/media/video/gvc-website.mp4" alt="Video">
								<xsl:attribute name="src">
									<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
								</xsl:attribute>
							</video>
						</xsl:when>
						<xsl:otherwise>
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<xsl:if test="Description != ''">
					<div class="box-text">
						<xsl:value-of disable-output-escaping="yes" select="Description">
					</xsl:value-of>
					</div>
				</xsl:if>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

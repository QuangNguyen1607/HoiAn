<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="home-5 video-gallery main-section" setBackground="/Data/Sites/1/media/bg-h5.png" id="tab-6">
			<div class="container">
				<xsl:apply-templates select="News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="row">
			<div class="col-lg-6">
				<div class="box-content">
					<div class="wrap-title-main white">
						<div class="main-title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="desc-title">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<!-- <div class="desc">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div> -->
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="img-video">
					<div class="img">
						<a data-fancybox="video-show">
							<xsl:choose>
								<xsl:when test="SubTitle !=''">
									<xsl:attribute name="href">
										<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
									</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="href">
										<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
									</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
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
					<div class="icon-video">
						<img class="lozad" data-src="/Data/Sites/1/media/icon/camera-icon.png" alt="icon"/>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

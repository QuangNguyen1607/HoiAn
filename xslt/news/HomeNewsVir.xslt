<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="home-5 main-section" setBackground="/Data/Sites/1/media/bg-h5.png">
			<div class="container">
				<xsl:apply-templates select="Zone/News[1]"></xsl:apply-templates>
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
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="box-img-wrap">
					<div class="img-big">
						<xsl:choose >
							<xsl:when test="FullContent != ''">
								<div class="map-360" id="modal-360" style="display: none;">
									<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
								</div>
								<xsl:apply-templates select="NewsImages[1]" mode="Big"></xsl:apply-templates>
							</xsl:when>
							<xsl:otherwise>
								<xsl:apply-templates select="NewsImages[1]" mode="Big2"></xsl:apply-templates>
							</xsl:otherwise>
						</xsl:choose>
						<div class="icon-360">
							<img class="lozad" data-src="/Data/Sites/1/skins/default/img/360-icon.png" alt="icon-360"/>
						</div>
					</div>
					<div class="wrap-small">
						<div class="img-small">
							<a data-fancybox="image-home">
								<xsl:attribute name="href">
									<xsl:value-of select="NewsImages[2]/ImageUrl" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
								<img class="lozad">
									<xsl:attribute name="data-src">
										<xsl:value-of select="NewsImages[2]/ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="NewsImages[2]/Title"></xsl:value-of>
									</xsl:attribute>
								</img>
							</a>
							<div class="icon-view">
								<img class="lozad" data-src="/Data/Sites/1/skins/default/img/icon/eye.png" alt=""/>
							</div>
						</div>
						<div class="img-small">
							<a data-fancybox="image-home">
								<xsl:attribute name="href">
									<xsl:value-of select="NewsImages[3]/ImageUrl" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
								<img class="lozad">
									<xsl:attribute name="data-src">
										<xsl:value-of select="NewsImages[3]/ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="NewsImages[3]/Title"></xsl:value-of>
									</xsl:attribute>
								</img>
							</a>
							<div class="icon-view">
								<img class="lozad" data-src="/Data/Sites/1/skins/default/img/icon/eye.png" alt=""/>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Big">
		<a data-fancybox="image-home">
			<xsl:attribute name="data-fancybox">
				<xsl:text disable-output-escaping="yes">modal</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="data-src">
				<xsl:text disable-output-escaping="yes">#modal-360</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:text disable-output-escaping="yes">javascript:;</xsl:text>
			</xsl:attribute>
			<img class="lozad">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</img>
		</a>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Big2">
		<a data-fancybox="image-home">
			<xsl:attribute name="data-fancybox">
				<xsl:text disable-output-escaping="yes">image</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<img class="lozad">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</img>
		</a>
	</xsl:template>
</xsl:stylesheet>

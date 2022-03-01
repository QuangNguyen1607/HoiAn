<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="home-5 main-section" setBackground="/Data/Sites/1/skins/default/img/bg-h5.png">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="box-content">
							<div class="wrap-title-main white">
								<div class="main-title"><xsl:value-of select="Zone/News[1]/EditLink" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="Zone/News[1]/Title" disable-output-escaping="yes"></xsl:value-of></div>
								<div class="desc-title"><xsl:value-of select="Zone/News[1]/BriefContent" disable-output-escaping="yes"></xsl:value-of></div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="box-img-wrap">
							<div class="img-big">
								<xsl:apply-templates select="Zone/News[1]/NewsImages" mode="Image360"></xsl:apply-templates>
							</div>
							<div class="wrap-small">
								<xsl:apply-templates select="Zone/News[1]/NewsImages" mode="ImageSmall"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Image360">
		<xsl:if test="position()=1">
			<a data-fancybox="modal-360" data-src="#modal-360-new">
				<div class="div-img-360">
					<xsl:attribute name="image-360">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
				</div>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
			<div id="modal-360-new">
				<div class="image-360" id="tab1"></div>
			</div>
			<div class="icon-360"><img class="" src="/Data/Sites/1/media/360-icon.png" alt="icon 360"/></div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="ImageSmall">
		<xsl:if test="position()&gt;1">
			<div class="img-small">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text disable-output-escaping="yes">image-</xsl:text>
						<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
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
				<div class="icon-view"><img class="" src="/Data/Sites/1/media/icon/eye.png" alt=""/></div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

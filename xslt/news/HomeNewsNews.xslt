<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="section-post-list main-section" setBackground="/Data/Sites/1/media/bg-tintuc.jpg">
			<div class="container">
				<div class="wrap-title-header">
					<div class="wrap-title-main white">
						<div class="main-title">
							<h2><xsl:value-of select="Zone/Title" disable-output-escaping="yes"></xsl:value-of></h2>
						</div>
						<div class="desc-title">
							<xsl:value-of select="Zone/Description" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<a class="button-readmore transparent" href="">
						<xsl:attribute name="href">
							<xsl:value-of select="Zone/Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Zone/Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Zone/Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/YouAll"></xsl:value-of>
					</a>
				</div>
				<div class="wrap-post-list">
					<div class="row">
						<xsl:apply-templates select="Zone/News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-4 col-sm-6">
			<div class="box-tin">
				<div class="img zoom-img ">
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
				<div class="wrap-content">
					<a class="title">
						<h3><xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					<div class="date">
						<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.
						<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.
						<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

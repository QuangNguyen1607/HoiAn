<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductList">
		<section class="home-2 main-section" setBackground="/Data/Sites/1/skins/default/img/phong/background-phong.png">
			<div class="container">
				<div class="wrap-title-main">
					<div class="main-title">
						<xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="desc-title">
						<xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
				<div class="wrap-box-product-1">
					<div class="row">
						<xsl:apply-templates select="Product"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-lg-4 col-sm-6">
			<div class="box-product zoom-img">
				<div class="img img-scale">
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
				<div class="wrap-title">
					<h2 class="title">
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
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<p class="desc">
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
				<div class="stt">
					<xsl:if test="position()&lt;10">
						<xsl:text disable-output-escaping="yes">0</xsl:text>
					</xsl:if>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

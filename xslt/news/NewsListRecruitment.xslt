<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="section main-section page-recruit-2">
			<div class="container">
				<div class="wrap-title-main">
					<xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
				<xsl:if test="count(News)&gt;6">
					<a class="button-readmore" href="">
						<span>Xem thêm</span>
						<em class="material-icons">arrow_drop_down</em>
					</a>
				</xsl:if>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-md-6 col-sm-12">
			<div class="wrap-related">
				<a class="related-item" href="">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<div class="title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="address-time">
						<div class="address">
							<em class="material-icons">location_on</em>
							<span>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
						<div class="time">
							<em class="material-icons">event_available</em>
							<span>
								<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.
								<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.
								<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
					</div>
					<div class="price">
						<em class="material-icons">attach_money</em>
						<span>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</span>
						<div class="arrow">
							<em class="lnr lnr-arrow-right"></em>
						</div>
					</div>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
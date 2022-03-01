<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductList">
		<section class="dich-vu-page combo main-section">
			<div class="container">
				<div class="wrap-title-main">
					<div class="main-title">
						<xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="desc-title">
						<xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
				<div class="wrap-items">
					<xsl:apply-templates select="Product"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product">
		<div class="items">
			<div class="box-img zoom-img">
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
				<div class="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="info-product-detail">
					<xsl:if test="BriefContent != ''">
						<div class="title">
							<img class="lozad" data-src="/Data/Sites/1/skins/default/img/icon/gift.png" alt=""/>
							<span>ưu đãi</span>
						</div>
						<div class="list-info">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</xsl:if>
					<div class="title">
						<img class="lozad" data-src="/Data/Sites/1/skins/default/img/icon/date-icon.png" alt=""/>
						<span>Thời Hạn</span>
					</div>
					<div class="date">
						<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
					</div>
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
						Xem thêm
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

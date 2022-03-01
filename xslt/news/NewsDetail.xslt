<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsDetail">
		<section class="main-section page-news-detail bg-primary">
			<div class="container">
				<div class="wrap-info">
					<div class="wrap-header">
						<div class="title"><h1><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h1></div>
						<div class="box-option">
							<div class="date">Ngày đăng: <xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></div>
							<div class="share">
								<span>Chia sẻ</span>
								<a href="">
									<xsl:attribute name="href">
										<xsl:text disable-output-escaping="yes">
											https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
										<xsl:value-of disable-output-escaping="yes" select="FullUrl">
										</xsl:value-of>
									</xsl:attribute>
									<em class="fab fa-facebook-f"></em></a>
								<a href="">
									<xsl:attribute name='href'>
										<xsl:text>https://twitter.com/intent/tweet?text=</xsl:text>
										<xsl:value-of select='FullUrl'></xsl:value-of>
									</xsl:attribute>
									<em class="fab fa-twitter"></em></a>
							</div>
						</div>
					</div>
					<div class="content">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>
		<section class="other-news section-post-list main-section" setBackground="/Data/Sites/1/media/bg-tintuc.png">
			<div class="container">
				<div class="block-title">
					<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/otherNews"></xsl:value-of>
				</div>
				<div class="wrap-post-list swiper-other-news">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>

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
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="box-tin">
				<div class="img zoom-img">
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
				<div class="wrap-content">
					<a class="title" href="">
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
					<div class="date"><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

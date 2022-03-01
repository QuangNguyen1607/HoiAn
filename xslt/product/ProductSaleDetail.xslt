<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductDetail">
		<section class="page-uu-dai-product">
			<div class="container">
				<div class="wrap-box-flex">
					<div class="box-left">
						<xsl:apply-templates select="ProductImages[1]"></xsl:apply-templates>
						
					</div>
					<div class="box-content">
						<h2 class="title-product"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
						<div class="table-price">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="desc">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="wrap-share">
							<strong>Chia sẻ</strong>
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
								<em class="fab fa-twitter"></em>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<xsl:if test="count(ProductAttributes)&gt;0">
			<section class="page-uu-dai-product-2" setBackground="/Data/Sites/1/media/uu-dai/banner-uudai.png">
				<div class="container">
					<div class="wrap-box-infomation">
						<div class="wrap" data-toggle="tabslet">
							<ul class="tabslet-tabs tab-header">
								<xsl:apply-templates select="ProductAttributes" mode="Attr-Tab"></xsl:apply-templates>
							</ul>
							<xsl:apply-templates select="ProductAttributes" mode="Attr-Content"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<section class="box-comment-page">
			<div class="container">
				<div class="comment-on-site">
					<div class="title-product">Đánh giá</div>
					<div class="wrap-cm-2">

					</div>
				</div>
			</div>
		</section>
		<section class="post-uu-dai-slide">
			<div class="container">
				<div class="title-product">Ưu đãi khác</div>
				<div class="wrap-slide">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="ProductOther"></xsl:apply-templates>
							
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
	<xsl:template match="ProductImages">
		<a data-fancybox="">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
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
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Attr-Tab">
		<li>
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:text disable-output-escaping="yes">#tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Attr-Content">
		<div class="tabslet-content">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">tabslet-content active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">tab-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="ProductOther">
		<div class="swiper-slide">
			<div class="item-post">
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
				<div class="content">
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
					<div class="date">
						<time>
							Từ 
							<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of> 
							<xsl:text disable-output-escaping="yes"> - </xsl:text>
							<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
						</time>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

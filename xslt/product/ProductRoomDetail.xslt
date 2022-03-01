<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductDetail">
		<section class="page-uu-dai-product phong-ct-1">
			<div class="container">
				<div class="wrap-box-flex">
					<div class="box-left">
						<div class="wrap-slide">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="ProductImages"></xsl:apply-templates>
								</div>
								<xsl:if test="count(ProductImages)&gt;1">
									<div class="swiper-pagination"></div>
									<div class="wrap-button">
										<div class="button-prev-in button-sw-white">
											<em class="lnr lnr-arrow-left"></em>
										</div>
										<div class="button-next-in button-sw-white">
											<em class="lnr lnr-arrow-right"></em>
										</div>
									</div>
								</xsl:if>
							</div>
						</div>
					</div>
					<div class="box-content">
						<h1 class="title-product">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h1>
						<div class="table-price">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="wrap-form">
							<div class="form-group date-input">
								<input id="dpStartDate" type="text" placeholder="Ngày nhận phòng">
									<xsl:attribute name="placeholder">
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/CheckInDate"></xsl:value-of>
									</xsl:attribute>
								</input>
							</div>
							<div class="form-flex">
								<div class="form-group date-input">
									<input id="dpEndDate" type="text" placeholder="Ngày trả phòng">
										<xsl:attribute name="placeholder">
											<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/CheckOutDate"></xsl:value-of>
										</xsl:attribute>
									</input>
								</div>
								<div class="frm-btnwrap">
									<div class="frm-btn">
										<input type="submit" class="btn-booking" id="btnBooking" value="Đặt ngay">
											<xsl:attribute name="value">
												<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BookNow"></xsl:value-of>
											</xsl:attribute>
										</input>
									</div>
								</div>
							</div>
						</div>
						<div class="wrap-share">
							<strong>
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/YouShare"></xsl:value-of>
							</strong>
							<a href="">
								<xsl:attribute name="href">
									<xsl:text disable-output-escaping="yes">
										https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
									<xsl:value-of disable-output-escaping="yes" select="FullUrl">
									</xsl:value-of>
								</xsl:attribute>
								<em class="fab fa-facebook-f"></em>
							</a>
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
			<xsl:apply-templates select="ProductAttributes[1]" mode="Attr-1"></xsl:apply-templates>
			<xsl:apply-templates select="ProductAttributes[2]" mode="Attr-2"></xsl:apply-templates>
		</xsl:if>
		<xsl:apply-templates select="NewsRelated"></xsl:apply-templates>
		<section class="box-comment-page">
			<div class="container">
				<div class="comment-on-site">
					<div class="title-product">
						<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/YouCustomerReviews"></xsl:value-of>
					</div>
					<div class="wrap-cm-2">

					</div>
				</div>
			</div>
		</section>
		<xsl:if test="count(ProductOther)&gt;0">
			<section class="post-uu-dai-slide">
				<div class="container">
					<div class="title-product">
						<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/OtherPromotion"></xsl:value-of>
					</div>
					<div class="wrap-slide">
						<div class="swiper-container wrap-box-product-1">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="ProductOther"></xsl:apply-templates>
							</div>
						</div>
						<div class="wrap-button">
							<div class="button-prev button-sw-1">
								<em class="lnr lnr-arrow-left"></em>
							</div>
							<div class="button-next button-sw-1">
								<em class="lnr lnr-arrow-right"></em>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="ProductImages">
		<div class="swiper-slide">
			<div class="img">
				<a data-fancybox="">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
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
		</div>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Attr-1">
		<section class="dich-vu-mien-phi" setBackground="/Data/Sites/1/media/phong/pct-1.png">
			<div class="container">
				<div class="title-product white">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Attr-2">
		<section class="page-uu-dai-product-2 phong-ct-tab" setBackground="/Data/Sites/1/media/bg-phong-ct-tien-ich.png">
			<div class="container">
				<div class="wrap-box-infomation">
					<div class="title-product">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="wrap">
						<div class="tabslet-content">
							<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsRelated">
		<section class="page-gallery-main small-section" setBackground="/Data/Sites/1/media/bg-image-gallery.png">
			<div class="container">
				<div class="title-product">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="wrap-box-img">
					<div class="row">
						<xsl:apply-templates select="NewsImages[position()&gt;0 and position()&lt;4]" mode="NewsImages1"></xsl:apply-templates>
						<xsl:apply-templates select="NewsImages[4]" mode="NewsImages2"></xsl:apply-templates>
						<xsl:apply-templates select="NewsImages[5]" mode="NewsImages3"></xsl:apply-templates>
						<div class="hidden">
							<xsl:apply-templates select="NewsImages[position()&gt;5]" mode="NewsImages4"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages" mode="NewsImages1">
		<div class="col-lg-4 col-sm-12">
			<div class="box-img-small">
				<a data-fancybox="news-image">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
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
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="NewsImages2">
		<div class="col-lg-6">
			<div class="box-img-big">
				<a data-fancybox="news-image">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
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
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="NewsImages3">
		<div class="col-lg-6">
			<div class="box-img-big">
				<a data-fancybox="news-image">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
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
				<div class="title-show">
					<img src="/Data/Sites/1/media/icon/camera.png" alt=""/>
					<span>
						Xem tất cả ảnh (
						<xsl:value-of select="count(../NewsImages)" disable-output-escaping="yes"></xsl:value-of>
						ảnh )
					</span>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="NewsImages4">
		<a data-fancybox="news-image">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
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
	<xsl:template match="ProductOther">
		<div class="swiper-slide">
			<div class="box-product zoom-img">
				<div class="img">
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

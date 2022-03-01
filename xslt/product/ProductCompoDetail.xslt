<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductDetail">
		<section class="page-uu-dai-product dich-vu-combo-ct-1">
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
										<div class="button-prev-in button-sw-white"><em class="lnr lnr-arrow-left"></em></div>
										<div class="button-next-in button-sw-white"><em class="lnr lnr-arrow-right"></em></div>
									</div>
								</xsl:if>
							</div>
						</div>
					</div>
					<div class="box-content">
						<h2 class="title-product"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
						<div class="wrap-price-main">
							<ins>
								<xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
								<xsl:text disable-output-escaping="yes">/ Khách</xsl:text>
							</ins>
							<xsl:if test="OldPrice != ''">
								<del><xsl:value-of select="OldPrice" disable-output-escaping="yes"></xsl:value-of></del>
							</xsl:if>
							<xsl:if test="DiscountPercentage != '' and DiscountPercentage != '+0' ">
								<div class="phantram">
									<xsl:text>-</xsl:text>
									<xsl:value-of select="DiscountPercentage"></xsl:value-of>
									<xsl:text>%</xsl:text>
								</div>
							</xsl:if>
						</div>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						
						<table class="table-select-order">
							<tr>
								<td class="strong">Số lượng khách</td>
								<td>
									<div class="price-se">
										<div class="input-amount">
											<a class="btn-dec" href="!#">
												<em class="material-icons">remove</em>
											</a>
											<input class="amount" type="text" value="1" name="">
												<xsl:attribute name="name">
													<xsl:text>addtocart_</xsl:text>
													<xsl:value-of select="ProductId" disable-output-escaping="yes"></xsl:value-of>
													<xsl:text>.EnteredQuantity</xsl:text>
												</xsl:attribute>
											</input>
											<a class="btn-inc" href="#">
												<em class="material-icons">add</em>
											</a>
										</div>
										<div class="show-price"><xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of></div>
									</div>
								</td>
							</tr>
							<tr>
								<td></td>
								<td><a class="button-readmore" href="javascript:;">Đặt ngay</a></td>
							</tr>
						</table>
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
									<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
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
		<!-- <section class="page-gallery-main small-section" setBackground="/Data/Sites/1/media/bg-tien-ich-4.png">
			<div class="container">
				<div class="title-product">Tiện nghi phòng Deluxe Twin</div>
				<div class="wrap-box-img">
					<div class="row">
						<div class="col-lg-4 col-sm-12">
							<div class="box-img-small"><a href="/Data/Sites/1/media/gl-1.png" data-fancybox><img class="lozad" data-src="/Data/Sites/1/media/gl-1.png" alt=""></a>
								<div class="title-show"><img src="/Data/Sites/1/media/icon/camera.png" alt=""><span>Xem tất cả ảnh ( 200 ảnh )</span></div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-12">
							<div class="box-img-small"><a href="/Data/Sites/1/media/gl-1.png" data-fancybox><img class="lozad" data-src="/Data/Sites/1/media/gl-1.png" alt=""></a>
								<div class="title-show"><img src="/Data/Sites/1/media/icon/camera.png" alt=""><span>Xem tất cả ảnh ( 200 ảnh )</span></div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-12">
							<div class="box-img-small"><a href="/Data/Sites/1/media/gl-1.png" data-fancybox><img class="lozad" data-src="/Data/Sites/1/media/gl-1.png" alt=""></a>
								<div class="title-show"><img src="/Data/Sites/1/media/icon/camera.png" alt=""><span>Xem tất cả ảnh ( 200 ảnh )</span></div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="box-img-big"><a href="/Data/Sites/1/media/gl-1.png" data-fancybox><img class="lozad" data-src="/Data/Sites/1/media/gl-1.png" alt=""></a>
								<div class="title-show"><img src="/Data/Sites/1/media/icon/camera.png" alt=""><span>Xem tất cả ảnh ( 200 ảnh )</span></div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="box-img-big"><a href="/Data/Sites/1/media/gl-1.png" data-fancybox><img class="lozad" data-src="/Data/Sites/1/media/gl-1.png" alt=""></a>
								<div class="title-show"><img src="/Data/Sites/1/media/icon/camera.png" alt=""><span>Xem tất cả ảnh ( 200 ảnh )</span></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section> -->
		<section class="box-comment-page">
			<div class="container">
				<div class="comment-on-site">
					<div class="title-product">Đánh giá</div>
					<div class="wrap-cm-2">
						<!-- comment ở đây -->
					</div>
				</div>
			</div>
		</section>
		<xsl:if test="count(ProductOther)&gt;0">
			<section class="home-3 slide-product-main">
				<div class="container">
					<div class="title-product">Combo - Best seller khác</div>
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
		</xsl:if>
	</xsl:template>
	<xsl:template match="ProductImages">
		<div class="swiper-slide">
			<div class="img">
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
			</div>
		</div>
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
			<div class="box-product-slide">
				<div class="img">
					<a class=" img-scale">
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
				<div class="box-desc">
					<div class="wrap-text">
						<a class="title-p">
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
						<div class="date-p"><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></div>
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
						Đặt ngay
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

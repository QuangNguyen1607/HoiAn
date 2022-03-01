<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="home-1 main-section" setBackground="/Data/Sites/1/media/sec-1.jpg" id="tab-1">
			<div class="container">
				<xsl:apply-templates select="Zone[1]/News[1]" mode="Zone1-News1"></xsl:apply-templates>
			</div>
		</section>
		<section class="main-section intro-2 bg-2" id="tab-2">
			<div class="container">
				<xsl:apply-templates select="Zone[2]" mode="Zone2"></xsl:apply-templates>
			</div>
		</section>
		<section class="main-section intro-3 pt-80" setBackground="/Data/Sites/1/skins/default/img/home/bg-home-6.png" id="tab-3">
			<div class="container">
				<div class="wrap-slide">
					<div class="box-left">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="Zone[3]/News" mode="about-ỉmg-3"></xsl:apply-templates>
							</div>
						</div>
					</div>
					<div class="box-right">
						<div class="wrap-img">
							<div class="img zoom-img">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<img class="lozad">
										<xsl:attribute name="data-src">
											<xsl:value-of select="Zone[3]/News/ImageUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="alt">
											<xsl:value-of select="Zone[3]/News/Title"></xsl:value-of>
										</xsl:attribute>
									</img>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="main-section intro-3 pt-80" setBackground="/Data/Sites/1/skins/default/img/home/bg-home-6.png" id="tab-4">
			<div class="container">
				<div class="wrap-slide">
					<div class="box-right">
						<div class="wrap-img">
							<div class="img zoom-img">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<img class="lozad">
										<xsl:attribute name="data-src">
											<xsl:value-of select="Zone[4]/News/ImageUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="alt">
											<xsl:value-of select="Zone[4]/News/Title"></xsl:value-of>
										</xsl:attribute>
									</img>
								</a>
							</div>
						</div>
					</div>
					<div class="box-left">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="Zone[4]/News" mode="about-ỉmg-3"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="main-section intro-4" setBackground="/Data/Sites/1/media/bg-video-gallery.png" id="tab-5">
			<div class="container">
				<xsl:apply-templates select="Zone[5]" mode="Zone5"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Zone1-News1">
		<div class="row">
			<div class="col-xl-6">
				<div class="box-content">
					<div class="wrap-title-main">
						<div class="main-title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="desc-title">
							<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
			<div class="col-xl-6">
				<div class="box-img">
					<img class="lozad">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">
		<div class="wrap-title-main">
			<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="swiper-why-me">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
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
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News">
		<div class="swiper-slide">
			<div class="item zoom-img">
				<a class="img zoom-img" href="">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
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
				<a class="text-inner" href="">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<div class="stt">
					<xsl:if test="position()&lt;10">
						<xsl:text disable-output-escaping="yes">0</xsl:text>
					</xsl:if>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone3-News">
		<div class="swiper-slide">
			<div class="wrap-box">
				<div class="wrap-content">
					<div class="box-content">
						<div class="wrap-title-main">
							<div class="main-title">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="desc-title">
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
						<div class="content">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="seemore home-6">
							<span>
								<xsl:value-of disable-output-escaping="yes" select="/ZoneList/YouNext"></xsl:value-of>
							</span>
							<div class="wrap-button">
								<div class="button-prev-2">
									<em class="lnr lnr-chevron-left"></em>
								</div>
								<div class="button-next-2">
									<em class="lnr lnr-chevron-right"></em>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="wrap-img">
					<div class="img zoom-img">
						<img class="lozad">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone4-News">
		<div class="swiper-slide">
			<div class="wrap-box">
				<div class="wrap-img">
					<div class="img zoom-img">
						<img class="lozad">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="wrap-content">
					<div class="box-content">
						<div class="wrap-title-main">
							<div class="main-title">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="desc-title">
								<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
						<div class="content">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="seemore home-6">
							<span>
								<xsl:value-of disable-output-escaping="yes" select="/ZoneList/YouNext"></xsl:value-of>
							</span>
							<div class="wrap-button">
								<div class="button-prev-2">
									<em class="lnr lnr-chevron-left"></em>
								</div>
								<div class="button-next-2">
									<em class="lnr lnr-chevron-right"></em>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone5">
		<div class="wrap-title-main white">
			<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="wrap-box">
			<xsl:apply-templates select="News" mode="Zone5-News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone5-News">
		<div class="wrap-item">
			<a class="title">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</a>
			<div class="content">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="about-ỉmg-3">
		<div class="swiper-slide">
			<div class="wrap-box">
				<div class="wrap-content">
					<div class="box-content">
						<div class="wrap-title-main">
							<div class="main-title">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="desc-title">
								<p>
									<strong>
										<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
									</strong>
								</p>
							</div>
						</div>
						<div class="content">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
						<a class="seemore home-6">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<span>
								<xsl:value-of disable-output-escaping="yes" select="/ZoneList/YouNext"></xsl:value-of>
							</span>
							<div class="wrap-button">
								<div class="button-prev-2">
									<em class="lnr lnr-chevron-left"></em>
								</div>
								<div class="button-next-2">
									<em class="lnr lnr-chevron-right"></em>
								</div>
							</div>
						</a>
						<div class="seemore home-6">

						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsDetail">
		<section class="section main-section page-recruit-detail bg-primary">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-12">
						<div class="wrap-info">
							<div class="wrap-header">
								<div class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
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
							<div class="wrap-body">
								<div class="img">
									<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
								</div>
								<div class="wrap-table">
									<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
						</div>
						<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
						
					</div>
					<div class="col-lg-3 col-md-12">
						<div class="wrap-related">
							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
							
							
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages">
		<img class="lozad">
			<xsl:attribute name="data-src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
		</img>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="wrap-info">
			<div class="wrap-header">
				<div class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
			</div>
			<div class="wrap-content">
				<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
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
			<div class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
			<div class="address-time">
				<div class="address"><em class="material-icons">location_on</em><span><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></span></div>
				<div class="time"><em class="material-icons">event_available</em><span><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></span></div>
			</div>
			<div class="price"><em class="material-icons">attach_money</em><span><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></span></div>
		</a>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>

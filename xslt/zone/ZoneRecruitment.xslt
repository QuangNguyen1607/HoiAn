<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone[IsActive='true']"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<section class="section main-section page-recruit bg-primary">
			<div class="container">
				<div class="wrap-box">
					<div class="wrap-content">
						<div class="box-content">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
							<a class="seemore home-6" href=""><span>Xem tiếp</span>
								<div class="wrap-button">
									<div class="button-prev-2"><em class="lnr lnr-chevron-left"></em></div>
									<div class="button-next-2"><em class="lnr lnr-chevron-right"></em></div>
								</div>
							</a>
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
		</section>
	</xsl:template>
</xsl:stylesheet>

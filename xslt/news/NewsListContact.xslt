<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<div class="wrap-post-2">
			<div class="row">
				<xsl:apply-templates select="News"></xsl:apply-templates>
				
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-6">
			<div class="box-post">
				<div class="img zoom-img img-scale">
					<img class="lozad">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="box-content">
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

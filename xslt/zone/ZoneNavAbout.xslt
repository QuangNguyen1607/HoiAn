<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="file-nav-1">
			<ul class="list-menu">
				<xsl:apply-templates select="Zone"></xsl:apply-templates>
			</ul>
			<div class="category-page">
				<div class="title-header">
					<em class="material-icons">menu</em>
					<span>Danh mục</span>
				</div>
				<ul class="list-menu-page"></ul>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<li>
			<a>
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text disable-output-escaping="yes">active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:text disable-output-escaping="yes">#tab-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-scroll">
					<xsl:text disable-output-escaping="yes">tab-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
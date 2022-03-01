<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/LanguageList">
		<div class="change-lang">
			<span>
				<xsl:value-of select="Language[IsActive='true']/Title" disable-output-escaping="yes"></xsl:value-of>
			</span>
			<em class="material-icons icons">keyboard_arrow_down</em>
			<div class="list-change-lang">
				<xsl:apply-templates select="Language"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Language">
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
	</xsl:template>
</xsl:stylesheet>
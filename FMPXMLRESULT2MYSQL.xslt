<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:fmp="http://www.filemaker.com/fmpxmlresult"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="xsl fmp">
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>
	<xsl:template match="/fmp:FMPXMLRESULT">
			<RECORDSET>
				<xsl:attribute name="error">
					<xsl:value-of select="fmp:ERRORCODE"/>
				</xsl:attribute>
				<xsl:attribute name="records">
					<xsl:value-of select="fmp:DATABASE/@RECORDS"/>
				</xsl:attribute>
				<xsl:attribute name="found">
					<xsl:value-of select="fmp:RESULTSET/@FOUND"/>
				</xsl:attribute>
				<xsl:for-each select="fmp:RESULTSET/fmp:ROW">
					<xsl:call-template name="getRecord">
						<xsl:with-param name="subset" select="." />
						<xsl:with-param name="modid" select="@MODID" />
						<xsl:with-param name="recid" select="@RECORDID" />
					</xsl:call-template>
				</xsl:for-each>
			</RECORDSET>
	</xsl:template>
	<xsl:template name="getRecord">
		<xsl:param name="subset"/>
		<xsl:param name="modid"/>
		<xsl:param name="recid"/>
		<RECORD>
			<xsl:attribute name="modid">
				<xsl:value-of select="$modid"/>
			</xsl:attribute>
			<xsl:attribute name="recid">
				<xsl:value-of select="$recid"/>
			</xsl:attribute>
			<xsl:for-each select="/fmp:FMPXMLRESULT/fmp:METADATA/fmp:FIELD">
				<xsl:variable name="pt" select="position()" />
				<xsl:attribute name="{translate( translate( translate(@NAME,' ', '') ,'.', '') ,':', '')}">
					<xsl:value-of select="$subset/fmp:COL[$pt]/fmp:DATA"/>
				</xsl:attribute>
			</xsl:for-each>
		</RECORD>
	</xsl:template>
</xsl:stylesheet>

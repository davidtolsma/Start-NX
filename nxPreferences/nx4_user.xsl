<?xml version="1.0" encoding="UTF-8"?>
<!--       

-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method ="html"/>
	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates select="PrefValues" />
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="Pref">
	<p>
		<xsl:text>Location: </xsl:text><xsl:value-of select="@Application"/> <xsl:text>; </xsl:text> <xsl:value-of select="@Category"/> <xsl:text>; </xsl:text>  <xsl:value-of select="@Tab"/><br/>
		<xsl:text>Setting: </xsl:text><xsl:value-of select="@title"/><br/>	
		 <xsl:choose>
		 <xsl:when test="contains(@name,'_EU')">
		 <xsl:text>Applies to: English</xsl:text><br/>
		 </xsl:when>
		 <xsl:when test="contains(@name,'_MU')">
		 <xsl:text>Applies to: Metric</xsl:text><br/>
		 </xsl:when>
	         <xsl:when test="contains(@name,'_UNX')">
	         <xsl:text>Applies to: Unix</xsl:text><br/>
	         </xsl:when>
	         <xsl:when test="contains(@name,'_WIN')">
	         <xsl:text>Applies to: Windows</xsl:text><br/>
	         </xsl:when>
	          </xsl:choose>
		
		<xsl:text>	Setting unique identifier: </xsl:text><xsl:value-of select="@name"/><br/>
		<xsl:text>Value: </xsl:text><xsl:value-of select="@displayValue"/> <br/>
		<xsl:choose>
			<xsl:when test="../@defaultLockStatus='unlocked'">
			<xsl:choose>
				<xsl:when test="@locked">
				<xsl:text>Locked: yes</xsl:text><br/>
				</xsl:when>
				<xsl:otherwise >
				<xsl:text>Locked: no </xsl:text> <br/>
				</xsl:otherwise>
			</xsl:choose>
			
			</xsl:when>
			<xsl:when test="../@defaultLockStatus='locked'">
			<xsl:choose>
				<xsl:when test="@locked">
				<xsl:text>Locked: no</xsl:text><br/>
				</xsl:when>
				<xsl:otherwise >
				<xsl:text>Locked: yes</xsl:text>  <br/>
				</xsl:otherwise>
			</xsl:choose>
			
			</xsl:when>

		</xsl:choose>

		
	        <xsl:text>Set on: </xsl:text><xsl:value-of select="@modified"/><br/>
			<xsl:apply-templates/>
	</p>	
	</xsl:template>
	<xsl:template match="UserComment">
	<xsl:text>User Comment: </xsl:text> <xsl:value-of select="."/>
	</xsl:template>
</xsl:stylesheet>

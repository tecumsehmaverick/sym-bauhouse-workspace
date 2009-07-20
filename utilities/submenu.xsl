<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/common.xsl"/>

<xsl:output
	method="xml" 
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8" 
	indent="yes" />

<xsl:template match="/">
	<html>
		<xsl:call-template name="head"/>
		<body id="section_{$current-page}">
			<div id="box">
				<xsl:call-template name="top"/>
				<div id="subheader">
					<ul id="submenu">
						<xsl:apply-templates select="data/navigation/page[@handle = $root-page]/page"/>
						<li class="right"><a href="{$root}/contact/">Contact</a></li>
					</ul>
				</div><!-- END #submenu -->

				<xsl:apply-templates />
							 
				<xsl:call-template name="bottom"/>
			</div><!-- END #box -->
		</body>
	</html>	 
</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="head">
	<head>
		<title><xsl:value-of select="$website-name"/> - <xsl:value-of select="$page-title"/></title>
		<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/screen.css"/>
		<link rel="alternate" type="application/rss+xml" href="{$root}/rss/" />
		<link rel="shortcut icon" type="image/gif" href="{$workspace}/assets/images/favicon.gif" />
	</head>
</xsl:template>

<xsl:template name="top">
	<div id="top">
		<div class="box_header">
			<div class="box_mainhead">
				<h1><a href="{$root}/" title="Bauhouse Design"><strong>Bauhouse</strong> Design</a></h1>
			</div><!-- END box_mainhead -->
			<div class="main_menu">
				<xsl:call-template name="navigation"/>
				<ul class="select_tabs">
					<xsl:apply-templates select="data/navigation/page[types/type = 'tabs']" mode="select-tabs" />
				</ul>
			</div><!-- END main_menu -->
			<hr class="clear" />
		</div><!-- END box_header -->
	</div><!-- END top -->
</xsl:template>

<xsl:template name="bottom">
	<div class="bottom">
		<div class="box_footer">
			<div class="footer">
				<p class="top right"><a href="#top" title="Back to top">Back to top</a></p>
				<p>Copyright <xsl:value-of select="$this-year"/> Stephen Bau, 
					<a href="http://www.gdc.net/" title="Member of the Society of Graphic Designers of Canada: www.gdc.net">MGDC</a>, 
					<a href="http://www.bauhouse.ca/" title="www.bauhouse.ca">Bauhouse Design</a> | 
					<a href="http://validator.w3.org/check/referer" title="Check XHTML">XHTML</a> | 
					<a href="http://jigsaw.w3.org/css-validator/check/referer" title="Check Cascading Style Sheets">CSS</a> | 
					<a href="http://www.symphony-cms.com/" title="Powered by Symphony CMS">Symphony CMS</a> | 
					<a href="http://www.joyent.com/" title="Hosted by Joyent">Joyent</a> |
					<a href="{$root}/rss/" title="Subscribe to the RSS feed">RSS</a>
				</p>
			</div><!-- END footer -->
		</div><!-- END box_footer -->
	</div><!-- END bottom -->
</xsl:template>

</xsl:stylesheet>
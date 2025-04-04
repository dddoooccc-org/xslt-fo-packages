<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:foutil="urn:dddoooccc.org:ns:xslt:pkg:fo:util"
	xmlns:axf="http://www.antennahouse.com/names/XSL/Extensions"
	package-version="1.0.0"
	name="urn:dddoooccc.org:ns:xslt:pkg:fo:util:breakable-block"
	exclude-result-prefixes="xs fn foutil">
	
	<xsl:param name="formatter" as="xs:string" select="'antennahouse'" static="yes"/>
	
	<xsl:expose component="template" names="foutil:proc.breakable-block" visibility="public"/>
	<xsl:expose component="template" names="" visibility="private"/>
	<xsl:expose component="variable" visibility="private" names="*"/>
	<xsl:expose component="attribute-set" visibility="private" names="*"/>
	
<!--
	
	-->
	<!--
	This template allows you to change contents at page-breaking-edge such as continued-mark efficiently.
	
	1. case 1page
	2. case 2page
	3. case 3page or more
	-->


	<xsl:variable name="foutil:var.marker-class-name.breakable-block.header-default" as="xs:string" select="'BREAKABLE_BLOCK_HEADER'"/>
	<xsl:variable name="foutil:var.marker-class-name.breakable-block.footer-default" as="xs:string" select="'BREAKABLE_BLOCK_FOOTER'"/>
	

	<!-- To generate Tagged PDF with Antenna House Formatter, 
		this setting improves semantics
		when axs:formatter-settings/@new-tagging-mode="true"-->
	<xsl:attribute-set name="foutil:atts.atts.breakable-block-container">
		<xsl:attribute name="axf:pdftag" select="''" use-when="$formatter eq 'antennahouse'"/>	
	</xsl:attribute-set>

	<xsl:attribute-set name="foutil:atts.fo_table.breakable-block-container"
		use-attribute-sets="foutil:atts.atts.breakable-block-container">
		<xsl:attribute name="width" select="'100%'"/>
		<xsl:attribute name="table-layout" select="'fixed'"/>
		<xsl:attribute name="table-omit-header-at-break" select="'false'"/>
		<xsl:attribute name="table-omit-footer-at-break" select="'false'"/>
		<xsl:attribute name="border-width" select="'0pt'"/>
	</xsl:attribute-set>
	<xsl:attribute-set name="foutil:atts.fo_table-header.breakable-block-container"
		use-attribute-sets="foutil:atts.atts.breakable-block-container">
	</xsl:attribute-set>
	<xsl:attribute-set name="foutil:atts.fo_table-footer.breakable-block-container"
		use-attribute-sets="foutil:atts.atts.breakable-block-container">
	</xsl:attribute-set>

	<xsl:attribute-set name="foutil:atts.fo_table-body.breakable-block-container"
		use-attribute-sets="foutil:atts.atts.breakable-block-container">
	</xsl:attribute-set>
	
	<xsl:attribute-set name="foutil:atts.fo_table-row.breakable-block-container"
		use-attribute-sets="foutil:atts.atts.breakable-block-container">
	</xsl:attribute-set>
	<xsl:attribute-set name="foutil:atts.fo_table-cell.breakable-block-container"
		use-attribute-sets="foutil:atts.atts.breakable-block-container">
		<xsl:attribute name="column-number" select="'1'"/>
	</xsl:attribute-set>
	<xsl:attribute-set name="foutil:atts.fo_table-column.breakable-block-container"
		use-attribute-sets="foutil:atts.atts.breakable-block-container">
		<xsl:attribute name="column-number" select="'1'"/>
		<xsl:attribute name="column-width" select="'100%'"/>
	</xsl:attribute-set>
	
	

	<xsl:attribute-set name="foutil:atts.fo_retrieve-table-marker.breakable-block-header">
		<xsl:attribute name="retrieve-position-within-table" select="'first-starting'"/>
	</xsl:attribute-set>
	<xsl:attribute-set name="foutil:atts.fo_retrieve-table-marker.breakable-block-footer">
		<xsl:attribute name="retrieve-position-within-table" select="'last-starting'"/>	
	</xsl:attribute-set>
	
	<xsl:attribute-set name="foutil:atts.fo_block.breakable-block-marker-first">
		<xsl:attribute name="keep-with-next.within-column" select="'always'"/>
		<xsl:attribute name="keep-together" select="'always'"/>
	</xsl:attribute-set>
	<xsl:attribute-set name="foutil:atts.fo_block.breakable-block-marker-last">
		<xsl:attribute name="keep-with-previous.within-column" select="'always'"/>
		<xsl:attribute name="keep-together" select="'always'"/>
	</xsl:attribute-set>
	
	<!-- templates public -->
	<xsl:template name="foutil:proc.breakable-block" visibility="public">
		<xsl:param name="header-first" required="yes"/>
		<xsl:param name="footer-last"  required="yes" />
		<xsl:param name="content"  required="yes"/>
		
		<xsl:param name="header-continued"  select="$header-first" />
		<xsl:param name="footer-continued"  select="$footer-last" />
		<xsl:param name="header-class-name" as="xs:string" select="$foutil:var.marker-class-name.breakable-block.header-default"/>
		<xsl:param name="footer-class-name" as="xs:string" select="$foutil:var.marker-class-name.breakable-block.footer-default"/>
		
		<xsl:comment select="'foutil:breakable-box start'"/>
		<xsl:if test="fn:exists($content)">
		<fo:table xsl:use-attribute-sets="foutil:atts.fo_table.breakable-block-container" >
			
			<fo:table-column xsl:use-attribute-sets="foutil:atts.fo_table-column.breakable-block-container"/>
			<xsl:call-template name="gen.breakable-block.header">
				<xsl:with-param name="marker-class-name" select="$header-class-name"/>
			</xsl:call-template>
			<xsl:call-template name="gen.breakable-block.footer">
				<xsl:with-param name="marker-class-name" select="$footer-class-name"/>
			</xsl:call-template>
			
			<fo:table-body  xsl:use-attribute-sets="foutil:atts.fo_table-body.breakable-block-container">
				<fo:table-row xsl:use-attribute-sets="foutil:atts.fo_table-row.breakable-block-container">
					<fo:table-cell xsl:use-attribute-sets="foutil:atts.fo_table-cell.breakable-block-container">
						<xsl:call-template name="proc.breakable-block.before-content">
							<xsl:with-param name="header-class-name" select="$header-class-name"/>
							<xsl:with-param name="footer-class-name" select="$footer-class-name"/>
							<xsl:with-param name="header-first" select="$header-first"/>
							<xsl:with-param name="header-continued" select="$header-continued"/>
							<xsl:with-param name="footer-continued" select="$footer-continued"/>
						</xsl:call-template>
						<xsl:comment select="'start foutil:breakable-block $content'"/>
						<fo:block>
							<xsl:sequence select="$content"/>
						</fo:block>
						<xsl:comment select="'end foutil:breakable-block $content'"/>
						<xsl:call-template name="proc.breakable-block.after-content">
							<xsl:with-param name="footer-class-name" select="$footer-class-name"/>
							<xsl:with-param name="footer-last" select="$footer-last"/>
						</xsl:call-template>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<xsl:comment select="'foutil:breakable-block end'"/>
		</xsl:if>
	</xsl:template>
	
	
	<!-- templates private -->
	
	<xsl:template name="proc.breakable-block.before-content" as="element(fo:block)" visibility="private">
		<xsl:param name="header-class-name" as="xs:string" required="yes"/>
		<xsl:param name="footer-class-name" as="xs:string" required="yes"/>
		<xsl:param name="header-first"  required="yes"/>
		<xsl:param name="header-continued"  required="yes"/>
		<xsl:param name="footer-continued"  required="yes"/>
		
		<fo:block  xsl:use-attribute-sets="foutil:atts.fo_block.breakable-block-marker-first">
			<fo:block>
				<fo:marker marker-class-name="{$header-class-name}" >
					<xsl:sequence select="$header-first"/>
				</fo:marker>
			</fo:block>
			<fo:block>
				<fo:marker marker-class-name="{$header-class-name}" >
					<xsl:sequence select="$header-continued"/>
				</fo:marker>
			</fo:block>
			<fo:block>
				<fo:marker marker-class-name="{$footer-class-name}" >
					<xsl:sequence select="$footer-continued"/>
				</fo:marker>
			</fo:block>
		</fo:block>
	</xsl:template>
	
	
	
	<xsl:template name="proc.breakable-block.after-content" as="element(fo:block)" visibility="private">
		<xsl:param name="footer-class-name" as="xs:string" required="yes"/>
		<xsl:param name="footer-last"  required="yes"/>
		
		<fo:block xsl:use-attribute-sets="foutil:atts.fo_block.breakable-block-marker-last">
			<fo:block>
				<fo:marker marker-class-name="{$footer-class-name}" >
					<xsl:sequence select="$footer-last"/>
				</fo:marker>
			</fo:block>
		</fo:block>
	</xsl:template>
	
	
	<!-- content header per page -->

	<xsl:template name="gen.breakable-block.header" as="element(fo:table-header)" visibility="private">
		<xsl:param name="marker-class-name" as="xs:string" required="yes"/>
		<fo:table-header xsl:use-attribute-sets="foutil:atts.fo_table-header.breakable-block-container">
			<fo:table-row xsl:use-attribute-sets="foutil:atts.fo_table-row.breakable-block-container">
				<fo:table-cell xsl:use-attribute-sets="foutil:atts.fo_table-cell.breakable-block-container">
					<fo:block>
						<fo:retrieve-table-marker xsl:use-attribute-sets="foutil:atts.fo_retrieve-table-marker.breakable-block-header" >
							<xsl:attribute name="retrieve-class-name" select="$marker-class-name"/>
						</fo:retrieve-table-marker>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-header>
	</xsl:template>
	
	<!-- content footer per page -->
	
	<xsl:template name="gen.breakable-block.footer" as="element(fo:table-footer)" visibility="private">
		<xsl:param name="marker-class-name" as="xs:string" required="yes"/>
		<fo:table-footer  xsl:use-attribute-sets="foutil:atts.fo_table-footer.breakable-block-container">
			<fo:table-row xsl:use-attribute-sets="foutil:atts.fo_table-row.breakable-block-container">
				<fo:table-cell xsl:use-attribute-sets="foutil:atts.fo_table-cell.breakable-block-container">
					<fo:block>
						<fo:retrieve-table-marker xsl:use-attribute-sets="foutil:atts.fo_retrieve-table-marker.breakable-block-footer">
							<xsl:attribute name="retrieve-class-name" select="$marker-class-name"/>
						</fo:retrieve-table-marker>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-footer>
	</xsl:template>

</xsl:package>
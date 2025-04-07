<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:folayouts="urn:dddoooccc.org:ns:xslt:pkg:fo:layout-master-sets"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:axf="http://www.antennahouse.com/names/XSL/Extensions"
    package-version="0.0.1"
    name="urn:dddoooccc.org:ns:xslt:pkg:fo:layout-master-sets:book"
	exclude-result-prefixes="xs fn folayouts">
	<xsl:param name="formatter" as="xs:string" select="'antennahouse'"/>
    
	<xsl:template name="folayouts:gen.book.layout-master-set" visibility="public" as="element(fo:layout-master-set)">
		<fo:layout-master-set>
			<xsl:call-template name="folayouts:gen.book.page-masters"/>
			<xsl:call-template name="folayouts:gen.book.page-sequence-masters"/>
		</fo:layout-master-set>
	</xsl:template>
	
    <xsl:template name="folayouts:gen.book.page-masters" as="node()*">
		<xsl:call-template name="folayouts:gen.book.page-masters.covers"/>
		
		<xsl:call-template name="folayouts:gen.book.page-masters.frontmatter"/>
		<xsl:call-template name="folayouts:gen.book.page-masters.mainmatter"/>
		<xsl:call-template name="folayouts:gen.book.page-masters.backmatter"/>
	</xsl:template>

    <xsl:template name="folayouts:gen.book.page-sequence-masters" as="node()*">
		<xsl:call-template name="folayouts:gen.book.page-sequence-master.covers"/>
		
		<xsl:call-template name="folayouts:gen.book.page-sequence-master.frontmatter"/>
		<xsl:call-template name="folayouts:gen.book.page-sequence-master.mainmatter"/>
		<xsl:call-template name="folayouts:gen.book.page-sequence-master.backmatter"/>
	</xsl:template>


</xsl:package>
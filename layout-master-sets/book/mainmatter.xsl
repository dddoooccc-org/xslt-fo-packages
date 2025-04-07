<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:folayouts="urn:dddoooccc.org:ns:xslt:pkg:fo:layout-master-sets"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:axf="http://www.antennahouse.com/names/XSL/Extensions"
	exclude-result-prefixes="xs fn folayouts"
    package-version="0.0.1"
    name="urn:dddoooccc.org:ns:xslt:pkg:fo:layout-master-sets:book:mainmatter"
	>
	<xsl:param name="formatter" select="'antennahouse'"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.mainmatter.verso.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-body.book.mainmatter.verso.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-before.book.mainmatter.verso.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-after.book.mainmatter.verso.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-start.book.mainmatter.verso.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-end.book.mainmatter.verso.first"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.mainmatter.verso.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-body.book.mainmatter.verso.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-before.book.mainmatter.verso.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-after.book.mainmatter.verso.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-start.book.mainmatter.verso.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-end.book.mainmatter.verso.rest"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.mainmatter.verso.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-body.book.mainmatter.verso.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-before.book.mainmatter.verso.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-after.book.mainmatter.verso.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-start.book.mainmatter.verso.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-end.book.mainmatter.verso.blank"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.mainmatter.recto.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-body.book.mainmatter.recto.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-before.book.mainmatter.recto.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-after.book.mainmatter.recto.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-start.book.mainmatter.recto.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-end.book.mainmatter.recto.first"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.mainmatter.recto.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-body.book.mainmatter.recto.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-before.book.mainmatter.recto.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-after.book.mainmatter.recto.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-start.book.mainmatter.recto.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-end.book.mainmatter.recto.rest"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.mainmatter.recto.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-body.book.mainmatter.recto.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-before.book.mainmatter.recto.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-after.book.mainmatter.recto.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-start.book.mainmatter.recto.blank"/>
	<xsl:attribute-set name="folayouts:atts.fo_region-end.book.mainmatter.recto.blank"/>
	
	<xsl:attribute-set name="folayouts:atts.axf_spread-page-master.book.mainmatter.spread"/>
	<xsl:attribute-set name="folayouts:atts.axf_spread-region.book.mainmatter.spread"/>
	
	
	<xsl:attribute-set name="folayouts:atts.fo_page-sequence-master.book.mainmatter"/>
	<xsl:attribute-set name="folayouts:atts.fo_repeatable-page-master-reference.book.mainmatter.spread"/>
	<xsl:attribute-set name="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.verso.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.verso.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.verso.blank"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.recto.first"/>
	<xsl:attribute-set name="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.recto.rest"/>
	<xsl:attribute-set name="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.recto.blank"/>
	
	<!-- VERSO BEFORE-->
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.first.static-content.before"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.first.static-content.before"/>

	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.rest.static-content.before"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.rest.static-content.before"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.blank.static-content.before"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.blank.static-content.before"/>



<!-- VERSO AFTER-->
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.first.static-content.after"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.first.static-content.after"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.rest.static-content.after"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.rest.static-content.after"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.blank.static-content.after"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.blank.static-content.after"/>

	<!-- VERSO START-->
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.first.static-content.start"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.first.static-content.start"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.rest.static-content.start"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.rest.static-content.start"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.blank.static-content.start"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.blank.static-content.start"/>

	
	<!-- VERSO END-->
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.first.static-content.end"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.first.static-content.end"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.rest.static-content.end"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.rest.static-content.end"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.verso.blank.static-content.end"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.verso.blank.static-content.end"/>

	<!-- RECTO BEFORE-->
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.first.static-content.before"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.first.static-content.before"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.rest.static-content.before"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.rest.static-content.before"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.blank.static-content.before"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.blank.static-content.before"/>

	<!-- RECTO AFTER-->
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.first.static-content.after"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.first.static-content.after"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.rest.static-content.after"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.rest.static-content.after"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.blank.static-content.after"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.blank.static-content.after"/>

	<!-- RECTO START-->
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.first.static-content.start"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.first.static-content.start"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.rest.static-content.start"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.rest.static-content.start"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.blank.static-content.start"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.blank.static-content.start"/>

	<!-- RECTO END-->
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.first.static-content.end"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.first.static-content.end"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.rest.static-content.end"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.rest.static-content.end"/>
	
	<xsl:attribute-set name="folayouts:atts.fo_static-content.book.mainmatter.recto.blank.static-content.end"/>
	<xsl:attribute-set name="folayouts:atts.fo_block-container.book.mainmatter.recto.blank.static-content.end"/>



	<xsl:template name="folayouts:gen.book.page-masters.mainmatter" visibility="public">
		<xsl:comment select="'FOLAYOUTS MAINMATTER VERSO'"/>
		<xsl:call-template name="folayouts:gen.book.mainmatter.verso"/>
		<xsl:comment select="'FOLAYOUTS MAINMATTER RECTO'"/>
		<xsl:call-template name="folayouts:gen.book.mainmatter.recto"/>
		<xsl:if test="$formatter eq 'antennahouse'">
			<xsl:call-template name="folayouts:gen.book.mainmatter.spread"/>
		</xsl:if>
	</xsl:template>

	<xsl:template name="folayouts:gen.book.mainmatter.verso">
		<fo:simple-page-master xsl:use-attribute-sets="folayouts:atts.fo_simple-page-master.book.mainmatter.verso.first">
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-before.book.mainmatter.verso.first"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-after.book.mainmatter.verso.first"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-start.book.mainmatter.verso.first"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-end.book.mainmatter.verso.first"/>
			<fo:region-body xsl:use-attribute-sets="folayouts:atts.fo_region-body.book.mainmatter.verso.first"/>
		</fo:simple-page-master>
		
		<fo:simple-page-master xsl:use-attribute-sets="folayouts:atts.fo_simple-page-master.book.mainmatter.verso.rest">
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-before.book.mainmatter.verso.rest"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-after.book.mainmatter.verso.rest"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-start.book.mainmatter.verso.rest"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-end.book.mainmatter.verso.rest"/>
			<fo:region-body xsl:use-attribute-sets="folayouts:atts.fo_region-body.book.mainmatter.verso.rest"/>
		</fo:simple-page-master>
		
		<fo:simple-page-master xsl:use-attribute-sets="folayouts:atts.fo_simple-page-master.book.mainmatter.verso.blank">
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-before.book.mainmatter.verso.blank"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-after.book.mainmatter.verso.blank"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-start.book.mainmatter.verso.blank"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-end.book.mainmatter.verso.blank"/>
			<fo:region-body xsl:use-attribute-sets="folayouts:atts.fo_region-body.book.mainmatter.verso.blank"/>
		</fo:simple-page-master>
		
	</xsl:template>
	
	<xsl:template name="folayouts:gen.book.mainmatter.recto">
		<fo:simple-page-master xsl:use-attribute-sets="folayouts:atts.fo_simple-page-master.book.mainmatter.recto.first">
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-before.book.mainmatter.recto.first"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-after.book.mainmatter.recto.first"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-start.book.mainmatter.recto.first"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-end.book.mainmatter.recto.first"/>
			<fo:region-body xsl:use-attribute-sets="folayouts:atts.fo_region-body.book.mainmatter.recto.first"/>
		</fo:simple-page-master>
		
		<fo:simple-page-master xsl:use-attribute-sets="folayouts:atts.fo_simple-page-master.book.mainmatter.recto.rest">
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-before.book.mainmatter.recto.rest"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-after.book.mainmatter.recto.rest"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-start.book.mainmatter.recto.rest"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-end.book.mainmatter.recto.rest"/>
			<fo:region-body xsl:use-attribute-sets="folayouts:atts.fo_region-body.book.mainmatter.recto.rest"/>
		</fo:simple-page-master>
		
		<fo:simple-page-master xsl:use-attribute-sets="folayouts:atts.fo_simple-page-master.book.mainmatter.recto.blank">
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-before.book.mainmatter.recto.blank"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-after.book.mainmatter.recto.blank"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-start.book.mainmatter.recto.blank"/>
			<fo:region-before xsl:use-attribute-sets="folayouts:atts.fo_region-end.book.mainmatter.recto.blank"/>
			<fo:region-body xsl:use-attribute-sets="folayouts:atts.fo_region-body.book.mainmatter.recto.blank"/>
		</fo:simple-page-master>
	</xsl:template>
	<xsl:template name="folayouts:gen.book.mainmatter.spread">
		<axf:spread-page-master xsl:use-attribute-sets="folayouts:atts.axf_spread-page-master.book.mainmatter.spread">
			<axf:spread-region  xsl:use-attribute-sets="folayouts:atts.axf_spread-region.book.mainmatter.spread"/>
		</axf:spread-page-master>
	</xsl:template>
	
	<xsl:template name="folayouts:gen.book.page-sequence-master.mainmatter" visibility="public">
		<xsl:comment select="'MAINMATTER PAGE-SEQUENCE-MASTER'"/>
		<fo:page-sequence-master xsl:use-attribute-sets="folayouts:atts.fo_page-sequence-master.book.mainmatter">
			<xsl:if test="$formatter eq 'antennahouse'">
			<fo:repeatable-page-master-reference  
				xsl:use-attribute-sets="folayouts:atts.fo_repeatable-page-master-reference.book.mainmatter.spread"/>
			</xsl:if>
			<fo:repeatable-page-master-alternatives>
				<fo:conditional-page-master-reference xsl:use-attribute-sets="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.verso.first"/>
				<fo:conditional-page-master-reference xsl:use-attribute-sets="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.recto.first"/>
				<fo:conditional-page-master-reference xsl:use-attribute-sets="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.verso.rest"/>
				<fo:conditional-page-master-reference xsl:use-attribute-sets="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.recto.rest"/>
				<fo:conditional-page-master-reference xsl:use-attribute-sets="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.verso.blank"/>
				<fo:conditional-page-master-reference xsl:use-attribute-sets="folayouts:atts.fo_conditional-page-master-reference.book.mainmatter.recto.blank"/>		
			</fo:repeatable-page-master-alternatives>		
		</fo:page-sequence-master>
	</xsl:template>

<!-- static-contents -->

	<xsl:template name="folayouts:ins.book.mainmatter.verso.static-content.before">
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.rest" as="node()*" required="yes" />
		<xsl:param name="running.content.blank" as="node()*"/>
		
			<fo:static-content 
				xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.first.static-content.before">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.first.static-content.before">
					<xsl:sequence select="if ($running.content.first => fn:exists()) 
						then ($running.content.first) else ($running.content.rest) "/>
				</fo:block-container>
			</fo:static-content>
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.rest.static-content.before">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.rest.static-content.before">
				<xsl:sequence select="$running.content.rest"/>
			</fo:block-container>
		</fo:static-content>
		
		<xsl:if test="$running.content.blank => fn:exists()">	
			<fo:static-content xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.blank.static-content.before">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.blank.static-content.before">
					<xsl:sequence select="$running.content.blank"/>
				</fo:block-container>		
			</fo:static-content>
		</xsl:if>	
	</xsl:template>


	<xsl:template name="folayouts:ins.book.mainmatter.verso.static-content.after">
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.rest" as="node()*" required="yes" />
		<xsl:param name="running.content.blank" as="node()*"/>
		
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.first.static-content.after">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.first.static-content.after">
				<xsl:sequence select="if ($running.content.first => fn:exists()) 
					then ($running.content.first) else ($running.content.rest) "/>
			</fo:block-container>
		</fo:static-content>
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.rest.static-content.after">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.rest.static-content.after">
				<xsl:sequence select="$running.content.rest"/>
			</fo:block-container>
		</fo:static-content>
		
		<xsl:if test="$running.content.blank => fn:exists()">	
			<fo:static-content xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.blank.static-content.after">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.blank.static-content.after">
					<xsl:sequence select="$running.content.blank"/>
				</fo:block-container>		
			</fo:static-content>
		</xsl:if>	
	</xsl:template>
	


	<xsl:template name="folayouts:ins.book.mainmatter.verso.static-content.start">
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.rest" as="node()*" required="yes" />
		<xsl:param name="running.content.blank" as="node()*"/>
		
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.first.static-content.start">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.first.static-content.start">
				<xsl:sequence select="if ($running.content.first => fn:exists()) 
					then ($running.content.first) else ($running.content.rest) "/>
			</fo:block-container>
		</fo:static-content>
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.rest.static-content.start">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.rest.static-content.start">
				<xsl:sequence select="$running.content.rest"/>
			</fo:block-container>
		</fo:static-content>
		
		<xsl:if test="$running.content.blank => fn:exists()">	
			<fo:static-content xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.blank.static-content.start">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.blank.static-content.start">
					<xsl:sequence select="$running.content.blank"/>
				</fo:block-container>		
			</fo:static-content>
		</xsl:if>	
	</xsl:template>


	<xsl:template name="folayouts:ins.book.mainmatter.verso.static-content.end">
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.rest" as="node()*" required="yes" />
		<xsl:param name="running.content.blank" as="node()*"/>
		
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.first.static-content.end">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.first.static-content.end">
				<xsl:sequence select="if ($running.content.first => fn:exists()) 
					then ($running.content.first) else ($running.content.rest) "/>
			</fo:block-container>
		</fo:static-content>
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.rest.static-content.end">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.rest.static-content.end">
				<xsl:sequence select="$running.content.rest"/>
			</fo:block-container>
		</fo:static-content>
		
		<xsl:if test="$running.content.blank => fn:exists()">	
			<fo:static-content xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.verso.blank.static-content.end">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.verso.blank.static-content.end">
					<xsl:sequence select="$running.content.blank"/>
				</fo:block-container>		
			</fo:static-content>
		</xsl:if>	
	</xsl:template>
	
	
	<!-- RECTO -->
	


	<xsl:template name="folayouts:ins.book.mainmatter.recto.static-content.before">
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.rest" as="node()*" required="yes" />
		<xsl:param name="running.content.blank" as="node()*"/>
		
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.first.static-content.before">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.first.static-content.before">
				<xsl:sequence select="if ($running.content.first => fn:exists()) 
					then ($running.content.first) else ($running.content.rest) "/>
			</fo:block-container>
		</fo:static-content>
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.rest.static-content.before">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.rest.static-content.before">
				<xsl:sequence select="$running.content.rest"/>
			</fo:block-container>
		</fo:static-content>
		
		<xsl:if test="$running.content.blank => fn:exists()">	
			<fo:static-content xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.blank.static-content.before">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.blank.static-content.before">
					<xsl:sequence select="$running.content.blank"/>
				</fo:block-container>		
			</fo:static-content>
		</xsl:if>	
	</xsl:template>
	


	<xsl:template name="folayouts:ins.book.mainmatter.recto.static-content.after">
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.rest" as="node()*" required="yes" />
		<xsl:param name="running.content.blank" as="node()*"/>
		
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.first.static-content.after">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.first.static-content.after">
				<xsl:sequence select="if ($running.content.first => fn:exists()) 
					then ($running.content.first) else ($running.content.rest) "/>
			</fo:block-container>
		</fo:static-content>
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.rest.static-content.after">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.rest.static-content.after">
				<xsl:sequence select="$running.content.rest"/>
			</fo:block-container>
		</fo:static-content>
		
		<xsl:if test="$running.content.blank => fn:exists()">	
			<fo:static-content xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.blank.static-content.after">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.blank.static-content.after">
					<xsl:sequence select="$running.content.blank"/>
				</fo:block-container>		
			</fo:static-content>
		</xsl:if>	
	</xsl:template>
	


	<xsl:template name="folayouts:ins.book.mainmatter.recto.static-content.start">
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.rest" as="node()*" required="yes" />
		<xsl:param name="running.content.blank" as="node()*"/>
		
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.first.static-content.start">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.first.static-content.start">
				<xsl:sequence select="if ($running.content.first => fn:exists()) 
					then ($running.content.first) else ($running.content.rest) "/>
			</fo:block-container>
		</fo:static-content>
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.rest.static-content.start">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.rest.static-content.start">
				<xsl:sequence select="$running.content.rest"/>
			</fo:block-container>
		</fo:static-content>
		
		<xsl:if test="$running.content.blank => fn:exists()">	
			<fo:static-content xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.blank.static-content.start">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.blank.static-content.start">
					<xsl:sequence select="$running.content.blank"/>
				</fo:block-container>		
			</fo:static-content>
		</xsl:if>	
	</xsl:template>
	
	
	<xsl:template name="folayouts:ins.book.mainmatter.recto.static-content.end">
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.rest" as="node()*" required="yes" />
		<xsl:param name="running.content.blank" as="node()*"/>
		
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.first.static-content.end">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.first.static-content.end">
				<xsl:sequence select="if ($running.content.first => fn:exists()) 
					then ($running.content.first) else ($running.content.rest) "/>
			</fo:block-container>
		</fo:static-content>
		<fo:static-content 
			xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.rest.static-content.end">
			<fo:block-container 
				xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.rest.static-content.end">
				<xsl:sequence select="$running.content.rest"/>
			</fo:block-container>
		</fo:static-content>
		
		<xsl:if test="$running.content.blank => fn:exists()">	
			<fo:static-content xsl:use-attribute-sets="folayouts:atts.fo_static-content.book.mainmatter.recto.blank.static-content.end">
				<fo:block-container 
					xsl:use-attribute-sets="folayouts:atts.fo_block-container.book.mainmatter.recto.blank.static-content.end">
					<xsl:sequence select="$running.content.blank"/>
				</fo:block-container>		
			</fo:static-content>
		</xsl:if>	
	</xsl:template>
	
	<xsl:template name="folayouts.ins.book.mainmatter.static-content" as="element(fo:static-content)*" visibility="public">
		<xsl:param name="target.verso.or.recto" as="xs:string" required="yes"/>
		<xsl:param name="target.region" as="xs:string" required="yes"/>
		<xsl:param name="running.content.rest" as="node()*" required="yes"/>
		<xsl:param name="running.content.first" as="node()*" />
		<xsl:param name="running.content.blank" as="node()*" />
		
		<xsl:choose>
			<xsl:when test="$target.verso.or.recto eq 'recto'">
				<xsl:call-template name="folayouts.ins.book.mainmatter.recto.static-content">
					<xsl:with-param name="target.region" select="$target.region"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>			
				</xsl:call-template>
			</xsl:when>
			
			<xsl:when test="$target.verso.or.recto eq 'verso'">
				<xsl:call-template name="folayouts.ins.book.mainmatter.verso.static-content">
					<xsl:with-param name="target.region" select="$target.region"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>			
				</xsl:call-template>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	
	
	<!--VERSO -->
	<xsl:template name="folayouts.ins.book.mainmatter.verso.static-content" as="element(fo:static-content)*" visibility="public">
		<xsl:param name="target.region" as="xs:string" required="yes"/> 
		<xsl:param name="running.content.rest"  as="node()*" required="yes" />
		<xsl:param name="running.content.first"  as="node()*" />
		<xsl:param name="running.content.blank"  as="node()*" />
		
		<xsl:choose>
			<xsl:when test="$target.region eq 'before'">
				<xsl:call-template name="folayouts:ins.book.mainmatter.verso.static-content.before">
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
				</xsl:call-template>			
			</xsl:when>
			<xsl:when test="$target.region eq 'after'">
				<xsl:call-template name="folayouts:ins.book.mainmatter.verso.static-content.after">
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test="$target.region eq 'start'">
				<xsl:call-template name="folayouts:ins.book.mainmatter.verso.static-content.start">
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
				</xsl:call-template>
			</xsl:when>
			
			<xsl:when test="$target.region eq 'end'">
				<xsl:call-template name="folayouts:ins.book.mainmatter.verso.static-content.end">
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<!--TODO: ERROR HANDLING-->
				<xsl:message terminate="yes"></xsl:message>
			</xsl:otherwise>
		</xsl:choose>	
	</xsl:template>


<!--RECTO -->
	<xsl:template name="folayouts.ins.book.mainmatter.recto.static-content" as="element(fo:static-content)*" visibility="public">
		<xsl:param name="target.region" as="xs:string" required="yes"/> 
		<xsl:param name="running.content.rest"  as="node()*" required="yes" />
		<xsl:param name="running.content.first"  as="node()*" />
		<xsl:param name="running.content.blank"  as="node()*" />
		
		<xsl:choose>
			<xsl:when test="$target.region eq 'before'">
				<xsl:call-template name="folayouts:ins.book.mainmatter.recto.static-content.before">
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
				</xsl:call-template>			
			</xsl:when>
			<xsl:when test="$target.region eq 'after'">
				<xsl:call-template name="folayouts:ins.book.mainmatter.recto.static-content.after">
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test="$target.region eq 'start'">
				<xsl:call-template name="folayouts:ins.book.mainmatter.recto.static-content.start">
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
				</xsl:call-template>
			</xsl:when>
			
			<xsl:when test="$target.region eq 'end'">
				<xsl:call-template name="folayouts:ins.book.mainmatter.recto.static-content.end">
					<xsl:with-param name="running.content.first" select="$running.content.first"/>
					<xsl:with-param name="running.content.blank" select="$running.content.blank"/>
					<xsl:with-param name="running.content.rest" select="$running.content.rest"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<!--TODO: ERROR HANDLING-->
				<xsl:message terminate="yes"></xsl:message>
			</xsl:otherwise>
		</xsl:choose>	
	</xsl:template>

</xsl:package>
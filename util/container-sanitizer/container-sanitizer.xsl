<?xml version="1.0" encoding="UTF-8"?>
<xsl:package exclude-result-prefixes="xs fn foutil" version="3.0"
	xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:foutil="urn:dddoooccc.org:ns:xslt:pkg:fo:util"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	name="urn:dddoooccc.org:ns:xslt:pkg:fo:util:container-sanitizer"
	package-version="1.0.0"
	>
	<xsl:expose component="template" names="foutil:proc.container-sanitizer" visibility="public"/>
	<xsl:expose component="attribute-set" names="foutil:atts.fo_block.sanitized_block" visibility="public"/>
	<!--
	-->
	<xsl:variable as="xs:string+" name="foutil:var.fo_inline_level_element_names"
		select="'inline', 'inline-container', 'marker', 'wrapper', 'ruby' (: antenna house extension :)" />

	<!--
		block levelとinlineレベルを許容するコンテナ構造に対し、inlineレベルのものについては
		fo:blockで囲い直すtemplate
	-->
	<xsl:attribute-set name="foutil:atts.fo_block.sanitized_block" visibility="public"/>
	
	<xsl:template as="element()*" name="foutil:proc.container-sanitizer" visibility="public">
		<xsl:param as="node()*" name="fo_elements" required="yes" />
		<xsl:iterate select="$fo_elements">
			<xsl:param name="inlines" as="node()*" />
			<xsl:on-completion>
				<xsl:if test="not($inlines => fn:empty())">
					<fo:block xsl:use-attribute-sets="foutil:atts.fo_block.sanitized_block">
						<xsl:sequence select="$inlines" />
					</fo:block>
				</xsl:if>
			</xsl:on-completion>
			<!--block level -->
			<xsl:if test="foutil:func.is.fo_inline_level_or_text(.) => not()">
				<!-- それまでのinlineレベルをまとめてblockで囲う -->
				<xsl:if test="not($inlines => fn:empty())">
					<fo:block xsl:use-attribute-sets="foutil:atts.fo_block.sanitized_block">
						<xsl:sequence select="$inlines" />
					</fo:block>
				</xsl:if>
				<xsl:sequence select="." />
			</xsl:if>
			<xsl:next-iteration>
				<xsl:with-param name="inlines" select="
						if (foutil:func.is.fo_inline_level_or_text(.) => not()) then
							()
						else
							($inlines, .)" />
			</xsl:next-iteration>

		</xsl:iterate>
	</xsl:template>

	<xsl:function as="xs:boolean" name="foutil:func.is.fo_inline_level_or_text">
		<xsl:param as="node()" name="node" />
		<xsl:sequence select="foutil:func.is.fo_inline_level($node) or ($node instance of text())" />
	</xsl:function>

	<xsl:function as="xs:boolean" name="foutil:func.is.fo_inline_level">
		<xsl:param as="node()" name="element" />
		<xsl:sequence select="
				let $fo := local-name($element)
				return
					some $tok in $foutil:var.fo_inline_level_element_names
						satisfies ($tok eq $fo)" />
	</xsl:function>
</xsl:package>
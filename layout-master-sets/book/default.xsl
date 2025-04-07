<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Format" version="3.0"
xmlns:folayouts="urn:dddoooccc.org:ns:xslt:pkg:fo:layout-master-sets"
exclude-result-prefixes="xs fn folayouts"
package-version="0.0.1"
name="urn:dddoooccc.org:ns:xslt:pkg:fo:layout-master-sets:book:default"
>

<xsl:param name="folayouts:var.book.mainmatter.verso.first.master-name" as="xs:string"
select="'PAGE-MASTER_MAINMATTER_VERSO_FIRST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.first.before.region-name" as="xs:string"
select="'HEADER_MAINMATTER_VERSO_FIRST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.first.after.region-name" as="xs:string"
select="'FOOTER_MAINMATTER_VERSO_FIRST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.first.start.region-name" as="xs:string"
select="'FOREEDGE_MAINMATTER_VERSO_FIRST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.first.end.region-name" as="xs:string"
select="'BACKMARGIN_MAINMATTER_VERSO_FIRST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.first.body.region-name" as="xs:string"
select="'xsl-region-body'"/>


<xsl:param name="folayouts:var.book.mainmatter.verso.rest.master-name" as="xs:string"
select="'PAGE-MASTER_MAINMATTER_VERSO_REST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.rest.before.region-name" as="xs:string"
select="'HEADER_MAINMATTER_VERSO_REST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.rest.after.region-name" as="xs:string"
select="'FOOTER_MAINMATTER_VERSO_REST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.rest.start.region-name" as="xs:string"
select="'FOREEDGE_MAINMATTER_VERSO_REST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.rest.end.region-name" as="xs:string"
select="'BACKMARGIN_MAINMATTER_VERSO_REST'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.rest.body.region-name" as="xs:string"
select="'xsl-region-body'"/>


<xsl:param name="folayouts:var.book.mainmatter.verso.blank.master-name" as="xs:string"
select="'PAGE-MASTER_MAINMATTER_VERSO_BLANK'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.blank.before.region-name" as="xs:string"
select="'HEADER_MAINMATTER_VERSO_BLANK'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.blank.after.region-name" as="xs:string"
select="'FOOTER_MAINMATTER_VERSO_BLANK'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.blank.start.region-name" as="xs:string"
select="'FOREEDGE_MAINMATTER_VERSO_BLANK'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.blank.end.region-name" as="xs:string"
select="'BACKMARGIN_MAINMATTER_VERSO_BLANK'"/>
<xsl:param name="folayouts:var.book.mainmatter.verso.blank.body.region-name" as="xs:string"
select="'xsl-region-body'"/>

<xsl:param name="folayouts:var.book.mainmatter.recto.first.master-name" as="xs:string"
select="'PAGE-MASTER_MAINMATTER_RECTO_FIRST'"/>

<xsl:param name="folayouts:var.book.mainmatter.recto.rest.master-name" as="xs:string"
select="'PAGE-MASTER_MAINMATTER_RECTO_REST'"/>
<xsl:param name="folayouts:var.book.mainmatter.recto.blank.master-name" as="xs:string"
select="'PAGE-MASTER_MAINMATTER_RECTO_BLANK'"/>



<xsl:param name="folayouts:var.book.extent.before" select="'2cm'" />
<xsl:param name="folayouts:var.book.extent.after" select="'3cm'" />
<xsl:param name="folayouts:var.book.extent.outside" select="'3cm'" />
<xsl:param name="folayouts:var.book.extent.inside" select="'2cm'" />



<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.common">
    <xsl:attribute name="size" select="'A4'"/>
    <xsl:attribute name="margin" select="'0pt'"/>
</xsl:attribute-set>


<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.verso.common" 
    use-attribute-sets="folayouts:atts.fo_simple-page-master.book.common" />
<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.verso.first.common"
use-attribute-sets="folayouts:atts.fo_simple-page-master.book.verso.common"/>
<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.verso.rest.common"
use-attribute-sets="folayouts:atts.fo_simple-page-master.book.verso.common"/>
<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.verso.blank.common"
use-attribute-sets="folayouts:atts.fo_simple-page-master.book.verso.common"/>

<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.mainmatter.recto.common" 
    use-attribute-sets="folayouts:atts.fo_simple-page-master.book.common" />

<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.mainmatter.common" 
    use-attribute-sets="folayouts:atts.fo_simple-page-master.book.common" />

<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.frontmatter.common" 
    use-attribute-sets="folayouts:atts.fo_simple-page-master.book.common" />
<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.backmatter.common" 
    use-attribute-sets="folayouts:atts.fo_simple-page-master.book.common" />
<xsl:attribute-set name="folayouts:atts.fo_simple-page-master.book.cover.common" 
    use-attribute-sets="folayouts:atts.fo_simple-page-master.book.common" />


<xsl:attribute-set name="folayouts:atts.fo_region-body.book.verso.common">
    <xsl:attribute name="margin-top" select="$folayouts:var.book.extent.before"/>
    <xsl:attribute name="margin-bottom" select="$folayouts:var.book.extent.after"/>
    <xsl:attribute name="margin-left" select="$folayouts:var.book.extent.outside"/>
    <xsl:attribute name="margin-right" select="$folayouts:var.book.extent.inside"/>
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_region-body.book.recto.common">
    <xsl:attribute name="margin-top" select="$folayouts:var.book.extent.before"/>
    <xsl:attribute name="margin-bottom" select="$folayouts:var.book.extent.after"/>
    <xsl:attribute name="margin-left" select="$folayouts:var.book.extent.inside"/>
    <xsl:attribute name="margin-right" select="$folayouts:var.book.extent.outside"/>
</xsl:attribute-set>


<xsl:attribute-set name="folayouts:atts.fo_region-before.book.common">
    <xsl:attribute name="extent" select="$folayouts:var.book.extent.before"/>    
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_region-after.book.common">
    <xsl:attribute name="extent" select="$folayouts:var.book.extent.after"/>    
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_region-start.book.verso.common">
    <xsl:attribute name="extent" select="$folayouts:var.book.extent.outside"/>    
</xsl:attribute-set>
<xsl:attribute-set name="folayouts:atts.fo_region-end.book.verso.common">
    <xsl:attribute name="extent" select="$folayouts:var.book.extent.inside"/>    
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_region-start.book.recto.common">
    <xsl:attribute name="extent" select="$folayouts:var.book.extent.inside"/>    
</xsl:attribute-set>
<xsl:attribute-set name="folayouts:atts.fo_region-end.book.recto.common">
    <xsl:attribute name="extent" select="$folayouts:var.book.extent.outside"/>    
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_conditional-page-reference.verso.first.common">
    <xsl:attribute name="odd-or-even" select="'even'"/>
    <xsl:attribute name="blank-or-not-blank" select="'not-blank'"/>
    <xsl:attribute name="page-position" select="'first'" />   
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_conditional-page-reference.verso.rest.common">
    <xsl:attribute name="odd-or-even" select="'even'"/>
    <xsl:attribute name="blank-or-not-blank" select="'not-blank'"/>
    <xsl:attribute name="page-position" select="'rest'" />   
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_conditional-page-reference.verso.blank.common">
    <xsl:attribute name="odd-or-even" select="'even'"/>
    <xsl:attribute name="blank-or-not-blank" select="'blank'"/>
    <xsl:attribute name="page-position" select="'any'" />   
</xsl:attribute-set>


<xsl:attribute-set name="folayouts:atts.fo_conditional-page-reference.recto.first.common">
    <xsl:attribute name="odd-or-even" select="'recto'"/>
    <xsl:attribute name="blank-or-not-blank" select="'not-blank'"/>
    <xsl:attribute name="page-position" select="'first'" />   
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_conditional-page-reference.recto.rest.common">
    <xsl:attribute name="odd-or-even" select="'odd'"/>
    <xsl:attribute name="blank-or-not-blank" select="'not-blank'"/>
    <xsl:attribute name="page-position" select="'rest'" />   
</xsl:attribute-set>

<xsl:attribute-set name="folayouts:atts.fo_conditional-page-reference.recto.blank.common">
    <xsl:attribute name="odd-or-even" select="'odd'"/>
    <xsl:attribute name="blank-or-not-blank" select="'blank'"/>
    <xsl:attribute name="page-position" select="'any'" />   
</xsl:attribute-set>


<xsl:use-package name="urn:dddoooccc.org:ns:xslt:pkg:fo:layout-master-sets:book" 
package-version="*">
    <xsl:accept component="template" names="folayouts:gen.layout-master-sets" visibility="public"/>
    <xsl:override>
        <xsl:attribute-set name="folayouts:atts.fo_simple-page-master.mainmatter.verso.first" 
            use-attribute-sets="folayouts:atts.fo_simple-page-master.book.verso.first.common">
            <xsl:attribute name="master-name" select="$folayouts:var.book.mainmatter.verso.first.master-name"/>
        </xsl:attribute-set>
    </xsl:override>
</xsl:use-package>


</xsl:package>
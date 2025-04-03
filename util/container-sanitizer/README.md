# urn:dddoooccc.org:ns:xslt:pkg:fo:util:container-sanitizer

This package provides a template to wrap `fo`'s inline-level and text contents by `fo:block`.

In `fo:block-container`, inline-level Formatting-Objects or text are not allowed. 
In the other hand, several XML Document types allow to place inline-level or block-level content in their container-like structure;
such as list-item or table-cell.


## usage

```xslt

<xsl:use-package name="urn:dddoooccc.org:ns:xslt:pkg:fo:util:container-sanitizer">
  <xsl:accept component="template" names="foutil:proc.container-sanitizer"/>
</xsl:use-package>

<xsl:template ...>
  <fo:table-cell><!-- in table-cell, needed block-level objects -->
    <xsl:call-template name="foutil:proc.container-sanitizer">
      <xsl:with-param name="fo_elements">
         <xsl:apply-templates /><!-- fo:block, fo:inline, ... -->
      </xsl:with-param>
    </xsl:call-template>
  </fo:table-cell>
</xsl:template>
```

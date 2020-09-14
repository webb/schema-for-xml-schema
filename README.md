# XML Schema for XML Schema

This has two different XML schemas for XML Schema:

- strict: doesn't allow anything other than what's explicitly spelled out in the spec.
    - Uses XML Catalog `xml-catalog.xml`
- regular: allows random (non-XS) attributes on XS elements.
    - Uses XML Catalog `xml-catalog-strict.xml`
    
Both of these bring in the DTD for XML Schema.

This also has Schematron for the XML Schema Instance vocabulary (`xsi`):

- `xmlschema-instance.sch`: the raw Schematron
- `xmlschema-instance.sch.xsl`: Schematron compiled into XSLT

To update files:

`$ ./configure`
`$ make`

If you want to dump all the existing derived and downloadable files:

`$ make purge`

If you modify `configure.ac` and want to rebuild `configure`:

`$ make -f configure.mk`


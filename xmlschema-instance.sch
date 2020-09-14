<?xml version="1.0" encoding="US-ASCII"?>
<schema 
   queryBinding="xslt2"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://purl.oclc.org/dsdl/schematron">

  <title>Assertions about the XML Schema Instance vocabulary.</title>

  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
  <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>

  <pattern>
    <rule context="*[@xsi:schemaLocation]">
      <assert test="every $location 
                    in tokenize(normalize-space(@xsi:schemaLocation), ' ')[(position() mod 2) = 0]
                    satisfies (doc-available(resolve-uri($location, base-uri(.)))
                    and doc(resolve-uri($location, base-uri(.)))/self::document-node(element(xs:schema)))"
              >@xsi:schemaLocation has location that does not resolve to an XML Schema document (schemaLocation=&quot;<value-of select="@xsi:schemaLocation"/>&quot;)</assert>
    </rule>
  </pattern>

</schema>

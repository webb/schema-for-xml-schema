<?xml version="1.0" encoding="US-ASCII"?>
<schema 
   queryBinding="xslt2"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://purl.oclc.org/dsdl/schematron">

  <title>Assertions about XML Schemas</title>

  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>

  <pattern>
    <rule context="xs:*[@schemaLocation]">
      <let name="location" value="resolve-uri(@schemaLocation, base-uri(.))"/>
      <assert test="doc-available($location)
                    and doc($location)/self::document-node(element(xs:schema))"
              >xs:*/@schemaLocation does not resolve to XML Schema document (location=&quot;<value-of select="$location"/>)</assert>
    </rule>
  </pattern>

</schema>

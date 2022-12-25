<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:address="urn:hl7-ru:address"
                xmlns:error="https://doi.org/10.5281/zenodo.1495494#error"
                xmlns:fias="urn:hl7-ru:fias"
                xmlns:identity="urn:hl7-ru:identity"
                xmlns:medService="urn:hl7-ru:medService"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                xmlns:schxslt="https://doi.org/10.5281/zenodo.1495494"
                xmlns:schxslt-api="https://doi.org/10.5281/zenodo.1495494#api"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
   <rdf:Description xmlns:dc="http://purl.org/dc/elements/1.1/"
                     xmlns:dct="http://purl.org/dc/terms/"
                     xmlns:skos="http://www.w3.org/2004/02/skos/core#">
      <dct:creator>
         <dct:Agent>
            <skos:prefLabel>SchXslt/1.9.1 SAXON/HE 11.4</skos:prefLabel>
            <schxslt.compile.typed-variables xmlns="https://doi.org/10.5281/zenodo.1495494#">true</schxslt.compile.typed-variables>
         </dct:Agent>
      </dct:creator>
      <dct:created>2022-09-21T22:43:06.02818104+08:00</dct:created>
   </rdf:Description>
   <xsl:output indent="yes"/>
   <xsl:template match="root()">
      <xsl:variable name="metadata" as="element()?">
         <svrl:metadata xmlns:dct="http://purl.org/dc/terms/"
                         xmlns:skos="http://www.w3.org/2004/02/skos/core#"
                         xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
            <dct:creator>
               <dct:Agent>
                  <skos:prefLabel>
                     <xsl:variable name="prefix"
                                    as="xs:string?"
                                    select="if (doc-available('')) then in-scope-prefixes(document('')/*[1])[namespace-uri-for-prefix(., document('')/*[1]) eq 'http://www.w3.org/1999/XSL/Transform'][1] else ()"/>
                     <xsl:choose>
                        <xsl:when test="empty($prefix)">Unknown</xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of separator="/"
                                          select="(system-property(concat($prefix, ':product-name')), system-property(concat($prefix,':product-version')))"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </skos:prefLabel>
               </dct:Agent>
            </dct:creator>
            <dct:created>
               <xsl:value-of select="current-dateTime()"/>
            </dct:created>
            <dct:source>
               <rdf:Description xmlns:dc="http://purl.org/dc/elements/1.1/">
                  <dct:creator>
                     <dct:Agent>
                        <skos:prefLabel>SchXslt/1.9.1 SAXON/HE 11.4</skos:prefLabel>
                        <schxslt.compile.typed-variables xmlns="https://doi.org/10.5281/zenodo.1495494#">true</schxslt.compile.typed-variables>
                     </dct:Agent>
                  </dct:creator>
                  <dct:created>2022-09-21T22:43:06.02818104+08:00</dct:created>
               </rdf:Description>
            </dct:source>
         </svrl:metadata>
      </xsl:variable>
      <xsl:variable name="report" as="element(schxslt:report)">
         <schxslt:report>
            <xsl:call-template name="d967e23"/>
         </schxslt:report>
      </xsl:variable>
      <xsl:variable name="schxslt:report" as="node()*">
         <xsl:sequence select="$metadata"/>
         <xsl:for-each select="$report/schxslt:document">
            <xsl:for-each select="schxslt:pattern">
               <xsl:sequence select="node()"/>
               <xsl:sequence select="../schxslt:rule[@pattern = current()/@id]/node()"/>
            </xsl:for-each>
         </xsl:for-each>
      </xsl:variable>
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
         <svrl:ns-prefix-in-attribute-values prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
         <svrl:ns-prefix-in-attribute-values prefix="identity" uri="urn:hl7-ru:identity"/>
         <svrl:ns-prefix-in-attribute-values prefix="address" uri="urn:hl7-ru:address"/>
         <svrl:ns-prefix-in-attribute-values prefix="medService" uri="urn:hl7-ru:medService"/>
         <svrl:ns-prefix-in-attribute-values prefix="fias" uri="urn:hl7-ru:fias"/>
         <xsl:sequence select="$schxslt:report"/>
      </svrl:schematron-output>
   </xsl:template>
   <xsl:template match="text() | @*" mode="#all" priority="-10"/>
   <xsl:template match="/" mode="#all" priority="-10">
      <xsl:apply-templates mode="#current" select="node()"/>
   </xsl:template>
   <xsl:template match="*" mode="#all" priority="-10">
      <xsl:apply-templates mode="#current" select="@*"/>
      <xsl:apply-templates mode="#current" select="node()"/>
   </xsl:template>
   <xsl:template name="d967e23">
      <schxslt:document>
         <schxslt:pattern id="d967e23">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e60">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e74">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e92">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e103">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e120">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e141">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e158">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e178">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e205">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e222">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e239">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e266">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e283">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e303">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e327">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e344">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e399">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e462">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e499">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e547">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e559">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e644">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e680">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e756">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e804">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e845">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e877">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e904">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e992">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1039">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1090">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1099">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1134">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1143">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1161">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1170">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1191">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1206">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1222">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1237">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1252">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1261">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1270">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1288">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1298">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1313">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1348">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1359">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1398">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1436">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1474">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1513">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1551">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1601">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1652">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1702">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1761">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1812">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1878">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1928">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e1982">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e2032">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e2083">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e2134">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e2283">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e2333">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d967e2493">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <xsl:apply-templates mode="d967e23" select="root()"/>
      </schxslt:document>
   </xsl:template>
   <xsl:template match="//addr[not(@nullFlavor)]" priority="227" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e23']">
            <schxslt:rule pattern="d967e23">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//addr[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//addr[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e23">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//addr[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(streetAddressLine)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine)=1</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr должен иметь 1 элемент streetAddressLine.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode)=1</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr должен иметь 1 элемент address:stateCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@xsi:type='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@xsi:type='CD'</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode)=1</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr должен иметь 1 элемент address:stateCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@displayName!=''</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode)=1</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr должен иметь 1 элемент postalCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address)=1</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr должен иметь 1 элемент fias:Address.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e23')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//addr[fias:Address[not(@nullFlavor)]]"
                  priority="226"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e60']">
            <schxslt:rule pattern="d967e60">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//addr[fias:Address[not(@nullFlavor)]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//addr[fias:Address[not(@nullFlavor)]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e60">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//addr[fias:Address[not(@nullFlavor)]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:Address/fias:AOGUID)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address/fias:AOGUID)=1</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr/fias:Address должен иметь 1 элемент fias:AOGUID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address/fias:HOUSEGUID)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address/fias:HOUSEGUID)=1</xsl:attribute>
                     <svrl:text>У1-3. Элемент addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e60')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//telecom[not(@nullFlavor)]" priority="225" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e74']">
            <schxslt:rule pattern="d967e74">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//telecom[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//telecom[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e74">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//telecom[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')</xsl:attribute>
                     <svrl:text>У1-4. Все элементы //telecom со схемой "tel:" должны соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра должна остаться в номере телефона после удаления всех разделителей.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e74')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//id[not(@nullFlavor)]" priority="224" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e92']">
            <schxslt:rule pattern="d967e92">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//id[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//id[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e92">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//id[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')</xsl:attribute>
                     <svrl:text>У1-8. Элемент id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e92')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="223" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e103']">
            <schxslt:rule pattern="d967e103">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e103">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(realmCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(realmCode)=1</xsl:attribute>
                     <svrl:text>У1-9. Элемент ClinicalDocument должен иметь 1 элемент realmCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e103')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/realmCode" priority="222" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e103']">
            <schxslt:rule pattern="d967e103">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/realmCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/realmCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e103">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/realmCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@code='RU')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='RU'</xsl:attribute>
                     <svrl:text>У1-9. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e103')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="221" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e120']">
            <schxslt:rule pattern="d967e120">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e120">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(typeId)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(typeId)=1</xsl:attribute>
                     <svrl:text>У1-10. Элемент ClinicalDocument должен иметь 1 элемент typeId.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e120')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/typeId" priority="220" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e120']">
            <schxslt:rule pattern="d967e120">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/typeId" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/typeId</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e120">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/typeId</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root='2.16.840.1.113883.1.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root='2.16.840.1.113883.1.3'</xsl:attribute>
                     <svrl:text>У1-10. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension='POCD_MT000040')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension='POCD_MT000040'</xsl:attribute>
                     <svrl:text>У1-10. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_MT000040'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e120')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="219" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e141']">
            <schxslt:rule pattern="d967e141">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e141">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(templateId)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(templateId)=1</xsl:attribute>
                     <svrl:text>У1-11. Элемент ClinicalDocument должен иметь 1 элемент templateId.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e141')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/templateId" priority="218" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e141']">
            <schxslt:rule pattern="d967e141">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/templateId" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/templateId</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e141">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/templateId</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root='1.2.643.5.1.13.13.14.49.9.1')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root='1.2.643.5.1.13.13.14.49.9.1'</xsl:attribute>
                     <svrl:text>У1-11. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.14.49.9.1'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e141')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="217" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e158']">
            <schxslt:rule pattern="d967e158">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e158">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У1-12. Элемент ClinicalDocument должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e158')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/id" priority="216" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e158']">
            <schxslt:rule pattern="d967e158">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/id" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/id</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e158">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/id</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')</xsl:attribute>
                     <svrl:text>У1-12. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-12. Элемент ClinicalDocument/id должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e158')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="215" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e178']">
            <schxslt:rule pattern="d967e178">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e178">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У1-13. Элемент ClinicalDocument должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e178')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/code" priority="214" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e178']">
            <schxslt:rule pattern="d967e178">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e178">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@code='49')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='49'</xsl:attribute>
                     <svrl:text>У1-13. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '49'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']</xsl:attribute>
                     <svrl:text>У1-13. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-13. Элемент ClinicalDocument/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У1-13. Элемент ClinicalDocument/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e178')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="213" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e205']">
            <schxslt:rule pattern="d967e205">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e205">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(title)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(title)=1</xsl:attribute>
                     <svrl:text>У1-14. Элемент ClinicalDocument должен иметь 1 элемент title.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e205')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/title" priority="212" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e205']">
            <schxslt:rule pattern="d967e205">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/title" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/title</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e205">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/title</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(.!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">.!=''</xsl:attribute>
                     <svrl:text>У1-14. Элемент ClinicalDocument/title должен иметь не пустое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e205')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="211" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e222']">
            <schxslt:rule pattern="d967e222">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e222">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(effectiveTime)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(effectiveTime)=1</xsl:attribute>
                     <svrl:text>У1-15. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e222')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/effectiveTime"
                  priority="210"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e222']">
            <schxslt:rule pattern="d967e222">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/effectiveTime" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/effectiveTime</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e222">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/effectiveTime</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>У1-15. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e222')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="209" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e239']">
            <schxslt:rule pattern="d967e239">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e239">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(confidentialityCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(confidentialityCode)=1</xsl:attribute>
                     <svrl:text>У1-16. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e239')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/confidentialityCode"
                  priority="208"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e239']">
            <schxslt:rule pattern="d967e239">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/confidentialityCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/confidentialityCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e239">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/confidentialityCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']</xsl:attribute>
                     <svrl:text>У1-16. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У1-16. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-16. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У1-16. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e239')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="207" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e266']">
            <schxslt:rule pattern="d967e266">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e266">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(languageCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(languageCode)=1</xsl:attribute>
                     <svrl:text>У1-17. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e266')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/languageCode" priority="206" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e266']">
            <schxslt:rule pattern="d967e266">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/languageCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/languageCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e266">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/languageCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@code='ru-RU')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='ru-RU'</xsl:attribute>
                     <svrl:text>У1-17. Элемент ClinicalDocument/languageCode должен иметь значение атрибута @code равное 'ru-RU'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e266')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="205" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e283']">
            <schxslt:rule pattern="d967e283">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e283">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У1-18. Элемент ClinicalDocument должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e283')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/id" priority="204" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e283']">
            <schxslt:rule pattern="d967e283">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/id" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/id</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e283">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/id</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')</xsl:attribute>
                     <svrl:text>У1-18. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-18. Элемент ClinicalDocument/id должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e283')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="203" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e303']">
            <schxslt:rule pattern="d967e303">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e303">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(setId)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(setId)=1</xsl:attribute>
                     <svrl:text>У1-19. Элемент ClinicalDocument должен иметь 1 элемент setId.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e303')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/setId" priority="202" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e303']">
            <schxslt:rule pattern="d967e303">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/setId" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/setId</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e303">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/setId</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.50$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.50$')</xsl:attribute>
                     <svrl:text>У1-19. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="matches(@root,../id/@root)">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,../id/@root)</xsl:attribute>
                     <svrl:text>У1-19. Значение атрибута ClinicalDocument/setId/@root должно отличаться от значения атрибута ClinicalDocument/id/@root.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-19. Элемент ClinicalDocument/setId должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e303')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="201" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e327']">
            <schxslt:rule pattern="d967e327">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e327">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(versionNumber)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(versionNumber)=1</xsl:attribute>
                     <svrl:text>У1-20. Элемент ClinicalDocument должен иметь 1 элемент setId.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e327')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/versionNumber"
                  priority="200"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e327']">
            <schxslt:rule pattern="d967e327">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/versionNumber" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/versionNumber</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e327">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/versionNumber</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value!=''</xsl:attribute>
                     <svrl:text>У1-20. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e327')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="199" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e344']">
            <schxslt:rule pattern="d967e344">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e344">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(recordTarget)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(recordTarget)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument должен иметь 1 элемент recordTarget.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e344')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget" priority="198" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e344']">
            <schxslt:rule pattern="d967e344">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e344">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(patientRole)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(patientRole)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e344')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole"
                  priority="197"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e344']">
            <schxslt:rule pattern="d967e344">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e344">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=2)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=2</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 2 элемента id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IdentityDoc)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDoc)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:IdentityDoc.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:InsurancePolicy)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:InsurancePolicy)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:InsurancePolicy.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr)=[1,2])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr)=[1,2]</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 или 2 элемента addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(patient)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(patient)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(providerOrganization)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(providerOrganization)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e344')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/id[1]"
                  priority="196"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e344']">
            <schxslt:rule pattern="d967e344">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/id[1]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[1]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e344">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[1]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$')</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов пациентов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e344')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/id[2]"
                  priority="195"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e344']">
            <schxslt:rule pattern="d967e344">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/id[2]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[2]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e344">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[2]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root='1.2.643.100.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root='1.2.643.100.3'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e344')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]"
                  priority="194"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e399']">
            <schxslt:rule pattern="d967e399">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e399">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:IdentityDoc/identity:IdentityCardType)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDoc/identity:IdentityCardType)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IdentityCardType/@xsi:type='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IdentityCardType/@xsi:type='CD'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @xsi:type равное 'CD'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IdentityCardType/@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IdentityCardType/@code!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IdentityCardType/@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IdentityCardType/@displayName!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IdentityDoc/identity:Series)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDoc/identity:Series)&lt;=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь не более 1 элемента identity:Series.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:IdentityDoc/identity:Series) or identity:IdentityDoc/identity:Series/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:IdentityDoc/identity:Series) or identity:IdentityDoc/identity:Series/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IdentityDoc/identity:Number)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDoc/identity:Number)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Number.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:Number/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:Number/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IdentityDoc/identity:IssueOrgName)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDoc/identity:IssueOrgName)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IdentityDoc/identity:IssueOrgCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDoc/identity:IssueOrgCode)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IdentityDoc/identity:IssueDate)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDoc/identity:IssueDate)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IssueDate/@xsi:type='TS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc/identity:IssueDate/@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc/identity:IssueDate/@value!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e399')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy]"
                  priority="193"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e462']">
            <schxslt:rule pattern="d967e462">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e462">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:InsurancePolicy/identity:InsurancePolicyType)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:InsurancePolicy/identity:InsurancePolicyType)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:InsuracePolicyType.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:InsurancePolicy/identity:InsurancePolicyType/@xsi:type='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:InsurancePolicy/identity:InsurancePolicyType/@xsi:type='CD'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь значение атрибута @xsi:type равное 'CD'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicyType/identity:InsuracePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:InsurancePolicy/identity:InsurancePolicyType/@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:InsurancePolicy/identity:InsurancePolicyType/@code!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:InsurancePolicy/identity:Series)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:InsurancePolicy/identity:Series)&lt;=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь не более 1 элемента identity:Series.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:InsurancePolicy/identity:Series) or identity:InsurancePolicy/identity:Series/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:InsurancePolicy/identity:Series) or identity:InsurancePolicy/identity:Series/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:InsurancePolicy/identity:Number)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:InsurancePolicy/identity:Number)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:Number.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:InsurancePolicy/identity:Number/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:InsurancePolicy/identity:Number/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e462')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]"
                  priority="192"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e499']">
            <schxslt:rule pattern="d967e499">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e499">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(address:Type)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:Type)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент address:Type.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:Type/@xsi:type='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:Type/@xsi:type='CD'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:Type/@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:Type/@displayName!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:Type/@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:Type/@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент streetAddressLine.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент address:stateCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@xsi:type='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@xsi:type='CD'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(address:stateCode/@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">address:stateCode/@displayName!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент fias:Address.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e499')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr[fias:Address[not(@nullFlavor)]]"
                  priority="191"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e547']">
            <schxslt:rule pattern="d967e547">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr[fias:Address[not(@nullFlavor)]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr[fias:Address[not(@nullFlavor)]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e547">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr[fias:Address[not(@nullFlavor)]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:Address/fias:AOGUID)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address/fias:AOGUID)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/fias:Address должен иметь 1 элемент fias:AOGUID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address/fias:HOUSEGUID)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address/fias:HOUSEGUID)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e547')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient"
                  priority="190"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e559']">
            <schxslt:rule pattern="d967e559">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e559">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(administrativeGenderCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(administrativeGenderCode)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(birthTime)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(birthTime)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e559')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]"
                  priority="189"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e559']">
            <schxslt:rule pattern="d967e559">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e559">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(family)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(family)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(given)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(given)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент given.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Patronymic)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Patronymic)&lt;=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь не более 1 элемента identity:Patronymic.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e559')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/birthTime"
                  priority="188"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e559']">
            <schxslt:rule pattern="d967e559">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/birthTime" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/birthTime</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e559">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/birthTime</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')</xsl:attribute>
                     <svrl:text>У1-21. Дата в элементе должна быть указана с точностью до дня.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e559')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode"
                  priority="187"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e559']">
            <schxslt:rule pattern="d967e559">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e559">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e559')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization"
                  priority="186"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e559']">
            <schxslt:rule pattern="d967e559">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e559">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=[1,2])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=[1,2]</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 или 2 элемента id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Props)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Props)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент identity:Props.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr)=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e559')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]"
                  priority="185"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e559']">
            <schxslt:rule pattern="d967e559">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e559">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e559')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]"
                  priority="184"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e559']">
            <schxslt:rule pattern="d967e559">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e559">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root='1.2.643.5.1.13.2.1.1.1504.101')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root='1.2.643.5.1.13.2.1.1.1504.101'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@assigningAuthorityName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@assigningAuthorityName!=''</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @assigningAuthorityName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e559')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]"
                  priority="183"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e644']">
            <schxslt:rule pattern="d967e644">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e644">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:Props/identity:Ogrn)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Props/identity:Ogrn)&lt;=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrn.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:Props/identity:Ogrn) or identity:Props/identity:Ogrn/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:Props/identity:Ogrn) or identity:Props/identity:Ogrn/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Props/identity:Ogrnip)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Props/identity:Ogrnip)&lt;=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrnip.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:Props/identity:Ogrnip) or identity:Props/identity:Ogrnip/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:Props/identity:Ogrnip) or identity:Props/identity:Ogrnip/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="identity:Props/identity:Ogrnip and identity:Props/identity:Ogrn">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:Props/identity:Ogrnip and identity:Props/identity:Ogrn</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props не должен одновременно иметь элемент identity:Ogrnip и элемент identity:Ogrn.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(identity:Props/identity:Okpo)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Props/identity:Okpo)&lt;=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okpo.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:Props/identity:Okpo) or identity:Props/identity:Okpo/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:Props/identity:Okpo) or identity:Props/identity:Okpo/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Props/identity:Okato)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Props/identity:Okato)&lt;=1</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okato.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:Props/identity:Okato) or identity:Props/identity:Okato/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:Props/identity:Okato) or identity:Props/identity:Okato/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e644')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="182" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e680']">
            <schxslt:rule pattern="d967e680">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e680">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(author)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(author)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument должен иметь 1 элемент author.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e680')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author" priority="181" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e680']">
            <schxslt:rule pattern="d967e680">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e680">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(time)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(time)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author должен иметь 1 элемент time.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(assignedAuthor)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedAuthor)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor .</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e680')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/time" priority="180" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e680']">
            <schxslt:rule pattern="d967e680">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/time" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/time</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e680">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/time</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>У1-22. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e680')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor"
                  priority="179"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e680']">
            <schxslt:rule pattern="d967e680">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e680">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=2)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=2</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor author иметь 2 элемента id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr)&lt;=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(assignedPerson)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedPerson)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(representedOrganization)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(representedOrganization)&lt;=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e680')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/id[1]"
                  priority="178"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e680']">
            <schxslt:rule pattern="d967e680">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/id[1]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[1]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e680">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[1]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e680')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/id[2]"
                  priority="177"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e680']">
            <schxslt:rule pattern="d967e680">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/id[2]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[2]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e680">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[2]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root='1.2.643.100.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root='1.2.643.100.3'</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e680')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/code"
                  priority="176"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e680']">
            <schxslt:rule pattern="d967e680">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e680">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e680')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/assignedPerson"
                  priority="175"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e756']">
            <schxslt:rule pattern="d967e756">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/assignedPerson" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e756">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e756')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/assignedPerson/name[not(@nullFlavor)]"
                  priority="174"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e756']">
            <schxslt:rule pattern="d967e756">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/assignedPerson/name[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e756">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(family)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(family)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент family.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(given)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(given)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент given.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Patronymic)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Patronymic)&lt;=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e756')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization"
                  priority="173"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e756']">
            <schxslt:rule pattern="d967e756">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e756">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='ORG')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='ORG'</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr)&lt;=1</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e756')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/id"
                  priority="172"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e756']">
            <schxslt:rule pattern="d967e756">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/id" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/id</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e756">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/id</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')</xsl:attribute>
                     <svrl:text>У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e756')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="171" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e804']">
            <schxslt:rule pattern="d967e804">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e804">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(custodian)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(custodian)=1</xsl:attribute>
                     <svrl:text>У1-23. Элемент ClinicalDocument должен иметь 1 элемент custodian.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e804')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian" priority="170" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e804']">
            <schxslt:rule pattern="d967e804">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e804">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(assignedCustodian)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedCustodian)=1</xsl:attribute>
                     <svrl:text>У1-23. Элемент ClinicalDocument/custodian должен иметь 1 элемент assignedCustodian.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e804')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian"
                  priority="169"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e804']">
            <schxslt:rule pattern="d967e804">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e804">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(representedCustodianOrganization)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(representedCustodianOrganization)=1</xsl:attribute>
                     <svrl:text>У1-23. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e804')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization"
                  priority="168"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e804']">
            <schxslt:rule pattern="d967e804">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e804">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr)&lt;=1</xsl:attribute>
                     <svrl:text>У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь не более 1 элемента addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e804')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id"
                  priority="167"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e804']">
            <schxslt:rule pattern="d967e804">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e804">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')</xsl:attribute>
                     <svrl:text>У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e804')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="166" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e845']">
            <schxslt:rule pattern="d967e845">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e845">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(informationRecipient[intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(informationRecipient[intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']])=1</xsl:attribute>
                     <svrl:text>У1-24. Элемент ClinicalDocument должен иметь 1 элемент informationRecipient.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e845')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']]"
                  priority="165"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e845']">
            <schxslt:rule pattern="d967e845">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e845">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(intendedRecipient)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(intendedRecipient)=1</xsl:attribute>
                     <svrl:text>У1-24. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e845')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id[@root='1.2.643.5.1.13']]"
                  priority="164"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e845']">
            <schxslt:rule pattern="d967e845">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id[@root='1.2.643.5.1.13']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id[@root='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e845">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id[@root='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(receivedOrganization)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(receivedOrganization)=1</xsl:attribute>
                     <svrl:text>У1-24. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e845')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id[@root='1.2.643.5.1.13']]"
                  priority="163"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e845']">
            <schxslt:rule pattern="d967e845">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id[@root='1.2.643.5.1.13']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id[@root='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e845">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id[@root='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У1-24. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-24. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e845')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id[@root!='1.2.643.5.1.13']]"
                  priority="162"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e877']">
            <schxslt:rule pattern="d967e877">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id[@root!='1.2.643.5.1.13']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id[@root!='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e877">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id[@root!='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(intendedRecipient)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(intendedRecipient)=1</xsl:attribute>
                     <svrl:text>У1-25. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e877')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id[@root!='1.2.643.5.1.13']]"
                  priority="161"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e877']">
            <schxslt:rule pattern="d967e877">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id[@root!='1.2.643.5.1.13']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id[@root!='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e877">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id[@root!='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(receivedOrganization)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(receivedOrganization)=1</xsl:attribute>
                     <svrl:text>У1-25. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e877')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id[@root!='1.2.643.5.1.13']]"
                  priority="160"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e877']">
            <schxslt:rule pattern="d967e877">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id[@root!='1.2.643.5.1.13']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id[@root!='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e877">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id[@root!='1.2.643.5.1.13']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У1-25. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-25. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e877')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="159" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e904']">
            <schxslt:rule pattern="d967e904">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e904">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(legalAuthenticator)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(legalAuthenticator)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e904')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator"
                  priority="158"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e904']">
            <schxslt:rule pattern="d967e904">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e904">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(time)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(time)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(signatureCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(signatureCode)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(assignedEntity)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedEntity)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity .</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e904')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/time"
                  priority="157"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e904']">
            <schxslt:rule pattern="d967e904">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/time" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/time</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e904">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/time</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value!=''</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/time должен иметь не пустое значение атрибута @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e904')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/signatureCode"
                  priority="156"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e904']">
            <schxslt:rule pattern="d967e904">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/signatureCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/signatureCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e904">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/signatureCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@code='S')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='S'</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @code равное 'S'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e904')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity"
                  priority="155"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e904']">
            <schxslt:rule pattern="d967e904">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e904">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=2)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=2</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity author иметь 2 элемента id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr)&lt;=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(assignedPerson)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedPerson)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(representedOrganization)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(representedOrganization)&lt;=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e904')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]"
                  priority="154"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e904']">
            <schxslt:rule pattern="d967e904">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/id[1]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[1]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e904">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[1]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e904')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]"
                  priority="153"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e904']">
            <schxslt:rule pattern="d967e904">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/id[2]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[2]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e904">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[2]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root='1.2.643.100.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root='1.2.643.100.3'</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e904')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/code"
                  priority="152"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e904']">
            <schxslt:rule pattern="d967e904">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e904">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e904')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson"
                  priority="151"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e992']">
            <schxslt:rule pattern="d967e992">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e992">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e992')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name[not(@nullFlavor)]"
                  priority="150"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e992']">
            <schxslt:rule pattern="d967e992">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e992">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(family)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(family)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(given)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(given)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Patronymic)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Patronymic)&lt;=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e992')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization"
                  priority="149"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e992']">
            <schxslt:rule pattern="d967e992">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e992">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='ORG')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='ORG'</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr)&lt;=1</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e992')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id"
                  priority="148"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e992']">
            <schxslt:rule pattern="d967e992">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e992">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')</xsl:attribute>
                     <svrl:text>У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e992')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="147" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1039']">
            <schxslt:rule pattern="d967e1039">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1039">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(participant)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(participant)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument должен иметь 1 элемент participant.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1039')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant" priority="146" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1039']">
            <schxslt:rule pattern="d967e1039">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1039">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@typeCode='IND')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode='IND'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant должен иметь значение атрибута @typeCode равное 'IND'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(associatedEntity)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(associatedEntity)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1039')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity"
                  priority="145"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1039']">
            <schxslt:rule pattern="d967e1039">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1039">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='GUAR')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='GUAR'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'GUAR'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:DocInfo)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:DocInfo.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(scopingOrganization)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(scopingOrganization)&lt;=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента scopingOrganization.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1039')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity/code"
                  priority="144"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1039']">
            <schxslt:rule pattern="d967e1039">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1039">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.11.1039')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.11.1039'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь значение атрибута @classCode равное '1.2.643.5.1.13.13.11.1039'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @classCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1039')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[code/@code=['8','9','10','11']]"
                  priority="143"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1090']">
            <schxslt:rule pattern="d967e1090">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[code/@code=['8','9','10','11']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['8','9','10','11']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1090">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['8','9','10','11']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/@nullFlavor=['INV','NAV'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/@nullFlavor=['INV','NAV']</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение атрибута @nullFlavor равное 'INV' или 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1090')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity"
                  priority="142"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1099']">
            <schxslt:rule pattern="d967e1099">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1099">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:DocInfo/identity:IdentityDocType)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo/identity:IdentityDocType)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:IdentityDocType.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:DocInfo/identity:InsurancePolicyType)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo/identity:InsurancePolicyType)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:InsurancePolicyType.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@xsi:type='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@xsi:type='CD'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @xsi:type равное 'CD'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@code!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@displayName!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@code!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:DocInfo/identity:Series)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo/identity:Series)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Series.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1099')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]]"
                  priority="141"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1134']">
            <schxslt:rule pattern="d967e1134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity"
                  priority="140"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1143']">
            <schxslt:rule pattern="d967e1143">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1143">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:DocInfo/identity:Number)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo/identity:Number)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Number.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:DocInfo/identity:Number/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Number/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:DocInfo/identity:INN)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo/identity:INN)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:INN.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:DocInfo/identity:effectiveTime)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo/identity:effectiveTime)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:effectiveTime.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1143')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[@classCode='GUAR'][identity:DocInfo/identity:IdentityDocType/@code='3']"
                  priority="139"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1161']">
            <schxslt:rule pattern="d967e1161">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[@classCode='GUAR'][identity:DocInfo/identity:IdentityDocType/@code='3']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[@classCode='GUAR'][identity:DocInfo/identity:IdentityDocType/@code='3']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1161">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[@classCode='GUAR'][identity:DocInfo/identity:IdentityDocType/@code='3']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:INN/@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:INN/@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1161')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[code/@code='1']"
                  priority="138"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1170']">
            <schxslt:rule pattern="d967e1170">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[code/@code='1']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code='1']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1170">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code='1']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:IdentityDocType/@code='1')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:IdentityDocType/@code='1'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '1'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1170')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[code/@code='3']"
                  priority="137"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1170']">
            <schxslt:rule pattern="d967e1170">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[code/@code='3']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code='3']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1170">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code='3']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:IdentityDocType/@code='2')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:IdentityDocType/@code='2'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '2'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1170')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[code/@code=['4','5','6']]"
                  priority="136"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1170']">
            <schxslt:rule pattern="d967e1170">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[code/@code=['4','5','6']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['4','5','6']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1170">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['4','5','6']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:IdentityDocType/@code='3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:IdentityDocType/@code='3'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '3'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1170')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]"
                  priority="135"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1191']">
            <schxslt:rule pattern="d967e1191">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1191">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1191')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]"
                  priority="134"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1191']">
            <schxslt:rule pattern="d967e1191">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1191">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NA'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1191')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1']"
                  priority="133"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1206']">
            <schxslt:rule pattern="d967e1206">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1206">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1206')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]"
                  priority="132"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1206']">
            <schxslt:rule pattern="d967e1206">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1206">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series/@nullFlavor='NA')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series/@nullFlavor='NA'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NA'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1206')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']"
                  priority="131"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1222']">
            <schxslt:rule pattern="d967e1222">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1222">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series/@nullFlavor='NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series/@nullFlavor='NAV'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1222')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']"
                  priority="130"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1222']">
            <schxslt:rule pattern="d967e1222">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1222">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series!='' or identity:DocInfo/identity:Series/@nullFlavor!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series!='' or identity:DocInfo/identity:Series/@nullFlavor!=''</xsl:attribute>
                     <svrl:text>У1-28. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение или иметь не пустое значение атрибута @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1222')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']"
                  priority="129"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1237']">
            <schxslt:rule pattern="d967e1237">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1237">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Number/@nullFlavor='NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Number/@nullFlavor='NAV'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1237')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]"
                  priority="128"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1237']">
            <schxslt:rule pattern="d967e1237">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1237">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Number!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Number!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1237')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='3']"
                  priority="127"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1252']">
            <schxslt:rule pattern="d967e1252">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='3']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='3']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1252">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='3']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:INN!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:INN!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь не пустое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1252')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']"
                  priority="126"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1261']">
            <schxslt:rule pattern="d967e1261">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1261">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:effectiveTime/@nullFlavor='NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:effectiveTime/@nullFlavor='NAV'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1261')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]"
                  priority="125"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1270']">
            <schxslt:rule pattern="d967e1270">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1270">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:DocInfo/identity:effectiveTime/identity:low)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo/identity:effectiveTime/identity:low)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:low.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:DocInfo/identity:effectiveTime/identity:low/@xsi:type='TS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:effectiveTime/identity:low/@xsi:type='TS'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low должен иметь значение атрибута @xsi:type равное 'TS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(identity:DocInfo/identity:effectiveTime/identity:low/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(identity:DocInfo/identity:effectiveTime/identity:low/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')</xsl:attribute>
                     <svrl:text>У1-27. Дата в элементе должна быть указана с точностью до дня.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:DocInfo/identity:effectiveTime/identity:high)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo/identity:effectiveTime/identity:high)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:high.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1270')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')][identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]]"
                  priority="124"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1288']">
            <schxslt:rule pattern="d967e1288">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')][identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')][identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1288">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')][identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:effectiveTime/identity:high/@xsi:type='TS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:effectiveTime/identity:high/@xsi:type='TS'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @xsi:type равное 'TS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1288')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']"
                  priority="123"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1298']">
            <schxslt:rule pattern="d967e1298">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1298">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor='NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor='NAV'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1298')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@code='2')]"
                  priority="122"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1298']">
            <schxslt:rule pattern="d967e1298">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@code='2')]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@code='2')]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1298">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@code='2')]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(identity:DocInfo/identity:effectiveTime/identity:high/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(identity:DocInfo/identity:effectiveTime/identity:high/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')</xsl:attribute>
                     <svrl:text>У1-27. Дата в элементе должна быть указана с точностью до дня.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1298')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization"
                  priority="121"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1313']">
            <schxslt:rule pattern="d967e1313">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1313">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom)&gt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom)&gt;=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь не менее 1 элемента telecom.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr)=1</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1313')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[not(@nullFlavor)]"
                  priority="120"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1313']">
            <schxslt:rule pattern="d967e1313">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1313">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root=['1.2.643.5.1.13.13.99.2.183','1.2.643.5.1.13.2.1.1.635'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root=['1.2.643.5.1.13.13.99.2.183','1.2.643.5.1.13.2.1.1.635']</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.99.2.183' или '1.2.643.5.1.13.2.1.1.635'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1313')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[nullFlavor]"
                  priority="119"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1313']">
            <schxslt:rule pattern="d967e1313">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1313">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@nullFlavor='NA')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor='NA'</xsl:attribute>
                     <svrl:text>У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @nullFlavor равное 'NA'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1313')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component" priority="118" mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1348']">
            <schxslt:rule pattern="d967e1348">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1348">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(structuredBody)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(structuredBody)=1</xsl:attribute>
                     <svrl:text>У1-28. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1348')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody"
                  priority="117"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1359']">
            <schxslt:rule pattern="d967e1359">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1359">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(component/section/code[@code='WORK'])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(component/section/code[@code='WORK'])=1</xsl:attribute>
                     <svrl:text>У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'WORK'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1359')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']"
                  priority="116"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1359']">
            <schxslt:rule pattern="d967e1359">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1359">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(title)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(title)=1</xsl:attribute>
                     <svrl:text>У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(text)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(text)=1</xsl:attribute>
                     <svrl:text>У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1359')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section/code[@code='WORK']"
                  priority="115"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1359']">
            <schxslt:rule pattern="d967e1359">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section/code[@code='WORK']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='WORK']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1359">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='WORK']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']</xsl:attribute>
                     <svrl:text>У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1359')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody"
                  priority="114"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1398']">
            <schxslt:rule pattern="d967e1398">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1398">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(component/section/code[@code='DOCINFO'])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(component/section/code[@code='DOCINFO'])=1</xsl:attribute>
                     <svrl:text>У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1398')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="113"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1398']">
            <schxslt:rule pattern="d967e1398">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1398">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(title)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(title)=1</xsl:attribute>
                     <svrl:text>У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(text)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(text)=1</xsl:attribute>
                     <svrl:text>У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1398')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']"
                  priority="112"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1398']">
            <schxslt:rule pattern="d967e1398">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1398">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']</xsl:attribute>
                     <svrl:text>У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1398')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody"
                  priority="111"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1436']">
            <schxslt:rule pattern="d967e1436">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1436">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(component/section/code[@code='VITALPARAM'])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(component/section/code[@code='VITALPARAM'])=1</xsl:attribute>
                     <svrl:text>У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'VITALPARAM'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1436')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']"
                  priority="110"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1436']">
            <schxslt:rule pattern="d967e1436">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1436">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(title)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(title)=1</xsl:attribute>
                     <svrl:text>У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(text)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(text)=1</xsl:attribute>
                     <svrl:text>У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1436')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section/code[@code='VITALPARAM']"
                  priority="109"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1436']">
            <schxslt:rule pattern="d967e1436">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section/code[@code='VITALPARAM']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='VITALPARAM']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1436">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='VITALPARAM']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']</xsl:attribute>
                     <svrl:text>У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1436')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody"
                  priority="108"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1474']">
            <schxslt:rule pattern="d967e1474">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1474">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(component/section/code[@code='DGN'])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(component/section/code[@code='DGN'])=1</xsl:attribute>
                     <svrl:text>У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DGN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1474')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']"
                  priority="107"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1474']">
            <schxslt:rule pattern="d967e1474">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1474">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(title)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(title)=1</xsl:attribute>
                     <svrl:text>У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(text)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(text)=1</xsl:attribute>
                     <svrl:text>У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1474')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section/code[@code='DGN']"
                  priority="106"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1474']">
            <schxslt:rule pattern="d967e1474">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section/code[@code='DGN']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='DGN']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1474">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='DGN']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']</xsl:attribute>
                     <svrl:text>У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1474')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody"
                  priority="105"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1513']">
            <schxslt:rule pattern="d967e1513">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1513">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(component/section/code[@code='LINKDOCS'])&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(component/section/code[@code='LINKDOCS'])&lt;=1</xsl:attribute>
                     <svrl:text>У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'LINKDOCS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1513')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']"
                  priority="104"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1513']">
            <schxslt:rule pattern="d967e1513">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1513">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(title)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(title)=1</xsl:attribute>
                     <svrl:text>У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(text)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(text)=1</xsl:attribute>
                     <svrl:text>У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1513')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section/code[@code='LINKDOCS']"
                  priority="103"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1513']">
            <schxslt:rule pattern="d967e1513">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section/code[@code='LINKDOCS']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='LINKDOCS']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1513">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section/code[@code='LINKDOCS']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']</xsl:attribute>
                     <svrl:text>У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1513')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']"
                  priority="102"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1551']">
            <schxslt:rule pattern="d967e1551">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1551">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='9018']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='9018']])=1</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1551')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[observation/code[@code='9018']]"
                  priority="101"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1551']">
            <schxslt:rule pattern="d967e1551">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[observation/code[@code='9018']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[observation/code[@code='9018']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1551">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[observation/code[@code='9018']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1551')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9018']]"
                  priority="100"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1551']">
            <schxslt:rule pattern="d967e1551">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9018']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9018']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1551">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9018']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1551')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code[@code='9018']"
                  priority="99"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1551']">
            <schxslt:rule pattern="d967e1551">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code[@code='9018']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code[@code='9018']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1551">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code[@code='9018']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1551')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9018']]/value"
                  priority="98"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1551']">
            <schxslt:rule pattern="d967e1551">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9018']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9018']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1551">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9018']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1551')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']"
                  priority="97"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1601']">
            <schxslt:rule pattern="d967e1601">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1601">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='9019']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='9019']])=1</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1601')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[observation/code[@code='9019']]"
                  priority="96"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1601']">
            <schxslt:rule pattern="d967e1601">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[observation/code[@code='9019']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[observation/code[@code='9019']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1601">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[observation/code[@code='9019']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1601')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9019']]"
                  priority="95"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1601']">
            <schxslt:rule pattern="d967e1601">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9019']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9019']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1601">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9019']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1601')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code[@code='9019']"
                  priority="94"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1601']">
            <schxslt:rule pattern="d967e1601">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code[@code='9019']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code[@code='9019']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1601">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code[@code='9019']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1601')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9019']]/value"
                  priority="93"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1601']">
            <schxslt:rule pattern="d967e1601">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9019']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9019']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1601">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation[code[@code='9019']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1601')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="92"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1652']">
            <schxslt:rule pattern="d967e1652">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1652">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='9020']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='9020']])=1</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1652')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9020']]"
                  priority="91"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1652']">
            <schxslt:rule pattern="d967e1652">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9020']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9020']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1652">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9020']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1652')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9020']]"
                  priority="90"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1652']">
            <schxslt:rule pattern="d967e1652">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9020']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9020']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1652">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9020']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1652')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9020']"
                  priority="89"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1652']">
            <schxslt:rule pattern="d967e1652">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9020']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9020']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1652">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9020']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1652')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9020']]/value"
                  priority="88"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1652']">
            <schxslt:rule pattern="d967e1652">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9020']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9020']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1652">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9020']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1652')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="87"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1702']">
            <schxslt:rule pattern="d967e1702">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1702">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='9021']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='9021']])=1</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1702')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9021']]"
                  priority="86"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1702']">
            <schxslt:rule pattern="d967e1702">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9021']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9021']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1702">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9021']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1702')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9021']]"
                  priority="85"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1702']">
            <schxslt:rule pattern="d967e1702">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9021']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9021']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1702">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9021']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value[@xsi:type=['CD','ST']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value[@xsi:type=['CD','ST']])=1</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value со значением атрибута @xsi:type равным 'CD' или 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1702')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9021']"
                  priority="84"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1702']">
            <schxslt:rule pattern="d967e1702">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9021']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9021']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1702">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9021']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1702')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9021']]/value[@xsi:type='CD']"
                  priority="83"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1702']">
            <schxslt:rule pattern="d967e1702">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9021']]/value[@xsi:type='CD']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9021']]/value[@xsi:type='CD']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1702">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9021']]/value[@xsi:type='CD']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.540')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.540'</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.540'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1702')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="82"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1761']">
            <schxslt:rule pattern="d967e1761">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1761">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='9022']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='9022']])=1</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1761')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9022']]"
                  priority="81"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1761']">
            <schxslt:rule pattern="d967e1761">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9022']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9022']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1761">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9022']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1761')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9022']]"
                  priority="80"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1761']">
            <schxslt:rule pattern="d967e1761">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9022']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9022']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1761">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9022']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1761')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9022']"
                  priority="79"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1761']">
            <schxslt:rule pattern="d967e1761">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9022']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9022']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1761">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9022']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1761')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9022']]/value"
                  priority="78"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1761']">
            <schxslt:rule pattern="d967e1761">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9022']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9022']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1761">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9022']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1761')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="77"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1812']">
            <schxslt:rule pattern="d967e1812">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1812">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='10003']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='10003']])=1</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1812')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10003']]"
                  priority="76"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1812']">
            <schxslt:rule pattern="d967e1812">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10003']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10003']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1812">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10003']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1812')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10003']]"
                  priority="75"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1812']">
            <schxslt:rule pattern="d967e1812">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10003']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10003']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1812">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10003']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1812')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10003']"
                  priority="74"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1812']">
            <schxslt:rule pattern="d967e1812">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10003']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10003']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1812">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10003']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1812')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10003']]/value"
                  priority="73"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1812']">
            <schxslt:rule pattern="d967e1812">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10003']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10003']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1812">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10003']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='CD'</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.765')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.765'</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.765'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1812')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="72"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1878']">
            <schxslt:rule pattern="d967e1878">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1878">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='9023']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='9023']])=1</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1878')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9023']]"
                  priority="71"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1878']">
            <schxslt:rule pattern="d967e1878">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9023']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9023']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1878">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9023']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1878')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9023']]"
                  priority="70"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1878']">
            <schxslt:rule pattern="d967e1878">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9023']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9023']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1878">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9023']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1878')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9023']"
                  priority="69"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1878']">
            <schxslt:rule pattern="d967e1878">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9023']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9023']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1878">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9023']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1878')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9023']]/value"
                  priority="68"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1878']">
            <schxslt:rule pattern="d967e1878">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9023']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9023']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1878">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9023']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1878')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="67"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1928']">
            <schxslt:rule pattern="d967e1928">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1928">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='9004']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='9004']])=1</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1928')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9004']]"
                  priority="66"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1928']">
            <schxslt:rule pattern="d967e1928">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9004']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9004']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1928">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9004']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1928')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]"
                  priority="65"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1928']">
            <schxslt:rule pattern="d967e1928">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1928">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1928')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9004']"
                  priority="64"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1928']">
            <schxslt:rule pattern="d967e1928">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9004']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9004']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1928">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9004']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1928')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]/value"
                  priority="63"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1928']">
            <schxslt:rule pattern="d967e1928">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1928">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='BL')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='BL'</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value=['true','false'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value=['true','false']</xsl:attribute>
                     <svrl:text>У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @value равное 'true' или 'false'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1928')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="62"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1982']">
            <schxslt:rule pattern="d967e1982">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1982">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='12007']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='12007']])=1</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1982')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='12007']]"
                  priority="61"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1982']">
            <schxslt:rule pattern="d967e1982">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='12007']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='12007']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1982">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='12007']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1982')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]"
                  priority="60"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1982']">
            <schxslt:rule pattern="d967e1982">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1982">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1982')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12007']"
                  priority="59"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1982']">
            <schxslt:rule pattern="d967e1982">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12007']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12007']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1982">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12007']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1982')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]/value"
                  priority="58"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e1982']">
            <schxslt:rule pattern="d967e1982">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e1982">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e1982')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="57"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2032']">
            <schxslt:rule pattern="d967e2032">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2032">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2032')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9025']]"
                  priority="56"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2032']">
            <schxslt:rule pattern="d967e2032">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9025']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9025']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2032">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9025']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2032')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9025']]"
                  priority="55"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2032']">
            <schxslt:rule pattern="d967e2032">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9025']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9025']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2032">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9025']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2032')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9025']"
                  priority="54"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2032']">
            <schxslt:rule pattern="d967e2032">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9025']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9025']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2032">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9025']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2032')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9025']]/value"
                  priority="53"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2032']">
            <schxslt:rule pattern="d967e2032">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9025']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9025']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2032">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9025']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2032')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']"
                  priority="52"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2083']">
            <schxslt:rule pattern="d967e2083">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2083">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='10000']])&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='10000']])&lt;=1</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2083')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10000']]"
                  priority="51"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2083']">
            <schxslt:rule pattern="d967e2083">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10000']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10000']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2083">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10000']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2083')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]"
                  priority="50"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2083']">
            <schxslt:rule pattern="d967e2083">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2083">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2083')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000']"
                  priority="49"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2083']">
            <schxslt:rule pattern="d967e2083">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2083">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2083')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value"
                  priority="48"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2083']">
            <schxslt:rule pattern="d967e2083">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2083">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2083')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']"
                  priority="47"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[organizer])&gt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[organizer])&gt;=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM'] должен иметь не менее 1 элемента entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[organizer]"
                  priority="46"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[organizer]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[organizer]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[organizer]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(organizer)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(organizer)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry должен иметь 1 элемент organizer.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer"
                  priority="45"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='CLUSTER')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='CLUSTER'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(statusCode)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(statusCode)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент statusCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(effectiveTime)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(effectiveTime)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент effectiveTime.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(precondition)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(precondition)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент precondition.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(component)&gt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(component)&gt;=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь не менее 1 элемента component.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode"
                  priority="44"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@code='completed')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='completed'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime"
                  priority="43"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value!=''</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime должен иметь не пустое значение атрибута @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition"
                  priority="42"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@typeCode='PRCN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode='PRCN'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition должен иметь значение атрибута @typeCode равное 'PRCN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(criterion)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(criterion)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition должен иметь 1 элемент criterion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion"
                  priority="41"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/code"
                  priority="40"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@code='ASSERTION')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='ASSERTION'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/code должен иметь значение атрибута @code равное 'ASSERTION'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem='2.16.840.1.113883.5.4')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='2.16.840.1.113883.5.4'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/code должен иметь значение атрибута @codeSystem равное '2.16.840.1.113883.5.4'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion='False')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion='False'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/code должен иметь значение атрибута @codeSystemVersion равное 'False'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/value"
                  priority="39"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/precondition/criterion/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component"
                  priority="38"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@typeCode='COMP')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode='COMP'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation"
                  priority="37"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code"
                  priority="36"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.262','1.2.643.5.1.13.13.11.1010'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.262','1.2.643.5.1.13.13.11.1010']</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.262' или '1.2.643.5.1.13.13.11.1010'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value"
                  priority="35"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='PQ')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='PQ'</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(translation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(translation)=1</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь 1 элемент translation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation"
                  priority="34"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2134']">
            <schxslt:rule pattern="d967e2134">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2134">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2134')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']"
                  priority="33"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2283']">
            <schxslt:rule pattern="d967e2283">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2283">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry[observation/code[@code='4051']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code[@code='4051']])=1</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM'] должен иметь 1 элемент entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2283')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[observation/code[@code='4051']]"
                  priority="32"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2283']">
            <schxslt:rule pattern="d967e2283">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[observation/code[@code='4051']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[observation/code[@code='4051']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2283">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[observation/code[@code='4051']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2283')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4051']]"
                  priority="31"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2283']">
            <schxslt:rule pattern="d967e2283">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4051']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4051']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2283">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4051']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2283')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code[@code='4051']"
                  priority="30"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2283']">
            <schxslt:rule pattern="d967e2283">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code[@code='4051']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code[@code='4051']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2283">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code[@code='4051']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2283')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4051']]/value"
                  priority="29"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2283']">
            <schxslt:rule pattern="d967e2283">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4051']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4051']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2283">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4051']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2283')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']"
                  priority="28"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry)&gt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry)&gt;=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] должен иметь не менее 1 элемента entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry"
                  priority="27"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation"
                  priority="26"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(entryRelationship[observation/code[@code='9010']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entryRelationship[observation/code[@code='9010']])=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент entryRelationship.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(entryRelationship[observation/code[@code='809']])=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entryRelationship[observation/code[@code='809']])=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент entryRelationship.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code"
                  priority="25"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code='838')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='838'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @code равное '838'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']]"
                  priority="24"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@typeCode='COMP')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode='COMP'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']]"
                  priority="23"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010']"
                  priority="22"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']]/value"
                  priority="21"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']]"
                  priority="20"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@typeCode='COMP')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode='COMP'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]"
                  priority="19"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809']"
                  priority="18"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value[not(@nullFlavor)]"
                  priority="17"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='CD'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value[@nullFlavor]"
                  priority="16"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2333']">
            <schxslt:rule pattern="d967e2333">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2333">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@nullFlavor='NA')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor='NA'</xsl:attribute>
                     <svrl:text>У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @nullFlavor равное 'NA'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2333')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']"
                  priority="15"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(entry)&gt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry)&gt;=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS'] должен иметь не менее 1 элемента entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry"
                  priority="14"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(act)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(act)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act"
                  priority="13"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='ACT')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='ACT'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(text)&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(text)&lt;=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента text.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(effectiveTime)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(effectiveTime)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент effectiveTime.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(entryRelationship[observation/code[@code='11002']])&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entryRelationship[observation/code[@code='11002']])&lt;=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(entryRelationship[observation/code[@code='11003']])&lt;=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entryRelationship[observation/code[@code='11003']])&lt;=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(reference)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(reference)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент reference.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code"
                  priority="12"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime"
                  priority="11"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/effectiveTime должен иметь не пустое значение атрибута @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']]"
                  priority="10"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@typeCode='COMP')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode='COMP'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]"
                  priority="9"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']"
                  priority="8"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value"
                  priority="7"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']]"
                  priority="6"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@typeCode='COMP')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode='COMP'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(observation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]"
                  priority="5"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='OBS'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']"
                  priority="4"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value"
                  priority="3"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type='ST'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference"
                  priority="2"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@typeCode='REFR')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode='REFR'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference должен иметь значение атрибута @typeCode равное 'REFR'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(externalDocument)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(externalDocument)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference должен иметь 1 элемент externalDocument.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument"
                  priority="1"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@classCode='DOCCLIN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode='DOCCLIN'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOCCLIN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode='EVN'</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id)=1</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь 1 элемент id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id"
                  priority="0"
                  mode="d967e23">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd967e2493']">
            <schxslt:rule pattern="d967e2493">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d967e2493">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension!=''</xsl:attribute>
                     <svrl:text>У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd967e2493')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:function name="schxslt:location" as="xs:string">
      <xsl:param name="node" as="node()"/>
      <xsl:variable name="segments" as="xs:string*">
         <xsl:for-each select="($node/ancestor-or-self::node())">
            <xsl:variable name="position">
               <xsl:number level="single"/>
            </xsl:variable>
            <xsl:choose>
               <xsl:when test=". instance of element()">
                  <xsl:value-of select="concat('Q{', namespace-uri(.), '}', local-name(.), '[', $position, ']')"/>
               </xsl:when>
               <xsl:when test=". instance of attribute()">
                  <xsl:value-of select="concat('@Q{', namespace-uri(.), '}', local-name(.))"/>
               </xsl:when>
               <xsl:when test=". instance of processing-instruction()">
                  <xsl:value-of select="concat('processing-instruction(&#34;', name(.), '&#34;)[', $position, ']')"/>
               </xsl:when>
               <xsl:when test=". instance of comment()">
                  <xsl:value-of select="concat('comment()[', $position, ']')"/>
               </xsl:when>
               <xsl:when test=". instance of text()">
                  <xsl:value-of select="concat('text()[', $position, ']')"/>
               </xsl:when>
               <xsl:otherwise/>
            </xsl:choose>
         </xsl:for-each>
      </xsl:variable>
      <xsl:value-of select="concat('/', string-join($segments, '/'))"/>
   </xsl:function>
</xsl:transform>

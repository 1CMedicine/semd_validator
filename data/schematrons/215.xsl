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
      <dct:created>2024-01-07T04:23:36.698598419+08:00</dct:created>
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
                  <dct:created>2024-01-07T04:23:36.698598419+08:00</dct:created>
               </rdf:Description>
            </dct:source>
         </svrl:metadata>
      </xsl:variable>
      <xsl:variable name="report" as="element(schxslt:report)">
         <schxslt:report>
            <xsl:call-template name="d13e13"/>
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
   <xsl:template name="d13e13">
      <schxslt:document>
         <schxslt:pattern id="d13e13">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e82">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e94">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e109">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e121">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e139">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e170">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e181">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e190">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e215">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e227">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e237">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e249">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e274">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e286">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e304">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e316">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e329">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e363">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e381">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e393">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e402">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e427">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e453">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e462">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e474">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e483">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e492">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e504">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e520">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e545">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e557">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e569">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e597">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e622">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e635">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e660">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e669">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e681">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e693">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e702">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e721">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e739">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e757">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e769">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e781">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e793">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e815">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e827">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e836">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e845">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e873">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e891">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e910">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e928">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e940">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e952">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e964">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e976">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e989">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1007">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1035">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1047">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1072">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1081">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1094">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1106">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1115">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1130">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1139">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1170">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1189">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1204">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1229">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1257">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1269">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1294">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1304">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1316">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1328">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1337">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1355">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1367">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1386">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1398">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1410">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1422">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1447">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1465">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1478">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1496">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1524">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1536">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1561">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1570">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1583">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1595">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1604">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1616">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1628">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1653">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1672">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1684">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1702">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1730">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1742">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1767">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1777">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1789">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1801">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1810">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1822">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1834">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1850">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1862">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1874">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1886">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1898">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1913">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1929">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1941">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1953">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1971">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1980">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e1989">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2021">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2039">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2054">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2079">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2107">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2119">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2145">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2154">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2166">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2178">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2187">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2205">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2218">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2236">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2248">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2260">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2272">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2297">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2316">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2328">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2346">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2374">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2386">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2411">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2421">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2433">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2445">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2454">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2469">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2490">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2516">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2541">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2566">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2587">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2599">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2608">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2618">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2627">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2639">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2651">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2660">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2669">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2691">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2703">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2712">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2724">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2739">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2748">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2774">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2786">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2811">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2820">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2832">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2844">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2854">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2866">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2878">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2890">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2918">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2943">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2956">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2968">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e2989">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3014">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3026">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3035">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3048">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3069">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3094">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3106">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3115">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3127">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3149">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3174">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3189">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3201">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3222">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3247">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3263">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3272">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3281">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3290">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3299">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3308">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3318">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3327">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3336">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3345">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3354">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3363">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3373">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3388">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3397">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3406">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3427">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3436">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3451">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3462">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3474">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3494">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3504">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3513">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3522">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3531">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3540">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3549">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3562">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3571">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3580">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3589">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3598">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3610">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3620">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3629">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e3640">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <xsl:apply-templates mode="d13e13" select="root()"/>
      </schxslt:document>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="239" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e13']">
            <schxslt:rule pattern="d13e13">
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
            <schxslt:rule pattern="d13e13">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(realmCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(realmCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-1) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент realmCode (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(typeId) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(typeId) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-2) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент typeId (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(templateId) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(templateId) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-3) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент templateId (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id[substring(@root, string-length(@root) - 2) = '.51']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[substring(@root, string-length(@root) - 2) = '.51']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-4) Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-5) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент code (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(title) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(title) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-6) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент title (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(effectiveTime) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(effectiveTime) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-7) Элемент ClinicalDocument
                ДОЛЖЕН содержать один [1..1] элемент effectiveTime (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(confidentialityCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(confidentialityCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-8) Элемент
                ClinicalDocument ОБЯЗАН содержать один [1..1] элемент confidentialityCode
                (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(languageCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(languageCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-9) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент languageCode (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(setId) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(setId) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-10) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент setId (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(versionNumber) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(versionNumber) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-11) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент versionNumber (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(recordTarget) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(recordTarget) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент recordTarget (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(author) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(author) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент author (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(custodian) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(custodian) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент custodian (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-15) Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент
                informationRecipient (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]) &gt;= 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]) &gt;= 1</xsl:attribute>
                     <svrl:text>(Требование: У1-16) Элемент ClinicalDocument ОБЯЗАН содержать не менее одного
                [1..*] элемента informationRecipient (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(legalAuthenticator) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(legalAuthenticator) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17) Элемент
                ClinicalDocument ОБЯЗАН содержать один [1..1] элемент legalAuthenticator
                (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(participant[@typeCode = 'IND']) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(participant[@typeCode = 'IND']) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-18)
                Элемент ClinicalDocument МОЖЕТ содержать не более одного [0..1] элемента participant
                (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(component) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(component) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-19) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент component (ClinicalDocument) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e13')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/realmCode" priority="238" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e82']">
            <schxslt:rule pattern="d13e82">
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
            <schxslt:rule pattern="d13e82">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/realmCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-1) Элемент ClinicalDocument/realmCode не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code = 'RU')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code = 'RU'</xsl:attribute>
                     <svrl:text>(Требование: У1-1) Элемент realmCode обязан содержать один
                атрибут @code со значением "RU"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e82')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/typeId" priority="237" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e94']">
            <schxslt:rule pattern="d13e94">
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
            <schxslt:rule pattern="d13e94">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/typeId</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-2) Элемент ClinicalDocument/typeId не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root = '2.16.840.1.113883.1.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root = '2.16.840.1.113883.1.3'</xsl:attribute>
                     <svrl:text>(Требование: У1-2) Элемент typeId обязан
                содержать один атрибут @root со значением "2.16.840.1.113883.1.3"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension = 'POCD_MT000040')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension = 'POCD_MT000040'</xsl:attribute>
                     <svrl:text>(Требование: У1-2) Элемент typeId обязан
                содержать один атрибут @extension со значением "POCD_MT000040"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e94')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/templateId" priority="236" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e109']">
            <schxslt:rule pattern="d13e109">
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
            <schxslt:rule pattern="d13e109">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/templateId</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-3) Элемент ClinicalDocument/templateId не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root = '1.2.643.5.1.13.13.15.49.2')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root = '1.2.643.5.1.13.13.15.49.2'</xsl:attribute>
                     <svrl:text>(Требование: У1-3) Элемент templateId
                обязан содержать один атрибут @root со значением
                "1.2.643.5.1.13.13.15.49.2"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e109')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/id[substring(@root, string-length(@root) - 2) = '.51']"
                  priority="235"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e121']">
            <schxslt:rule pattern="d13e121">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/id[substring(@root, string-length(@root) - 2) = '.51']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/id[substring(@root, string-length(@root) - 2) = '.51']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e121">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/id[substring(@root, string-length(@root) - 2) = '.51']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-4) Элемент
                ClinicalDocument/id[substring(@root, string-length(@root) - 2)='.51'] не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-4) Элемент id обязан содержать один атрибут
                @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.51$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.51$')</xsl:attribute>
                     <svrl:text>(Требование: У1-4)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-4) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e121')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/code" priority="234" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e139']">
            <schxslt:rule pattern="d13e139">
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
            <schxslt:rule pattern="d13e139">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>У1-5: Элемент ClinicalDocument/code не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code=['215','66'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code=['215','66']</xsl:attribute>
                     <svrl:text>У1-5: Элемент code обязан содержать один атрибут @code со значением "215" или "66"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41','1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41','1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']</xsl:attribute>
                     <svrl:text>У1-5: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1520" или "1.2.643.5.1.13.13.11.1522"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У1-5: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У1-5: Элемент code обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-5: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(translation)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(translation)=1</xsl:attribute>
                     <svrl:text>У1-5.1: Элемент code ОБЯЗАН содержать один [1..1] элемент translation</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e139')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41']]"
                  priority="233"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e170']">
            <schxslt:rule pattern="d13e170">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e170">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@code='215')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='215'</xsl:attribute>
                     <svrl:text>У1-5: Элемент code обязан содержать атрибут @code со значением "215"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e170')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']]"
                  priority="232"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e181']">
            <schxslt:rule pattern="d13e181">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e181">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@code='66')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='66'</xsl:attribute>
                     <svrl:text>У1-5: Элемент code обязан содержать атрибут @code со значением "66"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e181')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/code/translation"
                  priority="231"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e190']">
            <schxslt:rule pattern="d13e190">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/code/translation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code/translation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e190">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/code/translation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>У1-5.1: Элемент ClinicalDocument/code/translation не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code='49')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code='49'</xsl:attribute>
                     <svrl:text>У1-5.1: Элемент translation обязан содержать один атрибут @code со значением "49"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.1079')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.1079'</xsl:attribute>
                     <svrl:text>У1-5.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.1079"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName!=''</xsl:attribute>
                     <svrl:text>У1-5.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!=''</xsl:attribute>
                     <svrl:text>У1-5.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>У1-5.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e190')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/title" priority="230" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e215']">
            <schxslt:rule pattern="d13e215">
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
            <schxslt:rule pattern="d13e215">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/title</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-6) Элемент ClinicalDocument/title не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-6) Элемент title должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e215')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/effectiveTime[not(@nullFlavor)]"
                  priority="229"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e227']">
            <schxslt:rule pattern="d13e227">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/effectiveTime[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/effectiveTime[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e227">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/effectiveTime[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-7) Элемент effectiveTime должен содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e227')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/effectiveTime[@nullFlavor]"
                  priority="228"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e237']">
            <schxslt:rule pattern="d13e237">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/effectiveTime[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/effectiveTime[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e237">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/effectiveTime[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@value">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="@nullFlavor != 'NA'">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor != 'NA'</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor должен быть представлен со значением 'NA'</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e237')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/confidentialityCode"
                  priority="227"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e249']">
            <schxslt:rule pattern="d13e249">
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
            <schxslt:rule pattern="d13e249">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/confidentialityCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-8) Элемент
                ClinicalDocument/confidentialityCode не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9', '1.2.643.5.1.13.13.11.1116'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9', '1.2.643.5.1.13.13.11.1116']</xsl:attribute>
                     <svrl:text>(Требование: У1-8) Элемент confidentialityCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.285"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-8) Элемент confidentialityCode
                обязан содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-8) Элемент confidentialityCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-8) Элемент confidentialityCode
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-8) Элемент confidentialityCode обязан
                содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e249')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/languageCode" priority="226" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e274']">
            <schxslt:rule pattern="d13e274">
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
            <schxslt:rule pattern="d13e274">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/languageCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-9) Элемент ClinicalDocument/languageCode не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code = 'ru-RU')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code = 'ru-RU'</xsl:attribute>
                     <svrl:text>(Требование: У1-9) Элемент languageCode обязан содержать
                один атрибут @code со значением "ru-RU"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e274')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/setId" priority="225" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e286']">
            <schxslt:rule pattern="d13e286">
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
            <schxslt:rule pattern="d13e286">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/setId</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-10) Элемент ClinicalDocument/setId не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-10) Элемент setId обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.50$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.50$')</xsl:attribute>
                     <svrl:text>(Требование: У1-10)
                Элемент setId обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-10) Элемент setId обязан содержать один
                атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e286')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/versionNumber" priority="224" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e304']">
            <schxslt:rule pattern="d13e304">
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
            <schxslt:rule pattern="d13e304">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/versionNumber</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-11) Элемент ClinicalDocument/versionNumber не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-11) Элемент versionNumber обязан содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e304')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget" priority="223" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e316']">
            <schxslt:rule pattern="d13e316">
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
            <schxslt:rule pattern="d13e316">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12) Элемент ClinicalDocument/recordTarget не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(patientRole) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(patientRole) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1) Элемент recordTarget ОБЯЗАН
                содержать один [1..1] элемент patientRole (ClinicalDocument/recordTarget) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e316')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole"
                  priority="222"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e329']">
            <schxslt:rule pattern="d13e329">
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
            <schxslt:rule pattern="d13e329">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1) Элемент
                ClinicalDocument/recordTarget/patientRole не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(id[substring(@root, string-length(@root) - 2) = '.10']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[substring(@root, string-length(@root) - 2) = '.10']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.1) Элемент patientRole ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/recordTarget/patientRole) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id[2]) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[2]) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.2) Элемент patientRole ДОЛЖЕН
                содержать один [1..1] элемент id (ClinicalDocument/recordTarget/patientRole) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IdentityDoc) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDoc) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3) Элемент
                patientRole ДОЛЖЕН содержать один [1..1] элемент identity:IdentityDoc
                (ClinicalDocument/recordTarget/patientRole) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:InsurancePolicy) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:InsurancePolicy) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4) Элемент
                patientRole ДОЛЖЕН содержать один [1..1] элемент identity:InsurancePolicy
                (ClinicalDocument/recordTarget/patientRole) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr) = [1, 2])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr) = [1, 2]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5) Элемент patientRole ДОЛЖЕН
                содержать от одного до двух [1..2] элементов addr
                (ClinicalDocument/recordTarget/patientRole) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom) &gt;= 0)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom) &gt;= 0</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.6) Элемент patientRole МОЖЕТ
                содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/recordTarget/patientRole) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(patient) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(patient) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7) Элемент patientRole ОБЯЗАН
                содержать один [1..1] элемент patient (ClinicalDocument/recordTarget/patientRole) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(providerOrganization) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(providerOrganization) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8) Элемент
                patientRole ОБЯЗАН содержать один [1..1] элемент providerOrganization
                (ClinicalDocument/recordTarget/patientRole) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e329')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) - 2) = '.10']"
                  priority="221"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e363']">
            <schxslt:rule pattern="d13e363">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) - 2) = '.10']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) - 2) = '.10']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e363">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) - 2) = '.10']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.1) Элемент
                ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) -
                2)='.10'] не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.10$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.10$')</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.1)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.1) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e363')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]"
                  priority="220"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e381']">
            <schxslt:rule pattern="d13e381">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e381">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root = '1.2.643.100.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root = '1.2.643.100.3'</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.2) Элемент id должен
                содержать один атрибут @root со значением "1.2.643.100.3"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.2) Элемент id должен содержать один
                атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e381')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/id[2][@nullFlavor]"
                  priority="219"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e393']">
            <schxslt:rule pattern="d13e393">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/id[2][@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[2][@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e393">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/id[2][@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@extension">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e393')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc[not(@nullFlavor)]"
                  priority="218"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e402']">
            <schxslt:rule pattern="d13e402">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e402">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:IdentityCardType) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityCardType) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.1) Элемент
                identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:IdentityCardType
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Series) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Series) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.2) Элемент
                identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:Series
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Number) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Number) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.3) Элемент
                identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:Number
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IssueOrgName) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IssueOrgName) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.4) Элемент
                identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgName
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IssueOrgCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IssueOrgCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.5) Элемент
                identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgCode
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:IssueDate) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IssueDate) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.6) Элемент
                identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:IssueDate
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e402')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType"
                  priority="217"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e427']">
            <schxslt:rule pattern="d13e427">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e427">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.1) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011', '1.2.643.5.1.13.2.1.1.736'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011', '1.2.643.5.1.13.2.1.1.736']</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.1) Элемент identity:IdentityCardType обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.48"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.1) Элемент
                identity:IdentityCardType обязан содержать один атрибут @codeSystemName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.1) Элемент identity:IdentityCardType
                обязан содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.1) Элемент
                identity:IdentityCardType обязан содержать один атрибут @codeSystemVersion с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.1) Элемент
                identity:IdentityCardType обязан содержать один атрибут @displayName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e427')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series[not(@nullFlavor)]"
                  priority="216"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e453']">
            <schxslt:rule pattern="d13e453">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e453">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.2) Элемент identity:Series должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e453')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number"
                  priority="215"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e462']">
            <schxslt:rule pattern="d13e462">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e462">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.3) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.3) Элемент identity:Number должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e462')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]"
                  priority="214"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e474']">
            <schxslt:rule pattern="d13e474">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e474">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.4) Элемент identity:IssueOrgName должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e474')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]"
                  priority="213"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e483']">
            <schxslt:rule pattern="d13e483">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e483">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.5) Элемент identity:IssueOrgCode должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e483')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate"
                  priority="212"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e492']">
            <schxslt:rule pattern="d13e492">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e492">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.6) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.3.6) Элемент identity:IssueDate обязан
                содержать один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e492')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy[not(@nullFlavor)]"
                  priority="211"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e504']">
            <schxslt:rule pattern="d13e504">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e504">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:InsurancePolicyType) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:InsurancePolicyType) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicy ОБЯЗАН содержать один [1..1] элемент
                identity:InsurancePolicyType
                (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Series) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Series) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.2) Элемент
                identity:InsurancePolicy МОЖЕТ содержать не более одного [0..1] элемента
                identity:Series (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Number) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Number) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.3) Элемент
                identity:InsurancePolicy ОБЯЗАН содержать один [1..1] элемент identity:Number
                (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e504')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType"
                  priority="210"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e520']">
            <schxslt:rule pattern="d13e520">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e520">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.1) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = '1.2.643.5.1.13.13.11.1035')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = '1.2.643.5.1.13.13.11.1035'</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.1)
                Элемент identity:InsurancePolicyType обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1035"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @codeSystemName с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @code с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @codeSystemVersion с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @displayName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e520')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series"
                  priority="209"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e545']">
            <schxslt:rule pattern="d13e545">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e545">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.2) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.2) Элемент identity:Series должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e545')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number"
                  priority="208"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e557']">
            <schxslt:rule pattern="d13e557">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e557">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.3) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.4.3) Элемент identity:Number должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e557')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]"
                  priority="207"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e569']">
            <schxslt:rule pattern="d13e569">
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
            <schxslt:rule pattern="d13e569">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5) Элемент addr должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5) Элемент addr должен содержать один атрибут @use с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:Type) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:Type) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.1) Элемент addr ОБЯЗАН
                содержать один [1..1] элемент address:Type
                (ClinicalDocument/recordTarget/patientRole/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/recordTarget/patientRole/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.3) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/recordTarget/patientRole/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/recordTarget/patientRole/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.5) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/recordTarget/patientRole/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e569')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr/address:Type"
                  priority="206"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e597']">
            <schxslt:rule pattern="d13e597">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr/address:Type" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/address:Type</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e597">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/address:Type</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.1) Элемент
                ClinicalDocument/recordTarget/patientRole/addr/address:Type не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415', '1.2.643.5.1.13.13.99.2.241'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415', '1.2.643.5.1.13.13.99.2.241']</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.1) Элемент address:Type обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1504"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.1) Элемент address:Type
                обязан содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.1) Элемент address:Type обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.1) Элемент address:Type
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.1) Элемент address:Type обязан
                содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e597')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine"
                  priority="205"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e622']">
            <schxslt:rule pattern="d13e622">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e622">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.2) Элемент
                ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.2) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e622')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr/address:stateCode"
                  priority="204"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e635']">
            <schxslt:rule pattern="d13e635">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr/address:stateCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/address:stateCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e635">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/address:stateCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.3) Элемент
                ClinicalDocument/recordTarget/patientRole/addr/address:stateCode не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.3) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.3) Элемент address:stateCode
                обязан содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.3) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.3) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.3) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e635')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr/postalCode[not(@nullFlavor)]"
                  priority="203"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e660']">
            <schxslt:rule pattern="d13e660">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr/postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e660">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.4) Элемент postalCode должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e660')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr/fias:Address[not(@nullFlavor)]"
                  priority="202"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e669']">
            <schxslt:rule pattern="d13e669">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr/fias:Address[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e669">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:AOGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:AOGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.5.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/recordTarget/patientRole/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:HOUSEGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:HOUSEGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.5.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/recordTarget/patientRole/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e669')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID"
                  priority="201"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e681']">
            <schxslt:rule pattern="d13e681">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e681">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.5.1) Элемент
                ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.5.1) Элемент fias:AOGUID должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e681')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]"
                  priority="200"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e693']">
            <schxslt:rule pattern="d13e693">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e693">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.5.5.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e693')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/telecom"
                  priority="199"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e702']">
            <schxslt:rule pattern="d13e702">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/telecom" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/telecom</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e702">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/telecom</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.6) Элемент
                ClinicalDocument/recordTarget/patientRole/telecom не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.6) Элемент telecom должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.6) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.6) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e702')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient"
                  priority="198"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e721']">
            <schxslt:rule pattern="d13e721">
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
            <schxslt:rule pattern="d13e721">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7) Элемент
                ClinicalDocument/recordTarget/patientRole/patient не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1) Элемент patient ОБЯЗАН
                содержать один [1..1] элемент name
                (ClinicalDocument/recordTarget/patientRole/patient) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(administrativeGenderCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(administrativeGenderCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.2) Элемент
                patient ДОЛЖЕН содержать один [1..1] элемент administrativeGenderCode
                (ClinicalDocument/recordTarget/patientRole/patient) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(birthTime) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(birthTime) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.3) Элемент patient ДОЛЖЕН
                содержать один [1..1] элемент birthTime
                (ClinicalDocument/recordTarget/patientRole/patient) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e721')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/name"
                  priority="197"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e739']">
            <schxslt:rule pattern="d13e739">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e739">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1) Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(family) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(family) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/recordTarget/patientRole/patient/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(given) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(given) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/recordTarget/patientRole/patient/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Patronymic) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Patronymic) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.3) Элемент
                name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/recordTarget/patientRole/patient/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e739')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/name/family"
                  priority="196"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e757']">
            <schxslt:rule pattern="d13e757">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/name/family" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name/family</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e757">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name/family</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.1) Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/family не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.1) Элемент family должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e757')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/name/given"
                  priority="195"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e769']">
            <schxslt:rule pattern="d13e769">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/name/given" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name/given</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e769">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name/given</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.2) Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/given не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e769')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic"
                  priority="194"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e781']">
            <schxslt:rule pattern="d13e781">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e781">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.3) Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e781')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]"
                  priority="193"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e793']">
            <schxslt:rule pattern="d13e793">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e793">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.11.1040', '1.2.643.5.1.13.2.1.1.156'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.11.1040', '1.2.643.5.1.13.2.1.1.156']</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.2) Элемент administrativeGenderCode должен содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1040"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.2) Элемент
                administrativeGenderCode должен содержать один атрибут @codeSystemName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.2) Элемент administrativeGenderCode
                должен содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.2) Элемент
                administrativeGenderCode должен содержать один атрибут @codeSystemVersion с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.2) Элемент
                administrativeGenderCode должен содержать один атрибут @displayName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e793')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[@nullFlavor]"
                  priority="192"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e815']">
            <schxslt:rule pattern="d13e815">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e815">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@code">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="@displayName">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e815')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]"
                  priority="191"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e827']">
            <schxslt:rule pattern="d13e827">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e827">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.7.3) Элемент birthTime должен содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e827')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]"
                  priority="190"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e836']">
            <schxslt:rule pattern="d13e836">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e836">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@value">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e836')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization"
                  priority="189"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e845']">
            <schxslt:rule pattern="d13e845">
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
            <schxslt:rule pattern="d13e845">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.1) Элемент providerOrganization ОБЯЗАН содержать один [1..1]
                элемент id (ClinicalDocument/recordTarget/patientRole/providerOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id[@root = '1.2.643.5.1.13.2.1.1.1504.101']) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[@root = '1.2.643.5.1.13.2.1.1.1504.101']) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование:
                У1-12.1.8.2) Элемент providerOrganization МОЖЕТ содержать не более одного [0..1]
                элемента id (ClinicalDocument/recordTarget/patientRole/providerOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Props) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Props) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3) Элемент
                providerOrganization ДОЛЖЕН содержать один [1..1] элемент identity:Props
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.4) Элемент providerOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom) &gt;= 0)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom) &gt;= 0</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.5) Элемент
                providerOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom (ClinicalDocument/recordTarget/patientRole/providerOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6) Элемент
                providerOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e845')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]"
                  priority="188"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e873']">
            <schxslt:rule pattern="d13e873">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e873">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.1) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(@extension != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@extension != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@extension) then                         @extension != ''                     else                         (not(@extension)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@extension) then                         @extension != ''                     else                         (not(@extension))</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e873')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root = '1.2.643.5.1.13.2.1.1.1504.101']"
                  priority="187"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e891']">
            <schxslt:rule pattern="d13e891">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root = '1.2.643.5.1.13.2.1.1.1504.101']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root = '1.2.643.5.1.13.2.1.1.1504.101']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e891">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root = '1.2.643.5.1.13.2.1.1.1504.101']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.2) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root='1.2.643.5.1.13.2.1.1.1504.101']
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root = '1.2.643.5.1.13.2.1.1.1504.101')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root = '1.2.643.5.1.13.2.1.1.1504.101'</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.2) Элемент
                id обязан содержать один атрибут @root со значением
                "1.2.643.5.1.13.2.1.1.1504.101"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.2) Элемент id обязан содержать
                один атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@assigningAuthorityName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@assigningAuthorityName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.2) Элемент id обязан
                содержать один атрибут @assigningAuthorityName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e891')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props[not(@nullFlavor)]"
                  priority="186"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e910']">
            <schxslt:rule pattern="d13e910">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e910">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:Ogrn) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Ogrn) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.1) Элемент
                identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Ogrn
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Ogrnip) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Ogrnip) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.2) Элемент
                identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Ogrnip
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Okpo) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Okpo) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.3) Элемент
                identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Okpo
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Okato) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Okato) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.4) Элемент
                identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Okato
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e910')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn"
                  priority="185"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e928']">
            <schxslt:rule pattern="d13e928">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e928">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.1) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.1) Элемент identity:Ogrn должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e928')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip"
                  priority="184"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e940']">
            <schxslt:rule pattern="d13e940">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e940">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.2) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.2) Элемент identity:Ogrnip должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e940')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo"
                  priority="183"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e952']">
            <schxslt:rule pattern="d13e952">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e952">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.3) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.3) Элемент identity:Okpo должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e952')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato"
                  priority="182"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e964']">
            <schxslt:rule pattern="d13e964">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e964">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.4) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.3.4) Элемент identity:Okato должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e964')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/name"
                  priority="181"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e976']">
            <schxslt:rule pattern="d13e976">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e976">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.4) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/name не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.4) Элемент name должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e976')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom"
                  priority="180"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e989']">
            <schxslt:rule pattern="d13e989">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e989">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.5) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.5) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.5) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.5) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e989')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr"
                  priority="179"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1007']">
            <schxslt:rule pattern="d13e1007">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/addr" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1007">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6) Элемент addr должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6) Элемент addr должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1007')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine"
                  priority="178"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1035']">
            <schxslt:rule pattern="d13e1035">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1035">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.1) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1035')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode"
                  priority="177"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1047']">
            <schxslt:rule pattern="d13e1047">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1047">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.2) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1047')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode[not(@nullFlavor)]"
                  priority="176"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1072']">
            <schxslt:rule pattern="d13e1072">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1072">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1072')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address[not(@nullFlavor)]"
                  priority="175"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1081']">
            <schxslt:rule pattern="d13e1081">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1081">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:AOGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:AOGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:HOUSEGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:HOUSEGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1081')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID"
                  priority="174"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1094']">
            <schxslt:rule pattern="d13e1094">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1094">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.4.1) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1094')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]"
                  priority="173"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1106']">
            <schxslt:rule pattern="d13e1106">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1106">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-12.1.8.6.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1106')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author" priority="172" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1115']">
            <schxslt:rule pattern="d13e1115">
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
            <schxslt:rule pattern="d13e1115">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13) Элемент ClinicalDocument/author не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(time) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(time) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.1) Элемент author ДОЛЖЕН содержать
                один [1..1] элемент time (ClinicalDocument/author) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(assignedAuthor) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedAuthor) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2) Элемент author ОБЯЗАН
                содержать один [1..1] элемент assignedAuthor (ClinicalDocument/author) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1115')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/time" priority="171" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1130']">
            <schxslt:rule pattern="d13e1130">
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
            <schxslt:rule pattern="d13e1130">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/time</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@nullFlavor = 'NI')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor = 'NI'</xsl:attribute>
                     <svrl:text>(Требование: У1-13.1) Элемент time обязан содержать
                один атрибут @nullFlavor со значением "NI"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1130')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor"
                  priority="170"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1139']">
            <schxslt:rule pattern="d13e1139">
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
            <schxslt:rule pattern="d13e1139">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2) Элемент
                ClinicalDocument/author/assignedAuthor не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.1) Элемент assignedAuthor ОБЯЗАН содержать один [1..1] элемент
                id (ClinicalDocument/author/assignedAuthor) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id[@root = '1.2.643.100.3']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[@root = '1.2.643.100.3']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.2) Элемент
                assignedAuthor ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/author/assignedAuthor) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.3) Элемент assignedAuthor ОБЯЗАН
                содержать один [1..1] элемент code (ClinicalDocument/author/assignedAuthor) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4) Элемент assignedAuthor МОЖЕТ
                содержать не более одного [0..1] элемента addr
                (ClinicalDocument/author/assignedAuthor) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom) &gt;= 0)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom) &gt;= 0</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.5) Элемент assignedAuthor МОЖЕТ
                содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/author/assignedAuthor) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(assignedPerson) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedPerson) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6) Элемент assignedAuthor
                ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/author/assignedAuthor) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(representedOrganization) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(representedOrganization) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7) Элемент
                assignedAuthor МОЖЕТ содержать не более одного [0..1] элемента
                representedOrganization (ClinicalDocument/author/assignedAuthor) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1139')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) - 2) = '.70']"
                  priority="169"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1170']">
            <schxslt:rule pattern="d13e1170">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) - 2) = '.70']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) - 2) = '.70']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1170">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) - 2) = '.70']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.1) Элемент
                ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) -
                2)='.70'] не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.1)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.1) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1170')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/id[@root = '1.2.643.100.3']"
                  priority="168"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1189']">
            <schxslt:rule pattern="d13e1189">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/id[@root = '1.2.643.100.3']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[@root = '1.2.643.100.3']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1189">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[@root = '1.2.643.100.3']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.2) Элемент
                ClinicalDocument/author/assignedAuthor/id[@root='1.2.643.100.3'] не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root = '1.2.643.100.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root = '1.2.643.100.3'</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.2) Элемент id обязан
                содержать один атрибут @root со значением "1.2.643.100.3"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.2) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1189')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/code"
                  priority="167"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1204']">
            <schxslt:rule pattern="d13e1204">
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
            <schxslt:rule pattern="d13e1204">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.3) Элемент
                ClinicalDocument/author/assignedAuthor/code не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.3) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1002"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.3) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.3) Элемент code обязан содержать один
                атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.3) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.3) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1204')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/addr"
                  priority="166"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1229']">
            <schxslt:rule pattern="d13e1229">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/addr" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1229">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4) Элемент
                ClinicalDocument/author/assignedAuthor/addr не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4) Элемент addr должен содержать один атрибут @use с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/author/assignedAuthor/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/author/assignedAuthor/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/author/assignedAuthor/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/author/assignedAuthor/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1229')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/addr/streetAddressLine"
                  priority="165"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1257']">
            <schxslt:rule pattern="d13e1257">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/addr/streetAddressLine" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/streetAddressLine</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1257">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/streetAddressLine</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.1) Элемент
                ClinicalDocument/author/assignedAuthor/addr/streetAddressLine не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1257')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/addr/address:stateCode"
                  priority="164"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1269']">
            <schxslt:rule pattern="d13e1269">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/addr/address:stateCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/address:stateCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1269">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/address:stateCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.2) Элемент
                ClinicalDocument/author/assignedAuthor/addr/address:stateCode не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.2) Элемент address:stateCode
                обязан содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1269')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/addr/postalCode[not(@nullFlavor)]"
                  priority="163"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1294']">
            <schxslt:rule pattern="d13e1294">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/addr/postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1294">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.3) Элемент postalCode должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1294')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/addr/fias:Address[not(@nullFlavor)]"
                  priority="162"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1304']">
            <schxslt:rule pattern="d13e1304">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/addr/fias:Address[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1304">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:AOGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:AOGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/author/assignedAuthor/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:HOUSEGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:HOUSEGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/author/assignedAuthor/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1304')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID"
                  priority="161"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1316']">
            <schxslt:rule pattern="d13e1316">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1316">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.4.1) Элемент
                ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.4.1) Элемент fias:AOGUID должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1316')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]"
                  priority="160"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1328']">
            <schxslt:rule pattern="d13e1328">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1328">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1328')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/telecom"
                  priority="159"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1337']">
            <schxslt:rule pattern="d13e1337">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/telecom" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/telecom</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1337">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/telecom</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.5) Элемент
                ClinicalDocument/author/assignedAuthor/telecom не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.5) Элемент telecom должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.5) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.5) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1337')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/assignedPerson"
                  priority="158"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1355']">
            <schxslt:rule pattern="d13e1355">
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
            <schxslt:rule pattern="d13e1355">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1) Элемент assignedPerson ОБЯЗАН
                содержать один [1..1] элемент name
                (ClinicalDocument/author/assignedAuthor/assignedPerson) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1355')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/assignedPerson/name"
                  priority="157"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1367']">
            <schxslt:rule pattern="d13e1367">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/assignedPerson/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1367">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(family) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(family) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(given) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(given) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Patronymic) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Patronymic) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.3) Элемент
                name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1367')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/assignedPerson/name/family"
                  priority="156"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1386']">
            <schxslt:rule pattern="d13e1386">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/assignedPerson/name/family" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name/family</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1386">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name/family</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.1) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/family не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.1) Элемент family должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1386')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/assignedPerson/name/given"
                  priority="155"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1398']">
            <schxslt:rule pattern="d13e1398">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/assignedPerson/name/given" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name/given</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1398">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name/given</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.2) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/given не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1398')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic"
                  priority="154"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1410']">
            <schxslt:rule pattern="d13e1410">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1410">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.3) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.6.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1410')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization"
                  priority="153"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1422']">
            <schxslt:rule pattern="d13e1422">
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
            <schxslt:rule pattern="d13e1422">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@classCode = 'ORG')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode = 'ORG'</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.1) Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент id (ClinicalDocument/author/assignedAuthor/representedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.2) Элемент representedOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/author/assignedAuthor/representedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom) &gt;= 0)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom) &gt;= 0</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom (ClinicalDocument/author/assignedAuthor/representedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4) Элемент
                representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/author/assignedAuthor/representedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1422')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]"
                  priority="152"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1447']">
            <schxslt:rule pattern="d13e1447">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1447">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.1) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(@extension != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@extension != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@extension) then                         @extension != ''                     else                         (not(@extension)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@extension) then                         @extension != ''                     else                         (not(@extension))</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1447')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/name"
                  priority="151"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1465']">
            <schxslt:rule pattern="d13e1465">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1465">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.2) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/name не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.2) Элемент name должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1465')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/telecom"
                  priority="150"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1478']">
            <schxslt:rule pattern="d13e1478">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/telecom" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/telecom</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1478">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/telecom</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.3) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/telecom не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.3) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.3) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1478')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/addr"
                  priority="149"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1496']">
            <schxslt:rule pattern="d13e1496">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/addr" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1496">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1496')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine"
                  priority="148"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1524']">
            <schxslt:rule pattern="d13e1524">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1524">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.1) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1524')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode"
                  priority="147"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1536']">
            <schxslt:rule pattern="d13e1536">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1536">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.2) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1536')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode[not(@nullFlavor)]"
                  priority="146"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1561']">
            <schxslt:rule pattern="d13e1561">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1561">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1561')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address[not(@nullFlavor)]"
                  priority="145"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1570']">
            <schxslt:rule pattern="d13e1570">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1570">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:AOGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:AOGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:HOUSEGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:HOUSEGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1570')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID"
                  priority="144"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1583']">
            <schxslt:rule pattern="d13e1583">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1583">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.4.1) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1583')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]"
                  priority="143"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1595']">
            <schxslt:rule pattern="d13e1595">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1595">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-13.2.7.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1595')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian" priority="142" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1604']">
            <schxslt:rule pattern="d13e1604">
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
            <schxslt:rule pattern="d13e1604">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14) Элемент ClinicalDocument/custodian не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(assignedCustodian) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedCustodian) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1) Элемент custodian
                ОБЯЗАН содержать один [1..1] элемент assignedCustodian (ClinicalDocument/custodian)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1604')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian"
                  priority="141"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1616']">
            <schxslt:rule pattern="d13e1616">
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
            <schxslt:rule pattern="d13e1616">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1) Элемент
                ClinicalDocument/custodian/assignedCustodian не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(representedCustodianOrganization) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(representedCustodianOrganization) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1)
                Элемент assignedCustodian ОБЯЗАН содержать один [1..1] элемент
                representedCustodianOrganization (ClinicalDocument/custodian/assignedCustodian)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1616')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization"
                  priority="140"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1628']">
            <schxslt:rule pattern="d13e1628">
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
            <schxslt:rule pattern="d13e1628">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@classCode = 'ORG')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode = 'ORG'</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1) Элемент
                representedCustodianOrganization обязан содержать один атрибут @classCode со
                значением "ORG"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.1) Элемент representedCustodianOrganization ОБЯЗАН содержать
                один [1..1] элемент id
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.2) Элемент
                representedCustodianOrganization ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.3) Элемент
                representedCustodianOrganization МОЖЕТ содержать не более одного [0..1] элемента
                telecom
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4) Элемент
                representedCustodianOrganization ОБЯЗАН содержать один [1..1] элемент addr
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1628')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]"
                  priority="139"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1653']">
            <schxslt:rule pattern="d13e1653">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1653">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.1) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(@extension != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@extension != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@extension) then                         @extension != ''                     else                         (not(@extension)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@extension) then                         @extension != ''                     else                         (not(@extension))</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1653')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name"
                  priority="138"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1672']">
            <schxslt:rule pattern="d13e1672">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1672">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.2) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.2) Элемент name должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1672')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom"
                  priority="137"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1684']">
            <schxslt:rule pattern="d13e1684">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1684">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.3) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.3) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.3) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1684')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr"
                  priority="136"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1702']">
            <schxslt:rule pattern="d13e1702">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1702">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1702')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine"
                  priority="135"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1730']">
            <schxslt:rule pattern="d13e1730">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1730">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.1) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1730')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode"
                  priority="134"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1742']">
            <schxslt:rule pattern="d13e1742">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1742">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.2) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1742')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode[not(@nullFlavor)]"
                  priority="133"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1767']">
            <schxslt:rule pattern="d13e1767">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1767">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1767')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address[not(@nullFlavor)]"
                  priority="132"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1777']">
            <schxslt:rule pattern="d13e1777">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1777">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:AOGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:AOGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:HOUSEGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:HOUSEGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1777')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID"
                  priority="131"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1789']">
            <schxslt:rule pattern="d13e1789">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1789">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.4.1) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1789')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]"
                  priority="130"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1801']">
            <schxslt:rule pattern="d13e1801">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1801">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-14.1.1.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1801')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']"
                  priority="129"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1810']">
            <schxslt:rule pattern="d13e1810">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1810">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-15) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(intendedRecipient) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(intendedRecipient) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1) Элемент
                informationRecipient ОБЯЗАН содержать один [1..1] элемент intendedRecipient
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13'])
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1810')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient"
                  priority="128"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1822']">
            <schxslt:rule pattern="d13e1822">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1822">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(receivedOrganization) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(receivedOrganization) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1.1) Элемент
                intendedRecipient ОБЯЗАН содержать один [1..1] элемент receivedOrganization
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1822')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization"
                  priority="127"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1834']">
            <schxslt:rule pattern="d13e1834">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1834">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1.1) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(id[@root = '1.2.643.5.1.13']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[@root = '1.2.643.5.1.13']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1.1.1) Элемент
                receivedOrganization ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1.1.2) Элемент receivedOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1834')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root = '1.2.643.5.1.13']"
                  priority="126"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1850']">
            <schxslt:rule pattern="d13e1850">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root = '1.2.643.5.1.13']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root = '1.2.643.5.1.13']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1850">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root = '1.2.643.5.1.13']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1.1.1) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root = '1.2.643.5.1.13')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root = '1.2.643.5.1.13'</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1.1.1) Элемент id обязан
                содержать один атрибут @root со значением "1.2.643.5.1.13"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1850')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name"
                  priority="125"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1862']">
            <schxslt:rule pattern="d13e1862">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1862">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1.1.2) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-15.1.1.2) Элемент name должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1862')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]"
                  priority="124"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1874']">
            <schxslt:rule pattern="d13e1874">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1874">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-16) Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(intendedRecipient) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(intendedRecipient) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1) Элемент
                informationRecipient ОБЯЗАН содержать один [1..1] элемент intendedRecipient
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')])
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1874')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient"
                  priority="123"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1886']">
            <schxslt:rule pattern="d13e1886">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1886">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1) Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(receivedOrganization) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(receivedOrganization) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1) Элемент
                intendedRecipient ОБЯЗАН содержать один [1..1] элемент receivedOrganization
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1886')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization"
                  priority="122"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1898']">
            <schxslt:rule pattern="d13e1898">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1898">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1) Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(id[1]) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[1]) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1.1) Элемент receivedOrganization
                ДОЛЖЕН содержать один [1..1] элемент id
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1.2) Элемент receivedOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1898')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][not(@nullFlavor)]"
                  priority="121"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1913']">
            <schxslt:rule pattern="d13e1913">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1913">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1.1) Элемент id должен содержать один
                атрибут @root с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(@extension != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@extension != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@extension) then                         @extension != ''                     else                         (not(@extension)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@extension) then                         @extension != ''                     else                         (not(@extension))</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1913')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][@nullFlavor]"
                  priority="120"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1929']">
            <schxslt:rule pattern="d13e1929">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1929">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@root">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="@extension">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1929')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name"
                  priority="119"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1941']">
            <schxslt:rule pattern="d13e1941">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e1941">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1.2) Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-16.1.1.2) Элемент name должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1941')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator"
                  priority="118"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1953']">
            <schxslt:rule pattern="d13e1953">
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
            <schxslt:rule pattern="d13e1953">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17) Элемент
                ClinicalDocument/legalAuthenticator не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(time) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(time) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.1) Элемент legalAuthenticator ДОЛЖЕН
                содержать один [1..1] элемент time (ClinicalDocument/legalAuthenticator) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(signatureCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(signatureCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.2) Элемент legalAuthenticator
                ДОЛЖЕН содержать один [1..1] элемент signatureCode
                (ClinicalDocument/legalAuthenticator) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(assignedEntity) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedEntity) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3) Элемент
                legalAuthenticator ОБЯЗАН содержать один [1..1] элемент assignedEntity
                (ClinicalDocument/legalAuthenticator) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1953')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/time"
                  priority="117"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1971']">
            <schxslt:rule pattern="d13e1971">
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
            <schxslt:rule pattern="d13e1971">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/time</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@nullFlavor = 'NI')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor = 'NI'</xsl:attribute>
                     <svrl:text>(Требование: У1-17.1) Элемент time обязан содержать
                один атрибут @nullFlavor со значением "NI"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1971')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/signatureCode"
                  priority="116"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1980']">
            <schxslt:rule pattern="d13e1980">
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
            <schxslt:rule pattern="d13e1980">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/signatureCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@nullFlavor = 'NI')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor = 'NI'</xsl:attribute>
                     <svrl:text>(Требование: У1-17.2) Элемент signatureCode обязан
                содержать один атрибут @nullFlavor со значением "NI"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1980')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity"
                  priority="115"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e1989']">
            <schxslt:rule pattern="d13e1989">
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
            <schxslt:rule pattern="d13e1989">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.1) Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент
                id (ClinicalDocument/legalAuthenticator/assignedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id[@root = '1.2.643.100.3']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[@root = '1.2.643.100.3']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.2) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/legalAuthenticator/assignedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.3) Элемент assignedEntity ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/legalAuthenticator/assignedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4) Элемент assignedEntity МОЖЕТ
                содержать не более одного [0..1] элемента addr
                (ClinicalDocument/legalAuthenticator/assignedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom) &gt;= 0)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom) &gt;= 0</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.5) Элемент assignedEntity МОЖЕТ
                содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/legalAuthenticator/assignedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(assignedPerson) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(assignedPerson) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6) Элемент assignedEntity
                ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/legalAuthenticator/assignedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(representedOrganization) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(representedOrganization) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7) Элемент
                assignedEntity МОЖЕТ содержать не более одного [0..1] элемента
                representedOrganization (ClinicalDocument/legalAuthenticator/assignedEntity)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e1989')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']"
                  priority="114"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2021']">
            <schxslt:rule pattern="d13e2021">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2021">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root,
                string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.1)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.1) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2021')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/id[@root = '1.2.643.100.3']"
                  priority="113"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2039']">
            <schxslt:rule pattern="d13e2039">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/id[@root = '1.2.643.100.3']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[@root = '1.2.643.100.3']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2039">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[@root = '1.2.643.100.3']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/id[@root='1.2.643.100.3'] не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root = '1.2.643.100.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root = '1.2.643.100.3'</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.2) Элемент id обязан
                содержать один атрибут @root со значением "1.2.643.100.3"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.2) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2039')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/code"
                  priority="112"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2054']">
            <schxslt:rule pattern="d13e2054">
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
            <schxslt:rule pattern="d13e2054">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.3) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.3) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1002"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.3) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.3) Элемент code обязан содержать один
                атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.3) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.3) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2054')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/addr"
                  priority="111"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2079']">
            <schxslt:rule pattern="d13e2079">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/addr" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2079">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4) Элемент addr должен содержать один атрибут @use с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2079')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine"
                  priority="110"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2107']">
            <schxslt:rule pattern="d13e2107">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2107">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2107')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode"
                  priority="109"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2119']">
            <schxslt:rule pattern="d13e2119">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2119">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.2) Элемент address:stateCode
                обязан содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2119')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode[not(@nullFlavor)]"
                  priority="108"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2145']">
            <schxslt:rule pattern="d13e2145">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2145">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.3) Элемент postalCode должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2145')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address[not(@nullFlavor)]"
                  priority="107"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2154']">
            <schxslt:rule pattern="d13e2154">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2154">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:AOGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:AOGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:HOUSEGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:HOUSEGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2154')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID"
                  priority="106"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2166']">
            <schxslt:rule pattern="d13e2166">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2166">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.4.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.4.1) Элемент fias:AOGUID должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2166')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]"
                  priority="105"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2178']">
            <schxslt:rule pattern="d13e2178">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2178">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2178')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/telecom"
                  priority="104"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2187']">
            <schxslt:rule pattern="d13e2187">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/telecom" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/telecom</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2187">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/telecom</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.5) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/telecom не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.5) Элемент telecom должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.5) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.5) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2187')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson"
                  priority="103"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2205']">
            <schxslt:rule pattern="d13e2205">
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
            <schxslt:rule pattern="d13e2205">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1) Элемент assignedPerson ОБЯЗАН
                содержать один [1..1] элемент name
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2205')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name"
                  priority="102"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2218']">
            <schxslt:rule pattern="d13e2218">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2218">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(family) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(family) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(given) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(given) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Patronymic) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Patronymic) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.3) Элемент
                name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2218')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family"
                  priority="101"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2236']">
            <schxslt:rule pattern="d13e2236">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2236">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.1) Элемент family должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2236')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given"
                  priority="100"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2248']">
            <schxslt:rule pattern="d13e2248">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2248">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2248')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic"
                  priority="99"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2260']">
            <schxslt:rule pattern="d13e2260">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2260">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.3) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.6.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2260')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization"
                  priority="98"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2272']">
            <schxslt:rule pattern="d13e2272">
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
            <schxslt:rule pattern="d13e2272">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization не должен
                иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@classCode = 'ORG')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode = 'ORG'</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.1) Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.2) Элемент representedOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom) &gt;= 0)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom) &gt;= 0</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4) Элемент
                representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2272')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]"
                  priority="97"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2297']">
            <schxslt:rule pattern="d13e2297">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2297">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@root != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(@extension != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@extension != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@extension) then                         @extension != ''                     else                         (not(@extension)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@extension) then                         @extension != ''                     else                         (not(@extension))</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2297')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name"
                  priority="96"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2316']">
            <schxslt:rule pattern="d13e2316">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2316">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.2) Элемент name должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2316')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom"
                  priority="95"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2328']">
            <schxslt:rule pattern="d13e2328">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2328">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.3) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.3) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.3) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2328')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr"
                  priority="94"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2346']">
            <schxslt:rule pattern="d13e2346">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2346">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2346')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine"
                  priority="93"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2374']">
            <schxslt:rule pattern="d13e2374">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2374">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2374')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode"
                  priority="92"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2386']">
            <schxslt:rule pattern="d13e2386">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2386">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2386')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]"
                  priority="91"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2411']">
            <schxslt:rule pattern="d13e2411">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2411">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2411')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]"
                  priority="90"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2421']">
            <schxslt:rule pattern="d13e2421">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2421">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:AOGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:AOGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:HOUSEGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:HOUSEGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2421')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID"
                  priority="89"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2433']">
            <schxslt:rule pattern="d13e2433">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2433">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.4.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2433')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]"
                  priority="88"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2445']">
            <schxslt:rule pattern="d13e2445">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2445">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-17.3.7.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2445')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']"
                  priority="87"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2454']">
            <schxslt:rule pattern="d13e2454">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2454">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18) Элемент
                ClinicalDocument/participant[@typeCode='IND'] не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@typeCode = 'IND')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@typeCode = 'IND'</xsl:attribute>
                     <svrl:text>(Требование: У1-18) Элемент participant обязан
                содержать один атрибут @typeCode со значением "IND"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(associatedEntity) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(associatedEntity) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1) Элемент participant
                ОБЯЗАН содержать один [1..1] элемент associatedEntity
                (ClinicalDocument/participant[@typeCode='IND']) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2454')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity"
                  priority="86"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2469']">
            <schxslt:rule pattern="d13e2469">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2469">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@classCode = 'GUAR')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode = 'GUAR'</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1) Элемент associatedEntity обязан
                содержать один атрибут @classCode со значением "GUAR"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.1) Элемент associatedEntity ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:DocInfo) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:DocInfo) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2) Элемент
                associatedEntity ДОЛЖЕН содержать один [1..1] элемент identity:DocInfo
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(scopingOrganization) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(scopingOrganization) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3) Элемент
                associatedEntity МОЖЕТ содержать не более одного [0..1] элемента scopingOrganization
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2469')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/code"
                  priority="85"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2490']">
            <schxslt:rule pattern="d13e2490">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2490">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/code не должен иметь
                атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = '1.2.643.5.1.13.13.11.1039')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = '1.2.643.5.1.13.13.11.1039'</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.1) Элемент
                code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1039"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.1) Элемент code обязан содержать один
                атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2490')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo[not(@nullFlavor)]"
                  priority="84"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2516']">
            <schxslt:rule pattern="d13e2516">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2516">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:IdentityDocType) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:IdentityDocType) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.1) Элемент
                identity:DocInfo ОБЯЗАН содержать один [1..1] элемент identity:IdentityDocType
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:InsurancePolicyType) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:InsurancePolicyType) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.2) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:InsurancePolicyType
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Series) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Series) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.3) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:Series
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:Number) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:Number) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.4) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:Number
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:INN) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:INN) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.5) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:INN
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:effectiveTime) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:effectiveTime) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.6) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:effectiveTime
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2516')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType"
                  priority="83"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2541']">
            <schxslt:rule pattern="d13e2541">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2541">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = '1.2.643.5.1.13.13.99.2.724')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = '1.2.643.5.1.13.13.99.2.724'</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.1)
                Элемент identity:IdentityDocType обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.724"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.1) Элемент
                identity:IdentityDocType обязан содержать один атрибут @codeSystemName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.1) Элемент identity:IdentityDocType
                обязан содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.1) Элемент
                identity:IdentityDocType обязан содержать один атрибут @codeSystemVersion с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.1) Элемент
                identity:IdentityDocType обязан содержать один атрибут @displayName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2541')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]"
                  priority="82"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2566']">
            <schxslt:rule pattern="d13e2566">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2566">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem = '1.2.643.5.1.13.13.11.1035')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = '1.2.643.5.1.13.13.11.1035'</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.2)
                Элемент identity:InsurancePolicyType должен содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1035"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.2) Элемент
                identity:InsurancePolicyType должен содержать один атрибут @codeSystemName с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.2) Элемент
                identity:InsurancePolicyType должен содержать один атрибут @code с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.2) Элемент
                identity:InsurancePolicyType должен содержать один атрибут @codeSystemVersion с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.2) Элемент
                identity:InsurancePolicyType должен содержать один атрибут @displayName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2566')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[@nullFlavor]"
                  priority="81"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2587']">
            <schxslt:rule pattern="d13e2587">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2587">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@code">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="@displayName">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2587')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Series[not(@nullFlavor)]"
                  priority="80"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2599']">
            <schxslt:rule pattern="d13e2599">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Series[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Series[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2599">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Series[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.3) Элемент identity:Series должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2599')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Number[not(@nullFlavor)]"
                  priority="79"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2608']">
            <schxslt:rule pattern="d13e2608">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Number[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Number[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2608">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Number[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.4) Элемент identity:Number должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2608')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:INN[not(@nullFlavor)]"
                  priority="78"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2618']">
            <schxslt:rule pattern="d13e2618">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:INN[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:INN[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2618">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:INN[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.5) Элемент identity:INN должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2618')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]"
                  priority="77"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2627']">
            <schxslt:rule pattern="d13e2627">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2627">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(identity:low) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:low) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.6.1) Элемент
                identity:effectiveTime ОБЯЗАН содержать один [1..1] элемент identity:low
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(identity:high) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(identity:high) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.6.2) Элемент
                identity:effectiveTime ДОЛЖЕН содержать один [1..1] элемент identity:high
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2627')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low"
                  priority="76"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2639']">
            <schxslt:rule pattern="d13e2639">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2639">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.6.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.6.1) Элемент identity:low обязан
                содержать один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2639')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]"
                  priority="75"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2651']">
            <schxslt:rule pattern="d13e2651">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2651">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.2.6.2) Элемент identity:high должен
                содержать один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2651')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[@nullFlavor]"
                  priority="74"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2660']">
            <schxslt:rule pattern="d13e2660">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2660">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@value">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2660')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization"
                  priority="73"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2669']">
            <schxslt:rule pattern="d13e2669">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2669">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(id[1]) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(id[1]) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.1) Элемент scopingOrganization
                ДОЛЖЕН содержать один [1..1] элемент id
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(name) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(name) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.2) Элемент scopingOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(telecom) &gt;= 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(telecom) &gt;= 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.3) Элемент scopingOrganization
                ДОЛЖЕН содержать не менее одного [1..*] элемента telecom
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(addr) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(addr) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4) Элемент scopingOrganization
                ДОЛЖЕН содержать один [1..1] элемент addr
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2669')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][not(@nullFlavor)]"
                  priority="72"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2691']">
            <schxslt:rule pattern="d13e2691">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2691">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root = '1.2.643.5.1.13.13.99.2.183')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root = '1.2.643.5.1.13.13.99.2.183'</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.1) Элемент id
                должен содержать один атрибут @root со значением
                "1.2.643.5.1.13.13.99.2.183"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.1) Элемент id должен содержать
                один атрибут @extension с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2691')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][@nullFlavor]"
                  priority="71"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2703']">
            <schxslt:rule pattern="d13e2703">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2703">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@extension">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2703')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/name"
                  priority="70"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2712']">
            <schxslt:rule pattern="d13e2712">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/name" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/name</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2712">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/name</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.2) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/name
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.2) Элемент name должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2712')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[not(@nullFlavor)]"
                  priority="69"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2724']">
            <schxslt:rule pattern="d13e2724">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2724">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.3) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.3) Элемент telecom должен содержать
                один атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2724')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[@nullFlavor]"
                  priority="68"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2739']">
            <schxslt:rule pattern="d13e2739">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2739">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@value">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value</xsl:attribute>
                     <svrl:text>Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2739')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr[not(@nullFlavor)]"
                  priority="67"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2748']">
            <schxslt:rule pattern="d13e2748">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2748">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(@use != '') = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(@use != '') = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(                     if (@use) then                         @use != ''                     else                         (not(@use)))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">                     if (@use) then                         @use != ''                     else                         (not(@use))</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(streetAddressLine) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(streetAddressLine) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(address:stateCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(address:stateCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(postalCode) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(postalCode) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:Address) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:Address) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2748')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/streetAddressLine"
                  priority="66"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2774']">
            <schxslt:rule pattern="d13e2774">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/streetAddressLine" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2774">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/streetAddressLine</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2774')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/address:stateCode"
                  priority="65"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2786']">
            <schxslt:rule pattern="d13e2786">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/address:stateCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2786">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/address:stateCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.2) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2786')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/postalCode[not(@nullFlavor)]"
                  priority="64"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2811']">
            <schxslt:rule pattern="d13e2811">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2811">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2811')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address[not(@nullFlavor)]"
                  priority="63"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2820']">
            <schxslt:rule pattern="d13e2820">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2820">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(fias:AOGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:AOGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(fias:HOUSEGUID) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(fias:HOUSEGUID) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2820')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID"
                  priority="62"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2832']">
            <schxslt:rule pattern="d13e2832">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2832">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.4.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2832')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]"
                  priority="61"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2844']">
            <schxslt:rule pattern="d13e2844">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2844">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У1-18.1.3.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2844')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component" priority="60" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2854']">
            <schxslt:rule pattern="d13e2854">
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
            <schxslt:rule pattern="d13e2854">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-19) Элемент ClinicalDocument/component не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(structuredBody) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(structuredBody) = 1</xsl:attribute>
                     <svrl:text>(Требование: У1-19.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент structuredBody (ClinicalDocument/component) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2854')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody"
                  priority="59"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2866']">
            <schxslt:rule pattern="d13e2866">
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
            <schxslt:rule pattern="d13e2866">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У1-19.1) Элемент
                ClinicalDocument/component/structuredBody не должен иметь атрибут
                @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(component[section/code/@code = 'DOCINFO']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(component[section/code/@code = 'DOCINFO']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У2-1)
                Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2866')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']"
                  priority="58"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2878']">
            <schxslt:rule pattern="d13e2878">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2878">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У2-1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO'] не
                должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(section) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(section) = 1</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO'])
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2878')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section"
                  priority="57"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2890']">
            <schxslt:rule pattern="d13e2890">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2890">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(title) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(title) = 1</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(entry[observation/code/@code = '7000']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code/@code = '7000']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-1)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(entry[observation/code/@code = '11000']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code/@code = '11000']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-2)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(entry[observation/code/@code = '8003']) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code/@code = '8003']) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-3)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(entry[observation/code/@code = '10000']) = [0, 1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(entry[observation/code/@code = '10000']) = [0, 1]</xsl:attribute>
                     <svrl:text>(Требование:
                У3-4) Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2890')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/code"
                  priority="56"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2918']">
            <schxslt:rule pattern="d13e2918">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2918">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/code
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code = 'DOCINFO')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code = 'DOCINFO'</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.1) Элемент code обязан содержать
                один атрибут @code со значением "DOCINFO"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2918')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/title"
                  priority="55"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2943']">
            <schxslt:rule pattern="d13e2943">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/title" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/title</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2943">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/title</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/title
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У2-1.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2943')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']"
                  priority="54"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2956']">
            <schxslt:rule pattern="d13e2956">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2956">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(observation) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000'])
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2956')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation"
                  priority="53"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2968']">
            <schxslt:rule pattern="d13e2968">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2968">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']/observation
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@classCode = 'OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode = 'OBS'</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode = 'EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode = 'EVN'</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']/observation) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.2) Элемент observation ДОЛЖЕН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']/observation)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2968')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/code"
                  priority="52"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e2989']">
            <schxslt:rule pattern="d13e2989">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e2989">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']/observation/code
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code = '7000')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code = '7000'</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.1) Элемент code обязан содержать один
                атрибут @code со значением "7000"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e2989')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[not(@nullFlavor)]"
                  priority="51"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3014']">
            <schxslt:rule pattern="d13e3014">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3014">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type = 'ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type = 'ST'</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.2) Элемент value должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3014')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[@nullFlavor]"
                  priority="50"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3026']">
            <schxslt:rule pattern="d13e3026">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3026">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type = 'ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type = 'ST'</xsl:attribute>
                     <svrl:text>(Требование: У3-1.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3026')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']"
                  priority="49"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3035']">
            <schxslt:rule pattern="d13e3035">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3035">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(observation) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000'])
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3035')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation"
                  priority="48"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3048']">
            <schxslt:rule pattern="d13e3048">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3048">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']/observation
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@classCode = 'OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode = 'OBS'</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode = 'EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode = 'EVN'</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']/observation) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.2) Элемент observation ДОЛЖЕН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']/observation)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3048')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/code"
                  priority="47"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3069']">
            <schxslt:rule pattern="d13e3069">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3069">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']/observation/code
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code = '11000')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code = '11000'</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.1) Элемент code обязан содержать один
                атрибут @code со значением "11000"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3069')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[not(@nullFlavor)]"
                  priority="46"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3094']">
            <schxslt:rule pattern="d13e3094">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3094">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type = 'ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type = 'ST'</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.2) Элемент value должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3094')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[@nullFlavor]"
                  priority="45"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3106']">
            <schxslt:rule pattern="d13e3106">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3106">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@xsi:type = 'ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type = 'ST'</xsl:attribute>
                     <svrl:text>(Требование: У3-2.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3106')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']"
                  priority="44"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3115']">
            <schxslt:rule pattern="d13e3115">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3115">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(observation) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003'])
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3115')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation"
                  priority="43"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3127']">
            <schxslt:rule pattern="d13e3127">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3127">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@classCode = 'OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode = 'OBS'</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode = 'EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode = 'EVN'</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3127')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/code"
                  priority="42"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3149']">
            <schxslt:rule pattern="d13e3149">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3149">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation/code
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code = '8003')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code = '8003'</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.1) Элемент code обязан содержать один
                атрибут @code со значением "8003"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3149')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/value"
                  priority="41"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3174']">
            <schxslt:rule pattern="d13e3174">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3174">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation/value
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@xsi:type = 'TS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type = 'TS'</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "TS"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-3.1.2) Элемент value обязан содержать один
                атрибут @value с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3174')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']"
                  priority="40"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3189']">
            <schxslt:rule pattern="d13e3189">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3189">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(count(observation) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(observation) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000'])
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3189')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation"
                  priority="39"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3201']">
            <schxslt:rule pattern="d13e3201">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3201">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@classCode = 'OBS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@classCode = 'OBS'</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@moodCode = 'EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@moodCode = 'EVN'</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(code) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(code) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation) </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(value) = 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(value) = 1</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation)
            </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3201')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/code"
                  priority="38"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3222']">
            <schxslt:rule pattern="d13e3222">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3222">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation/code
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@code = '10000')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code = '10000'</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.1) Элемент code обязан содержать один
                атрибут @code со значением "10000"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3222')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/value"
                  priority="37"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3247']">
            <schxslt:rule pattern="d13e3247">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3247">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation/value
                не должен иметь атрибут @nullFlavor</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(@xsi:type = 'ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@xsi:type = 'ST'</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>(Требование: У3-4.1.2) Элемент value должен содержать не пустое
                текстовое наполнение</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3247')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//id[not(@nullFlavor)]" priority="36" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3263']">
            <schxslt:rule pattern="d13e3263">
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
            <schxslt:rule pattern="d13e3263">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//id[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root, '^[0-2](\.([1-9][0-9]*|0))+$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^[0-2](\.([1-9][0-9]*|0))+$')</xsl:attribute>
                     <svrl:text>Элемент //id должен иметь
                синтаксически корректное значение атрибута @root, соответствующее регулярному
                выражению '([0-2])([.]([1-9][0-9]*|0))+'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3263')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//id[@root = '1.2.643.100.3'][not(@nullFlavor)]"
                  priority="35"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3272']">
            <schxslt:rule pattern="d13e3272">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//id[@root = '1.2.643.100.3'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//id[@root = '1.2.643.100.3'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3272">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//id[@root = '1.2.643.100.3'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@extension, '^([0-9]{3}[-\s]{0,1}){3}[0-9]{2}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@extension, '^([0-9]{3}[-\s]{0,1}){3}[0-9]{2}$')</xsl:attribute>
                     <svrl:text>Элемент
                //id[@root='1.2.643.100.3'] должен иметь синтаксически корректное значение атрибута
                @extension, соответствующее СНИЛС: должно состоять из 11 цифр, цифры могут
                группироваться по 3+3+3+2, между группами может ставиться пробел или тире.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3272')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//postalCode[not(@nullFlavor)]" priority="34" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3281']">
            <schxslt:rule pattern="d13e3281">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//postalCode[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3281">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//postalCode[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(., '^[0-9]{6}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(., '^[0-9]{6}$')</xsl:attribute>
                     <svrl:text>Элемент //postalCode должен иметь синтаксически
                корректное значение, соответствующее почтовому индексу: должно состоять из 6 цифр
                без разделителей.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3281')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//id[not(@nullFlavor)][@root = '1.2.643.5.1.13.13.17.1.1']"
                  priority="33"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3290']">
            <schxslt:rule pattern="d13e3290">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//id[not(@nullFlavor)][@root = '1.2.643.5.1.13.13.17.1.1']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//id[not(@nullFlavor)][@root = '1.2.643.5.1.13.13.17.1.1']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3290">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//id[not(@nullFlavor)][@root = '1.2.643.5.1.13.13.17.1.1']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@extension, '(^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$|^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$)'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@extension, '(^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$|^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$)')</xsl:attribute>
                     <svrl:text>Элемент //id[@root='1.2.643.5.1.13.13.17.1.1'] должен иметь синтаксически
                корректное значение атрибута @extension, соответствующее регулярному выражению
                '^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$' или
                '^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3290')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//effectiveTime[not(low | high | width)][not(@nullFlavor)][not(@xsi:type = ['IVL_TS', 'PIVL_TS'])]"
                  priority="32"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3299']">
            <schxslt:rule pattern="d13e3299">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//effectiveTime[not(low | high | width)][not(@nullFlavor)][not(@xsi:type = ['IVL_TS', 'PIVL_TS'])]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//effectiveTime[not(low | high | width)][not(@nullFlavor)][not(@xsi:type = ['IVL_TS', 'PIVL_TS'])]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3299">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//effectiveTime[not(low | high | width)][not(@nullFlavor)][not(@xsi:type = ['IVL_TS', 'PIVL_TS'])]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3299')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//birthTime[not(@nullFlavor)] | //time[not(@nullFlavor)] | //effectiveTime/low[not(@nullFlavor)] | //effectiveTime/high[not(@nullFlavor)] | //value[@xsi:type = 'TS'][not(@nullFlavor)]"
                  priority="31"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3308']">
            <schxslt:rule pattern="d13e3308">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//birthTime[not(@nullFlavor)] | //time[not(@nullFlavor)] | //effectiveTime/low[not(@nullFlavor)] | //effectiveTime/high[not(@nullFlavor)] | //value[@xsi:type = 'TS'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//birthTime[not(@nullFlavor)] | //time[not(@nullFlavor)] | //effectiveTime/low[not(@nullFlavor)] | //effectiveTime/high[not(@nullFlavor)] | //value[@xsi:type = 'TS'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3308">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//birthTime[not(@nullFlavor)] | //time[not(@nullFlavor)] | //effectiveTime/low[not(@nullFlavor)] | //effectiveTime/high[not(@nullFlavor)] | //value[@xsi:type = 'TS'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3308')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//identity:effectiveTime/identity:low[not(@nullFlavor)]"
                  priority="30"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3318']">
            <schxslt:rule pattern="d13e3318">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//identity:effectiveTime/identity:low[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:effectiveTime/identity:low[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3318">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:effectiveTime/identity:low[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3318')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//identity:effectiveTime/identity:high[not(@nullFlavor)]"
                  priority="29"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3327']">
            <schxslt:rule pattern="d13e3327">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//identity:effectiveTime/identity:high[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:effectiveTime/identity:high[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3327">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:effectiveTime/identity:high[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3327')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//identity:IssueDate[not(@nullFlavor)]"
                  priority="28"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3336']">
            <schxslt:rule pattern="d13e3336">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//identity:IssueDate[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:IssueDate[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3336">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:IssueDate[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3336')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//identity:IssueDate[not(@nullFlavor)]"
                  priority="27"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3345']">
            <schxslt:rule pattern="d13e3345">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//identity:IssueDate[not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:IssueDate[not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3345">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:IssueDate[not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3345')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument[id/@root][setId/@root]"
                  priority="26"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3354']">
            <schxslt:rule pattern="d13e3354">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument[id/@root][setId/@root]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[id/@root][setId/@root]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3354">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[id/@root][setId/@root]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="id/@root = setId/@root">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id/@root = setId/@root</xsl:attribute>
                     <svrl:text>Значения атрибута @root элементов
                ClinicalDocument/id и ClinicalDocument/setId должны различаться.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3354')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//identity:Props[not(@nullFlavor)][identity:Ogrn or identity:Ogrnip]"
                  priority="25"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3363']">
            <schxslt:rule pattern="d13e3363">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//identity:Props[not(@nullFlavor)][identity:Ogrn or identity:Ogrnip]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:Props[not(@nullFlavor)][identity:Ogrn or identity:Ogrnip]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3363">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//identity:Props[not(@nullFlavor)][identity:Ogrn or identity:Ogrnip]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not((identity:Ogrn and not(identity:Ogrnip)) or (identity:Ogrnip and not(identity:Ogrn)) or (identity:Ogrn and identity:Ogrnip/@nullFlavor) or (identity:Ogrn/@nullFlavor and identity:Ogrnip))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">(identity:Ogrn and not(identity:Ogrnip)) or (identity:Ogrnip and not(identity:Ogrn)) or (identity:Ogrn and identity:Ogrnip/@nullFlavor) or (identity:Ogrn/@nullFlavor and identity:Ogrnip)</xsl:attribute>
                     <svrl:text>ОГРН и ОГРНИП не могут быть указаны совместно.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3363')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//*[@xsi:type = 'PQ'][not(@nullFlavor)]"
                  priority="24"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3373']">
            <schxslt:rule pattern="d13e3373">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//*[@xsi:type = 'PQ'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'PQ'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3373">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'PQ'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='PQ', должен иметь не пустое
                значение атрибута @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@unit != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@unit != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='PQ', должен иметь не пустое
                значение атрибута @unit.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(translation) &lt;= 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(translation) &lt;= 1</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='PQ', должен
                иметь не более 1 элемента translation.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3373')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//*[@xsi:type = 'ST'][not(@nullFlavor)]"
                  priority="23"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3388']">
            <schxslt:rule pattern="d13e3388">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//*[@xsi:type = 'ST'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'ST'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3388">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'ST'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(. != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">. != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='ST', должен иметь не пустое
                значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3388')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//*[@xsi:type = 'BL'][not(@nullFlavor)]"
                  priority="22"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3397']">
            <schxslt:rule pattern="d13e3397">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//*[@xsi:type = 'BL'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'BL'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3397">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'BL'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value = ['true', 'false'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value = ['true', 'false']</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='BL', должен
                иметь значение атрибута @value равное 'true' или 'false'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3397')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//*[@xsi:type = 'CD'][not(@nullFlavor)]"
                  priority="21"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3406']">
            <schxslt:rule pattern="d13e3406">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//*[@xsi:type = 'CD'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'CD'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3406">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'CD'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='CD', должен иметь не
                пустое значение атрибута @codeSystem.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemName != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='CD', должен иметь не
                пустое значение атрибута @codeSystemName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='CD', должен иметь не пустое
                значение атрибута @code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystemVersion != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystemVersion != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='CD', должен иметь
                не пустое значение атрибута @codeSystemVersion.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='CD', должен иметь не
                пустое значение атрибута @displayName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3406')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//*[@xsi:type = 'INT'][not(@nullFlavor)]"
                  priority="20"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3427']">
            <schxslt:rule pattern="d13e3427">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//*[@xsi:type = 'INT'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'INT'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3427">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'INT'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='INT', должен иметь не пустое
                значение атрибута @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3427')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//*[@xsi:type = 'TS'][not(@nullFlavor)]"
                  priority="19"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3436']">
            <schxslt:rule pattern="d13e3436">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//*[@xsi:type = 'TS'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'TS'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3436">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'TS'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='TS', должен иметь не пустое
                значение атрибута @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3436')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="/" priority="18" mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3451']">
            <schxslt:rule pattern="d13e3451">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "/" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">/</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3451">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">/</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(ClinicalDocument)=1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(ClinicalDocument)=1</xsl:attribute>
                     <svrl:text>Main01-1. Документ должен иметь 1 корневой элемент ClinicalDocument.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3451')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)]"
                  priority="17"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3462']">
            <schxslt:rule pattern="d13e3462">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3462">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(count(low)&lt;= 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(low)&lt;= 1</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='IVL_TS', обязан
                иметь 1 элемент low.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(count(high)&lt;= 1)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">count(high)&lt;= 1</xsl:attribute>
                     <svrl:text>Элемент, содержащий @xsi:type='IVL_TS', обязан
                иметь 1 элемент high.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3462')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)][high][low]"
                  priority="16"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3474']">
            <schxslt:rule pattern="d13e3474">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)][high][low]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)][high][low]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3474">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)][high][low]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(low[not(@nullFlavor)]/@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">low[not(@nullFlavor)]/@value != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий
                @xsi:type='IVL_TS', должен иметь не пустое значение атрибута low/@value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(high[not(@nullFlavor)]/@value != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">high[not(@nullFlavor)]/@value != ''</xsl:attribute>
                     <svrl:text>Элемент, содержащий
                @xsi:type='IVL_TS', должен иметь не пустое значение атрибута high/@value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')</xsl:attribute>
                     <svrl:text>Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3474')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['8', '9', '10', '11', '12']]"
                  priority="15"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3494']">
            <schxslt:rule pattern="d13e3494">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['8', '9', '10', '11', '12']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['8', '9', '10', '11', '12']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3494">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['8', '9', '10', '11', '12']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/@nullFlavor = ['NA', 'NAV'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/@nullFlavor = ['NA', 'NAV']</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение
                атрибута @nullFlavor равное 'NA' или 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3494')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '1']"
                  priority="14"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3504']">
            <schxslt:rule pattern="d13e3504">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '1']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '1']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3504">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '1']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:IdentityDocType/@code = '1')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:IdentityDocType/@code = '1'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '1'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3504')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '3']"
                  priority="13"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3513']">
            <schxslt:rule pattern="d13e3513">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '3']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '3']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3513">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '3']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:IdentityDocType/@code = '2')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:IdentityDocType/@code = '2'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '2'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3513')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = ['4', '5', '6']]"
                  priority="12"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3522']">
            <schxslt:rule pattern="d13e3522">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = ['4', '5', '6']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = ['4', '5', '6']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3522">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = ['4', '5', '6']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:IdentityDocType/@code = '3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:IdentityDocType/@code = '3'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '3'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3522')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor][identity:DocInfo/identity:IdentityDocType/@code = '1']"
                  priority="11"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3531']">
            <schxslt:rule pattern="d13e3531">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor][identity:DocInfo/identity:IdentityDocType/@code = '1']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor][identity:DocInfo/identity:IdentityDocType/@code = '1']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3531">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor][identity:DocInfo/identity:IdentityDocType/@code = '1']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3531')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType][identity:DocInfo/identity:IdentityDocType/@code = ['2', '3']]"
                  priority="10"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3540']">
            <schxslt:rule pattern="d13e3540">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType][identity:DocInfo/identity:IdentityDocType/@code = ['2', '3']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType][identity:DocInfo/identity:IdentityDocType/@code = ['2', '3']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3540">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType][identity:DocInfo/identity:IdentityDocType/@code = ['2', '3']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType
                должен иметь значение атрибута @nullFlavor равное 'NA'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3540')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = '1']"
                  priority="9"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3549']">
            <schxslt:rule pattern="d13e3549">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = '1']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = '1']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3549">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = '1']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series != ''</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь не пустое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="identity:DocInfo/identity:Series/@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series/@nullFlavor</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series не
                должен иметь атрибут @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3549')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = ['2', '3', '4']]"
                  priority="8"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3562']">
            <schxslt:rule pattern="d13e3562">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = ['2', '3', '4']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = ['2', '3', '4']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3562">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = ['2', '3', '4']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series/@nullFlavor = 'NA')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series/@nullFlavor = 'NA'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь значение атрибута @nullFlavor равное 'NA'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3562')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']"
                  priority="7"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3571']">
            <schxslt:rule pattern="d13e3571">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3571">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series/@nullFlavor = 'NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series/@nullFlavor = 'NAV'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3571')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA']"
                  priority="6"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3580']">
            <schxslt:rule pattern="d13e3580">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3580">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Series != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Series != ''</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь не пустое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3580')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']"
                  priority="5"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3589']">
            <schxslt:rule pattern="d13e3589">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3589">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Number/@nullFlavor = 'NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Number/@nullFlavor = 'NAV'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3589')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor = 'NAV')]]"
                  priority="4"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3598']">
            <schxslt:rule pattern="d13e3598">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor = 'NAV')]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor = 'NAV')]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3598">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor = 'NAV')]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:Number != '')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Number != ''</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number
                должен иметь не пустое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="identity:DocInfo/identity:Number/@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:Number/@nullFlavor</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number не
                должен иметь атрибут @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3598')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']"
                  priority="3"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3610']">
            <schxslt:rule pattern="d13e3610">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3610">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:effectiveTime/@nullFlavor = ['NAV', 'NASK'])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:effectiveTime/@nullFlavor = ['NAV', 'NASK']</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime
                должен иметь значение атрибута @nullFlavor равное 'NAV' или 'NASK'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3610')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime/identity:high][identity:DocInfo/identity:InsurancePolicyType/@code = '2']"
                  priority="2"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3620']">
            <schxslt:rule pattern="d13e3620">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime/identity:high][identity:DocInfo/identity:InsurancePolicyType/@code = '2']" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime/identity:high][identity:DocInfo/identity:InsurancePolicyType/@code = '2']</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3620">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime/identity:high][identity:DocInfo/identity:InsurancePolicyType/@code = '2']</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor = 'NAV')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor = 'NAV'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3620')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[@nullFlavor]"
                  priority="1"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3629']">
            <schxslt:rule pattern="d13e3629">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[@nullFlavor]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[@nullFlavor]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3629">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[@nullFlavor]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@nullFlavor = 'NA')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor = 'NA'</xsl:attribute>
                     <svrl:text>Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь
                значение атрибута @nullFlavor равное 'NA'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3629')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['1', '3', '4', '5', '6']]"
                  priority="0"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e3640']">
            <schxslt:rule pattern="d13e3640">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['1', '3', '4', '5', '6']]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['1', '3', '4', '5', '6']]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e3640">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['1', '3', '4', '5', '6']]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="identity:DocInfo/@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:DocInfo/@nullFlavor</xsl:attribute>
                     <svrl:text> Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo не должен иметь 
                атрибут @nullFlavor при указании данного типа источника оплаты в соответствии с Таблицей "Обязательность заполнения элементов в зависимости от источника оплаты", представленной в руководстве по реализации в разделе "Сведения об источнике оплаты".</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e3640')"/>
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

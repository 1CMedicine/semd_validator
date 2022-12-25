<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:address="urn:hl7-ru:address"
                xmlns:error="https://doi.org/10.5281/zenodo.1495494#error"
                xmlns:f103="urn:f103"
                xmlns:fias="urn:fias"
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
            <skos:prefLabel>SchXslt/1.9.1 SAXON/HE 11.3</skos:prefLabel>
            <schxslt.compile.typed-variables xmlns="https://doi.org/10.5281/zenodo.1495494#">true</schxslt.compile.typed-variables>
         </dct:Agent>
      </dct:creator>
      <dct:created>2022-07-18T14:38:02.842+08:00</dct:created>
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
                        <skos:prefLabel>SchXslt/1.9.1 SAXON/HE 11.3</skos:prefLabel>
                        <schxslt.compile.typed-variables xmlns="https://doi.org/10.5281/zenodo.1495494#">true</schxslt.compile.typed-variables>
                     </dct:Agent>
                  </dct:creator>
                  <dct:created>2022-07-18T14:38:02.842+08:00</dct:created>
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
         <svrl:ns-prefix-in-attribute-values prefix="f103" uri="urn:f103"/>
         <svrl:ns-prefix-in-attribute-values prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
         <svrl:ns-prefix-in-attribute-values prefix="fias" uri="urn:fias"/>
         <svrl:ns-prefix-in-attribute-values prefix="address" uri="urn:hl7-ru:address"/>
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
         <schxslt:pattern id="d13e22">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e31">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e40">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e51">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e61">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e70">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e79">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e90">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <schxslt:pattern id="d13e99">
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
         <schxslt:pattern id="d13e118">
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
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]"
                  priority="11"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e13']">
            <schxslt:rule pattern="d13e13">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]</xsl:attribute>
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
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(f103:IdentityDoc/f103:IdentityCardTypeId/@code='1')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">f103:IdentityDoc/f103:IdentityCardTypeId/@code='1'</xsl:attribute>
                     <svrl:text>М01-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь значение атрибута @code равное '1': для оказания государственной услуги рождения на ЕПГУ для матери требуется указывать тип ДУЛ – паспорт гражданина РФ.</svrl:text>
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
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]"
                  priority="10"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e22']">
            <schxslt:rule pattern="d13e22">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e22">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(f103:IdentityDoc/f103:Series,'^[0-9]{4}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(f103:IdentityDoc/f103:Series,'^[0-9]{4}$')</xsl:attribute>
                     <svrl:text>М01-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Series должен иметь корректное значение серии ДУЛ.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e22')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Number]"
                  priority="9"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e31']">
            <schxslt:rule pattern="d13e31">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Number]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Number]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e31">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Number]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(f103:IdentityDoc/f103:Number,'^[0-9]{6}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(f103:IdentityDoc/f103:Number,'^[0-9]{6}$')</xsl:attribute>
                     <svrl:text>М01-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Number должен иметь корректное значение номера ДУЛ.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e31')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id]"
                  priority="8"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e40']">
            <schxslt:rule pattern="d13e40">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e40">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="f103:id/@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">f103:id/@nullFlavor</xsl:attribute>
                     <svrl:text>М01-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:id не должен иметь атрибут @nullFlavor: для оказания государственной услуги рождения на ЕПГУ требуется указывать СНИЛС матери.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e40')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]"
                  priority="7"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e51']">
            <schxslt:rule pattern="d13e51">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e51">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(f103:IdentityDoc/f103:IdentityCardTypeId/@code='1')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">f103:IdentityDoc/f103:IdentityCardTypeId/@code='1'</xsl:attribute>
                     <svrl:text>М01-2. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь значение атрибута @code равное '1': для оказания государственной услуги рождения на ЕПГУ для получателя требуется указывать тип ДУЛ – паспорт гражданина РФ.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e51')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]"
                  priority="6"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e61']">
            <schxslt:rule pattern="d13e61">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e61">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(f103:IdentityDoc/f103:Series,'^[0-9]{4}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(f103:IdentityDoc/f103:Series,'^[0-9]{4}$')</xsl:attribute>
                     <svrl:text>М01-2. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Series должен иметь корректное значение серии ДУЛ.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e61')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code='1']/f103:Number]"
                  priority="5"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e70']">
            <schxslt:rule pattern="d13e70">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code='1']/f103:Number]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code='1']/f103:Number]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e70">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code='1']/f103:Number]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(f103:IdentityDoc/f103:Number,'^[0-9]{6}$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(f103:IdentityDoc/f103:Number,'^[0-9]{6}$')</xsl:attribute>
                     <svrl:text>М01-2. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Number должен иметь корректное значение номера ДУЛ.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e70')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id"
                  priority="4"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e79']">
            <schxslt:rule pattern="d13e79">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e79">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>М01-1. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id не должен иметь атрибут @nullFlavor: для оказания государственной услуги рождения на ЕПГУ требуется указывать СНИЛС получателя.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e79')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]]"
                  priority="3"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e90']">
            <schxslt:rule pattern="d13e90">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e90">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId/@code, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId/@code))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId/@code, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId/@code)</xsl:attribute>
                     <svrl:text>М01-3. Для оказания государственной услуги рождения на ЕПГУ виды ДУЛ матери и получателя должны совпадать (получателем должна являться мать).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e90')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Series]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Series]]"
                  priority="2"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e99']">
            <schxslt:rule pattern="d13e99">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Series]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Series]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Series]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Series]]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e99">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Series]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Series]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Series, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Series))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Series, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Series)</xsl:attribute>
                     <svrl:text>М01-3. Для оказания государственной услуги рождения на ЕПГУ серии ДУЛ матери и получателя должны совпадать (получателем должна являться мать).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e99')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Number]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Number]]"
                  priority="1"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e109']">
            <schxslt:rule pattern="d13e109">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Number]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Number]]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Number]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Number]]</xsl:attribute>
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
                  <xsl:attribute name="context">ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Number]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Number]]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Number, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Number))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Number, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Number)</xsl:attribute>
                     <svrl:text>М01-3. Для оказания государственной услуги рождения на ЕПГУ номера ДУЛ матери и получателя должны совпадать (получателем должна являться мать).</svrl:text>
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
   <xsl:template match="ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id/@extension]][participant[@typeCode='IRCP']/associatedEntity/id/@extension]"
                  priority="0"
                  mode="d13e13">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e118']">
            <schxslt:rule pattern="d13e118">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id/@extension]][participant[@typeCode='IRCP']/associatedEntity/id/@extension]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id/@extension]][participant[@typeCode='IRCP']/associatedEntity/id/@extension]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e118">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id/@extension]][participant[@typeCode='IRCP']/associatedEntity/id/@extension]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:id/@extension, participant[@typeCode='IRCP']/associatedEntity/id/@extension))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:id/@extension, participant[@typeCode='IRCP']/associatedEntity/id/@extension)</xsl:attribute>
                     <svrl:text>М01-3. Для оказания государственной услуги рождения на ЕПГУ СНИЛС матери и получателя должны совпадать (получателем должна являться мать).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e118')"/>
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

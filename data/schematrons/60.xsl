<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:error="https://doi.org/10.5281/zenodo.1495494#error"
                xmlns:fias="urn:hl7-ru:fias"
                xmlns:identity="urn:hl7-ru:identity"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                xmlns:schxslt="https://doi.org/10.5281/zenodo.1495494"
                xmlns:schxslt-api="https://doi.org/10.5281/zenodo.1495494#api"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
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
      <dct:created>2022-12-25T22:33:31.311616778+08:00</dct:created>
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
                  <dct:created>2022-12-25T22:33:31.311616778+08:00</dct:created>
               </rdf:Description>
            </dct:source>
         </svrl:metadata>
      </xsl:variable>
      <xsl:variable name="report" as="element(schxslt:report)">
         <schxslt:report>
            <xsl:call-template name="d13e6"/>
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
         <svrl:ns-prefix-in-attribute-values prefix="fias" uri="urn:hl7-ru:fias"/>
         <svrl:ns-prefix-in-attribute-values prefix="identity" uri="urn:hl7-ru:identity"/>
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
   <xsl:template name="d13e6">
      <schxslt:document>
         <schxslt:pattern id="d13e6">
            <xsl:if test="exists(base-uri(root()))">
               <xsl:attribute name="documents" select="base-uri(root())"/>
            </xsl:if>
            <xsl:for-each select="root()">
               <svrl:active-pattern xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="documents" select="base-uri(.)"/>
               </svrl:active-pattern>
            </xsl:for-each>
         </schxslt:pattern>
         <xsl:apply-templates mode="d13e6" select="root()"/>
      </schxslt:document>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/patient | //assignedPerson"
                  priority="53"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/patient | //assignedPerson" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient | //assignedPerson</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/patient | //assignedPerson</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(name[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">name[last()=1]</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/recordTarget/patientRole/patient, //assignedPerson ДОЛЖНЫ содержать ровно один элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(name/family[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">name/family[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/patient/name и //assignedPerson/name ДОЛЖНЫ содержать ровно один элемент family, НЕ ДОЛЖЕН содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(name/given[last()=1] or name/given[last()=2])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">name/given[last()=1] or name/given[last()=2]</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/recordTarget/patientRole/patient/name и //assignedPerson/name ДОЛЖНЫ иметь один или два элемента given НЕ ДОЛЖЕН содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole | ClinicalDocument/author/assignedAuthor | ClinicalDocument/participant[@typeCode='REF']/associatedEntity | //assignedPerson"
                  priority="52"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole | ClinicalDocument/author/assignedAuthor | ClinicalDocument/participant[@typeCode='REF']/associatedEntity | //assignedPerson" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole | ClinicalDocument/author/assignedAuthor | ClinicalDocument/participant[@typeCode='REF']/associatedEntity | //assignedPerson</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole | ClinicalDocument/author/assignedAuthor | ClinicalDocument/participant[@typeCode='REF']/associatedEntity | //assignedPerson</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(addr[last()&gt;0] and addr[last()&lt;3] or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr[last()&gt;0] and addr[last()&lt;3] or empty(addr)</xsl:attribute>
                     <svrl:text>Элементам ClinicalDocument/recordTarget/patientRole; ClinicalDocument/author/assignedAuthor; ClinicalDocument/participant[@typeCode=”REF”]/associatedEntity; //assignedPerson СЛЕДУЕТ иметь до двух [0..2] элементов addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(telecom[last()&gt;0] or empty(telecom))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">telecom[last()&gt;0] or empty(telecom)</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/recordTarget/patientRole; ClinicalDocument/author/assignedAuthor; ClinicalDocument/participant[@typeCode=”REF”]/associatedEntity; //assignedPerson СЛЕДУЕТ иметь любое количество [0..*] элементов telecom.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//addr" priority="51" mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//addr" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//addr</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//addr</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(streetAddressLine[last()=1] and empty(streetAddressLine/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">streetAddressLine[last()=1] and empty(streetAddressLine/@nullFlavor)</xsl:attribute>
                     <svrl:text>Все элементы //addr ДОЛЖНЫ иметь один [1..1] streetAddressLine (НЕ ДОЛЖЕН [0..0] содержать @nullFlavor).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(state[last()=1] and empty(state/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">state[last()=1] and empty(state/@nullFlavor)</xsl:attribute>
                     <svrl:text>Все элементы //addr ДОЛЖНЫ иметь один [1..1] state (НЕ ДОЛЖЕН [0..0] содержать @nullFlavor).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(fias:Address[last()=1] or fias:Address/@nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">fias:Address[last()=1] or fias:Address/@nullFlavor</xsl:attribute>
                     <svrl:text>Все элементы //addr ДОЛЖНЫ иметь один [1..1] fias:Address. Если элементы fias:Address НЕ МОЖЕТ быть заполнен данными, то атрибут @nullFlavor ДОЛЖЕН быть заполнен значением из справочника "Причины отсутствия информации (Null Flavor)" (идентификатор справочника "1.2.643.5.1.13.13.99.2.286", поле "Код").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(fias:Address/fias:AOGUID[last()=1] and empty(fias:Address/fias:AOGUID/@nullFlavor) or fias:Address/@nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">fias:Address/fias:AOGUID[last()=1] and empty(fias:Address/fias:AOGUID/@nullFlavor) or fias:Address/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент fias:Address ДОЛЖЕН хранить в себе один [1..1] элемент fias:AOGUID (НЕ ДОЛЖЕН [0..0] содержать @nullFlavor).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(fias:Address/fias:HOUSEGUID[last()=1] or fias:Address/fias:HOUSEGUID/@nullFlavor or fias:Address/@nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">fias:Address/fias:HOUSEGUID[last()=1] or fias:Address/fias:HOUSEGUID/@nullFlavor or fias:Address/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент fias:Address ДОЛЖЕН хранить в себе один [1..1] fias:HOUSEGUID. Если элемент fias:HOUSEGUID НЕ МОЖЕТ быть заполнен данными, то атрибут //fias:HOUSEGUID/@nullFlavor ДОЛЖЕН быть заполнен значением из справочника "Причины отсутствия информации (Null Flavor)" (идентификатор справочника "1.2.643.5.1.13.13.99.2.286", поле "Код").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//telecom" priority="50" mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//telecom" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//telecom</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//telecom</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')</xsl:attribute>
                     <svrl:text>Все элементы //telecom со схемой "tel:" ДОЛЖНЫ соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра ДОЛЖНА остаться в номере телефона после удаления всех разделителей.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time | ClinicalDocument/effectiveTime"
                  priority="49"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time | ClinicalDocument/effectiveTime" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time | ClinicalDocument/effectiveTime</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time | ClinicalDocument/effectiveTime</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@value, '^[0-9]{8}(([0-9]{4})([0-9]{2})?[+][0-9]{4})?$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@value, '^[0-9]{8}(([0-9]{4})([0-9]{2})?[+][0-9]{4})?$')</xsl:attribute>
                     <svrl:text>Времена и временные интервалы в элементах ClinicalDocument/author/time, ClinicalDocument/legalAuthenticator/time, ClinicalDocument/effectiveTime, если такие представлены, ДОЛЖНЫ быть указаны с точностью до дня, СЛЕДУЕТ указывать с точностью до минут. Если указано с точностью до минут, то ДОЛЖНА быть указанная временная зона, МОЖНО уточнить времена до секунд.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/author/time, ClinicalDocument/legalAuthenticator/time, ClinicalDocument/effectiveTime НЕ ДОЛЖНЫ содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument" priority="48" mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(realmCode[last()=1] and realmCode/@code='RU')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">realmCode[last()=1] and realmCode/@code='RU'</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/realmCode ДОЛЖЕН быть представлен со значением атрибута @code равным “RU”.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(typeId[last()=1] and typeId/@extension='POCD_HD000040' and typeId/@root='2.16.840.1.113883.1.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">typeId[last()=1] and typeId/@extension='POCD_HD000040' and typeId/@root='2.16.840.1.113883.1.3'</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/typeId ДОЛЖЕН быть представлен со значением атрибута @extension равным “POCD_HD000040”, атрибута @root равным “2.16.840.1.113883.1.3”.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(templateId[last()=1] and templateId/@root='1.2.643.5.1.13.13.14.38.3')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">templateId[last()=1] and templateId/@root='1.2.643.5.1.13.13.14.38.3'</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/templateId ДОЛЖЕН быть представлен со значением атрибута @root равным ”1.2.643.5.1.13.13.14.38.3”.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(id[last()=1] and matches(id/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=1] and matches(id/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')</xsl:attribute>
                     <svrl:text>Один элемент ClinicalDocument/id ДОЛЖЕН быть. Атрибут @root ДОЛЖЕН быть заполнен синтаксически корректным OID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(id/@extension)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id/@extension</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/id/@extension ДОЛЖЕН быть представлен.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1]</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/code ДОЛЖЕН быть представлен.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@code='38' and code/@codeSystem='1.2.643.5.1.13.13.99.2.195')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@code='38' and code/@codeSystem='1.2.643.5.1.13.13.99.2.195'</xsl:attribute>
                     <svrl:text>Атрибут ClinicalDocument/code/@code ДОЛЖЕН быть равен коду ”38”, атрибут @codeSystem ДОЛЖЕН быть равен ”1.2.643.5.1.13.13.99.2.195”.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(title[last()=1] and title!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">title[last()=1] and title!=''</xsl:attribute>
                     <svrl:text> Один [1..1] элемент ClinicalDocument/title ДОЛЖЕН быть представлен и ДОЛЖЕН содержать не пустое наполнение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(effectiveTime[last()=1] and empty(effectiveTime/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">effectiveTime[last()=1] and empty(effectiveTime/@nullFlavor)</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/effectiveTime ДОЛЖЕН быть представлен и НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(confidentialityCode[last()=1] and confidentialityCode/@codeSystemName!='' and confidentialityCode/@codeSystem='1.2.643.5.1.13.13.99.2.285' and confidentialityCode/@code!='' and confidentialityCode/@displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">confidentialityCode[last()=1] and confidentialityCode/@codeSystemName!='' and confidentialityCode/@codeSystem='1.2.643.5.1.13.13.99.2.285' and confidentialityCode/@code!='' and confidentialityCode/@displayName!=''</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/confidentialityCode ДОЛЖЕН быть представлен и ДОЛЖЕН содержать значение из справочника НСИ (атрибут @codeSystem ДОЛЖЕН быть представлен и иметь значение “1.2.643.5.1.13.13.99.2.285”, атрибуты @code, @codeSystemName, @displayName ДОЛЖНЫ быть представлены не пустыми значениями).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(languageCode[last()=1] and languageCode/@code='ru-RU')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">languageCode[last()=1] and languageCode/@code='ru-RU'</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/languageCode ДОЛЖЕН быть представлен. Атрибут @code ДОЛЖЕН быть равен “ru-RU”.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(versionNumber[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">versionNumber[last()=1]</xsl:attribute>
                     <svrl:text>Один элемент ClinicalDocument/versionNumber ДОЛЖНЫ быть представлен</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(setId/@extension)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">setId/@extension</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/setId ДОЛЖЕН содержать атрибут @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(setId[last()=1] and matches(setId/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">setId[last()=1] and matches(setId/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')</xsl:attribute>
                     <svrl:text>Один элемент ClinicalDocument/setId должен быть представлен. Атрибут @root ДОЛЖЕН быть заполнен синтаксически корректным OID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(setId/@root!=id/@root)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">setId/@root!=id/@root</xsl:attribute>
                     <svrl:text>Значение атрибута ClinicalDocument/setId/@root ДОЛЖНО быть отлично от значения атрибута ClinicalDocument/id/@root.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(versionNumber/@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">versionNumber/@value!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/versionNumber. Атрибут @value ДОЛЖЕН быть представлен не пустым значением.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(recordTarget/patientRole[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">recordTarget/patientRole[last()=1]</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/recordTarget/patientRole ДОЛЖЕН быть представлен.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(author[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">author[last()=1]</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/author ДОЛЖЕН быть представлен.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(custodian/assignedCustodian/representedCustodianOrganization[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">custodian/assignedCustodian/representedCustodianOrganization[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ДОЛЖЕН быть представлен.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(informationRecipient/intendedRecipient/receivedOrganization[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">informationRecipient/intendedRecipient/receivedOrganization[last()=1]</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization ДОЛЖЕН быть представлен.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(legalAuthenticator[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">legalAuthenticator[last()=1]</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/legalAuthenticator ДОЛЖЕН быть представлен.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(component/structuredBody[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">component/structuredBody[last()=1]</xsl:attribute>
                     <svrl:text>Один [1..1] элемент ClinicalDocument/component/structuredBody ДОЛЖЕН быть представлен.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole"
                  priority="47"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(id[last()=1] and id/@root='1.2.643.100.3' and id/@extension)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=1] and id/@root='1.2.643.100.3' and id/@extension</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole ДОЛЖЕН иметь один [1..1] элемент id, который ДОЛЖЕН быть страховым номером индивидуального лицевого счѐта (СНИЛС). Элемент ДОЛЖЕН иметь атрибуты @root и @extension. Атрибут @root ДОЛЖЕН быть заполнен значением "1.2.643.100.3".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="id/@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id/@nullFlavor</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/id НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(identity:IdentityDoc[last()=1] or empty(identity:IdentityDoc))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityDoc[last()=1] or empty(identity:IdentityDoc)</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole МОЖЕТ иметь один [0..1] элемент identity:IdentityDoc.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr[last()&gt;0] and addr[last()&lt;3] or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr[last()&gt;0] and addr[last()&lt;3] or empty(addr)</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole МОЖЕТ иметь от нуля до двух [0..2] элементов addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr/@use='H' or addr/@use='HP' or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr/@use='H' or addr/@use='HP' or empty(addr)</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/addr ДОЛЖЕН иметь атрибут @use со значением “H” или “HP".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(telecom[last()&gt;0] or empty(telecom))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">telecom[last()&gt;0] or empty(telecom)</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole МОЖЕТ иметь произвольное количество [0..*] элементов telecom.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(patient[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">patient[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole ДОЛЖЕН иметь один [1..1] элемент patient.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(patient/name[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">patient/name[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/patient ДОЛЖЕН содержать один [1..1] элемент name.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(providerOrganization[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">providerOrganization[last()=1]</xsl:attribute>
                     <svrl:text>&gt;ClinicalDocument/recordTarget/patientRole ДОЛЖЕН быть указан один [1..1] элемент providerOrganization.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc"
                  priority="46"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(identity:IdentityCardTypeId[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IdentityCardTypeId[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:IdentityCardTypeId.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:Series[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:Series[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:Series.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:Number[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:Number[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:Number.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IssueOrgName[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IssueOrgName[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:IssueOrgName.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IssueOrgCode[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IssueOrgCode[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:IssueOrgCode.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:IssueDate[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:IssueDate[last()=1]</xsl:attribute>
                     <svrl:text>ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:IssueDate.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId"
                  priority="45"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='CD'</xsl:attribute>
                     <svrl:text>"ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "CD".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.48')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.48'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId. Атрибут codeSystem ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.48".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='' and @codeSystemName!='' and @displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!='' and @codeSystemName!='' and @displayName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId. Атрибуты @code, @codeSystemName, @displayName ДОЛЖНЫ быть представлены не пустыми значениями.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId НЕ ДОЛЖЕН содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series"
                  priority="44"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='ST' or @nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='ST' or @nullFlavor</xsl:attribute>
                     <svrl:text>"Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "ST"или МОЖЕТ содержать один [0..1] атрибут @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number"
                  priority="43"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='ST')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='ST'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "ST".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number НЕ ДОЛЖЕН содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName"
                  priority="42"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='ST' or @nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='ST' or @nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "ST" или МОЖЕТ содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode"
                  priority="41"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='ST' or @nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='ST' or @nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "ST" или МОЖЕТ содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate"
                  priority="40"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='TS')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='TS'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate  ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "TS".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@value[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@value[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate ДОЛЖЕН иметь один [1..1] атрибут @value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization"
                  priority="39"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(id[last()=1] or id/@nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=1] or id/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization ДОЛЖЕН содержать один [1..1] элемент id, элемент id МОЖЕТ содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(identity:Ogrn[last()=1] and identity:Ogrn!='' and identity:Ogrnip/@nullFlavor or identity:Ogrnip[last()=1] and identity:Ogrnip!='' and identity:Ogrn/@nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">identity:Ogrn[last()=1] and identity:Ogrn!='' and identity:Ogrnip/@nullFlavor or identity:Ogrnip[last()=1] and identity:Ogrnip!='' and identity:Ogrn/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization ДОЛЖЕН содержать один [1..1] элемент identity:Ogrn и ДОЛЖЕН иметь непустое наполнение или ДОЛЖЕН содержать один [1..1] элемент identity:Ogrnip и ДОЛЖЕН иметь непустое наполнение. Элементы identity:Ogrn и identity:Ogrnip НЕ ДОЛЖНЫ быть заполнены совместно, один из элементов ДОЛЖЕН содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(name[last()=1] and empty(name/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">name[last()=1] and empty(name/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization ДОЛЖЕН содержать один [1..1] элемент name, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(telecom[last()&gt;0] and empty(telecom/@nullFlavor) or empty(telecom))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">telecom[last()&gt;0] and empty(telecom/@nullFlavor) or empty(telecom)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization МОЖЕТ иметь хотя бы один [0..*] элементов telecom, НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr[last()=1] and empty(addr/@nullFlavor) or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr[last()=1] and empty(addr/@nullFlavor) or empty(addr)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization МОЖЕТ иметь один [0..1] элемент addr, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn"
                  priority="38"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='ST' or @nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='ST' or @nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn ДОЛЖЕН содержать один [1..1] атрибут @xsi:type со значением "ST". МОЖЕТ содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip"
                  priority="37"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='ST' or @nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='ST' or @nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip ДОЛЖЕН содержать один [1..1] атрибут @xsi:type со значением "ST". МОЖЕТ содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author" priority="36" mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(time[last()=1] and empty(time/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">time[last()=1] and empty(time/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author ДОЛЖЕН содержать один [1..1] элемент time. Элемент time НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(assignedAuthor[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">assignedAuthor[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author ДОЛЖЕН содержать один [1..1] элемент assignedAuthor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor"
                  priority="35"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(id[last()=2])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=2]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor ДОЛЖЕН содержать два элемента id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor ДОЛЖЕН содержать один [1..1] элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr[last()&lt;3])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr[last()&lt;3]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor МОЖЕТ иметь от нуля до двух [0..2] элементов addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr/@use='H' or addr/@use='HP' or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr/@use='H' or addr/@use='HP' or empty(addr)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/addr ДОЛЖНЫ иметь атрибут @use со значением “H” или “HP”.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(telecom[last()&gt;0] or empty(telecom))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">telecom[last()&gt;0] or empty(telecom)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor МОЖЕТ иметь хотя бы один [0..*] элемент telecom.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(assignedPerson[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">assignedPerson[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor ДОЛЖЕН содержать один [1..1] элемент assignedPerson.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(representedOrganization[last()=1] and representedOrganization/@classCode='ORG')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">representedOrganization[last()=1] and representedOrganization/@classCode='ORG'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor ДОЛЖЕН содержать один [1..1] элемент representedOrganization (атрибут classCode ДОЛЖЕН иметь значение «ORG»).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/id[1]"
                  priority="34"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[1]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@extension[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/id[1] ДОЛЖЕН содержать атрибут @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70)?$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70)?$')</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/id[1]. Атрибут @root уникального идентификатора ДОЛЖЕН быть заполнен синтаксически корректным OID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/id[1] НЕ ДОЛЖЕН содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/id[2]"
                  priority="33"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/id[2]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root='1.2.643.100.3' and @extension!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root='1.2.643.100.3' and @extension!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/id[2] ДОЛЖЕН содержать элемент root со значением "1.2.643.100.3" и элемент extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/id[2] НЕ ДОЛЖЕН содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/code"
                  priority="32"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.11.1002' and @code!='' and @codeSystemName!='' and @displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.11.1002' and @code!='' and @codeSystemName!='' and @displayName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/code ДОЛЖЕН содержать атрибут @codeSystem, который ДОЛЖЕН быть представлен и иметь значение «1.2.643.5.1.13.13.11.1002», атрибуты @code, @codeSystemName, @displayName ДОЛЖНЫ быть представлены не пустыми значениями.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/code НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization"
                  priority="31"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(id[last()=1] or id/@nullFlavor='OTH')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=1] or id/@nullFlavor='OTH'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/representedOrganization ДОЛЖЕН содержать один [1..1] элемент id. МОЖЕТ содежать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(name[last()=1] and empty(name/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">name[last()=1] and empty(name/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/representedOrganization ДОЛЖЕН содержать один [1..1] элемент name.НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(telecom[last()&gt;0] or empty(telecom))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">telecom[last()&gt;0] or empty(telecom)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/representedOrganization МОЖЕТ иметь любое количество [0..*] элементов telecom. </svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr[last()=1] or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr[last()=1] or empty(addr)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/representedOrganization МОЖЕТ иметь один [0..1] элемент addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/author/assignedAuthor/representedOrganization/id"
                  priority="30"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/author/assignedAuthor/representedOrganization/id</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') and @root!='' or @nullFlavor='OTH')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') and @root!='' or @nullFlavor='OTH'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id ДОЛЖЕН иметь атрибуты @root. Атрибут @root ДОЛЖЕН быть заполнен синтаксически корректным OID и ДОЛЖЕН быть представлен непустым значением.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization"
                  priority="29"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(id[last()=1] or id/@nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=1] or id/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ДОЛЖЕН содержать один [1..1] элемент id. Атрибту id МОЖЕТ содержать @nullFlavor</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(id/matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') or id/@nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id/matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') or id/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id. Атрибут @root ДОЛЖЕН быть заполнен синтаксически корректным OID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(telecom[last()=1] or empty(telecom))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">telecom[last()=1] or empty(telecom)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization СЛЕДУЕТ содержать один [0..1] элемент telecom.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr[last()=1] and empty(addr/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr[last()=1] and empty(addr/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ДОЛЖЕН содержать один [1..1] элемент addr. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(name[last()=1] and empty(name/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">name[last()=1] and empty(name/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ДОЛЖЕН иметь один [1..1] элемент name. Элемент name НЕ ДОЛЖЕН содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization"
                  priority="28"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(id[last()=1] and empty(id/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=1] and empty(id/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization ДОЛЖЕН содержать один [1..1] элемент id. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(name[last()=1] and empty(name/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">name[last()=1] and empty(name/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization ДОЛЖЕН содержать один [1..1] элемент name. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator"
                  priority="27"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(time[last()=1] and empty(time/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">time[last()=1] and empty(time/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator ДОЛЖЕН содержать один [1..1] элемент time, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(signatureCode[last()=1] and signatureCode/@code='S' and empty(signatureCode/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">signatureCode[last()=1] and signatureCode/@code='S' and empty(signatureCode/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator ДОЛЖЕН содержать один [1..1] элемент signatureCode (ДОЛЖЕН иметь атрибут @code со значением “S”), который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(assignedEntity[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">assignedEntity[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator ДОЛЖЕН содержать один [1..1] элемент assignedEntity.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity"
                  priority="26"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(id[last()=2])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=2]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity ДОЛЖЕН содежать 2 элемента id.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity ДОЛЖЕН содежать один [1..1] элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr[last()=1] or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr[last()=1] or empty(addr)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity СЛЕДУЕТ указать один [0..1] элемент addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr/@use='H' or addr/@use='HP' or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr/@use='H' or addr/@use='HP' or empty(addr)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr ДОЛЖНЫ иметь атрибут @use со значением “H” или “HP”.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(telecom[last()&gt;0] or empty(telecom))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">telecom[last()&gt;0] or empty(telecom)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity МОЖЕТ содержать хотя бы один [0..*] элемент telecom.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(assignedPerson[last()=1] and empty(assignedPerson/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">assignedPerson[last()=1] and empty(assignedPerson/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity ДОЛЖЕН содержать один [1..1] элемент name, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(representedOrganization[last()=1] and representedOrganization/@classCode='ORG')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">representedOrganization[last()=1] and representedOrganization/@classCode='ORG'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity ДОЛЖЕН один [1..1] элемент representedOrganization (атрибут @classCode ДОЛЖЕН иметь значение “ORG”).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]"
                  priority="25"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[1]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$'))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1]. Атрибут @root уникального идентификатора ДОЛЖЕН быть заполнен синтаксически корректным OID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@extension)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@extension</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] ДОЛЖЕН иметь атрибуты @extension.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]"
                  priority="24"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/id[2]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@root='1.2.643.100.3' and @extension)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@root='1.2.643.100.3' and @extension</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] ДОЛЖЕН иметь атрибуты @root и @extension. @root ДОЛЖЕН иметь значение «1.2.643.100.3».</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/code"
                  priority="23"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.11.1002')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.11.1002'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code ДОЛЖЕН содержать атрибут @codeSystem=“1.2.643.5.1.13.13.11.1002".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='' and @codeSystemName!='' and @displayName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!='' and @codeSystemName!='' and @displayName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code ДОЛЖЕН содержать атрибуты @code, @codeSystemName, @displayName. Данные атрибуты ДОЛЖНЫ быть представлены не пустыми значениями.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization"
                  priority="22"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(id[last()=1] or id/@nullFlavor='OTH')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">id[last()=1] or id/@nullFlavor='OTH'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization ДОЛЖЕН содержать один [1..1] элемент id, МОЖЕТ содержать @nullFlavor="OTH"</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(matches(id/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') or id/@nullFlavor='OTH')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">matches(id/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') or id/@nullFlavor='OTH'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id ДОЛЖЕН содержать атрибут @root и ДОЛЖЕН быть заполнен синтаксически корректным OID.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(name[last()=1] and empty(name/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">name[last()=1] and empty(name/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization ДОЛЖЕН содержать один [1..1] элемент name, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(telecom[last()&gt;0] and empty(telecom/@nullFlavor) or empty(telecom))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">telecom[last()&gt;0] and empty(telecom/@nullFlavor) or empty(telecom)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization МОЖЕТ иметь хотя бы один [0..*] элементов telecom, НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(addr[last()=1] or empty(addr))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">addr[last()=1] or empty(addr)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization МОЖЕТ иметь один [0..1] элемент addr.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody"
                  priority="21"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
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
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(component[last()=2])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">component[last()=2]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody ДОЛЖЕН содержать два элемента component.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1] | ClinicalDocument/component/structuredBody/component[2]"
                  priority="20"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1] | ClinicalDocument/component/structuredBody/component[2]" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1] | ClinicalDocument/component/structuredBody/component[2]</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1] | ClinicalDocument/component/structuredBody/component[2]</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(section[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">section[last()=1]</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[1] и ClinicalDocument/component/structuredBody/component[2] ДОЛЖНЫ иметь один [1..1] section.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section"
                  priority="19"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(code[last()=1] and code/@code='DOCINFO' and code/@codeSystem='1.2.643.5.1.13.13.99.2.197' and empty(code/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1] and code/@code='DOCINFO' and code/@codeSystem='1.2.643.5.1.13.13.99.2.197' and empty(code/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section ДОЛЖЕН иметь один [1..1] code (атрибут @code равным «DOCINFO», @codeSystem ДОЛЖЕН быть представлен и иметь значение «1.2.643.5.1.13.13.99.2.197»). Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(title[last()=1] and empty(title/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">title[last()=1] and empty(title/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section ДОЛЖЕН содержать один [1..1] элемент title. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(text[last()=1] and empty(text/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">text[last()=1] and empty(text/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section ДОЛЖЕН содержать один [1..1] элемент text, элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entry[last()=1] or entry[last()=2])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entry[last()=1] or entry[last()=2]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section ДОЛЖЕН содержать один или два [1..2] элемента entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entry[1]/observation[last()=1] and entry[1]/observation/@classCode='OBS' and entry[1]/observation/@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entry[1]/observation[last()=1] and entry[1]/observation/@classCode='OBS' and entry[1]/observation/@moodCode='EVN'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1] ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entry[2]/observation[last()=1] and entry[2]/observation/@classCode='OBS' and entry[2]/observation/@moodCode='EVN' or empty(entry[2]))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entry[2]/observation[last()=1] and entry[2]/observation/@classCode='OBS' and entry[2]/observation/@moodCode='EVN' or empty(entry[2])</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2] ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[2]/section"
                  priority="18"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[2]/section" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[2]/section</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[2]/section</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(code[last()=1] and code/@code='MEDDISPENSE' and code/@codeSystem='1.2.643.5.1.13.13.99.2.197' and empty(code/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1] and code/@code='MEDDISPENSE' and code/@codeSystem='1.2.643.5.1.13.13.99.2.197' and empty(code/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[2]/section ДОЛЖЕН иметь один [1..1] code (атрибут @code равным "MEDDISPENSE", @codeSystem ДОЛЖЕН быть представлен и иметь значение "1.2.643.5.1.13.13.99.2.197"). Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(title[last()=1] and empty(title/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">title[last()=1] and empty(title/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[2]/section ДОЛЖЕН содержать один [1..1] элемент title. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(text[last()=1] and empty(text/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">text[last()=1] and empty(text/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[2]/section ДОЛЖЕН содержать один [1..1] элемент text. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entry[last()=1] or empty(entry))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entry[last()=1] or empty(entry)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[2]/section МОЖЕТ иметь один элемент [0..1] entry.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation"
                  priority="17"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation ДОЛЖЕН иметь один [1..1] элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(value[last()=1] and value/@*='BL' and empty(value/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">value[last()=1] and value/@*='BL' and empty(value/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation ДОЛЖЕН иметь один [1..1] элемент value, в который вносится статус рецепта медицинским работником. Атрибут value/@xsi:type ДОЛЖЕН иметь значение "BL". Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(value/@value='true' or value/@value='false')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">value/@value='true' or value/@value='false'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/value/@value МОЖЕТ принимать значения "true" (Рецепт действителен) и "false" (Рецепт недействителен).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entryRelationship[last()=2] or entryRelationship[last()=3])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entryRelationship[last()=2] or entryRelationship[last()=3]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation ДОЛЖЕН иметь 2 или 3 элемента entryRelationship.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entryRelationship[1]/@typeCode='COMP' and entryRelationship[2]/@typeCode='COMP')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entryRelationship[1]/@typeCode='COMP' and entryRelationship[2]/@typeCode='COMP'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1] и ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2] ДОЛЖНЫ иметь атрибут @typeCode='COMP'.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entryRelationship[3]/@typeCode='COMP' or empty(entryRelationship[3]))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entryRelationship[3]/@typeCode='COMP' or empty(entryRelationship[3])</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3] есди указан, ДОЛЖЕН иметь атрибут @typeCode="COMP".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entryRelationship[1]/observation[last()=1] and entryRelationship[1]/observation/@classCode='OBS' and entryRelationship[1]/observation/@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entryRelationship[1]/observation[last()=1] and entryRelationship[1]/observation/@classCode='OBS' and entryRelationship[1]/observation/@moodCode='EVN'</xsl:attribute>
                     <svrl:text>ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1] ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entryRelationship[2]/observation[last()=1] and entryRelationship[2]/observation/@classCode='OBS' and entryRelationship[2]/observation/@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entryRelationship[2]/observation[last()=1] and entryRelationship[2]/observation/@classCode='OBS' and entryRelationship[2]/observation/@moodCode='EVN'</xsl:attribute>
                     <svrl:text>ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2] ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entryRelationship[3]/observation[last()=1] and entryRelationship[3]/observation/@classCode='OBS' and entryRelationship[3]/observation/@moodCode='EVN' or empty(entryRelationship[3]))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entryRelationship[3]/observation[last()=1] and entryRelationship[3]/observation/@classCode='OBS' and entryRelationship[3]/observation/@moodCode='EVN' or empty(entryRelationship[3])</xsl:attribute>
                     <svrl:text>ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(reference[last()=1] and reference/@typeCode='REFR' or reference/@nullFlavor)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">reference[last()=1] and reference/@typeCode='REFR' or reference/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation ДОЛЖЕН иметь элемент reference [1..1] (атрибут @typeCode ДОЛЖЕН иметь значение "REFR"), элемент reference ДОЛЖЕН иметь @nullFlavor, если не может быть заполнен данными.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code"
                  priority="16"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.166')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.166'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code  ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='' and @codeSystemVersion!='' and @codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!='' and @codeSystemVersion!='' and @codeSystemName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation"
                  priority="15"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation ДОЛЖЕН иметь один [1..1] элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@codeSystem='1.2.643.5.1.13.13.99.2.166')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@codeSystem='1.2.643.5.1.13.13.99.2.166'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@code='6001')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@code='6001'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code ДОЛЖЕН иметь атрибут @code, который ДОЛЖЕН иметь значение "6001".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/originalText/reference[last()=1] and code/originalText/reference/@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/originalText/reference[last()=1] and code/originalText/reference/@value!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="code/@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(value[last()=1] and value/@*='ST' and empty(value/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">value[last()=1] and value/@*='ST' and empty(value/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation ДОЛЖЕН иметь один [1..1] элемент value. Атрибут value/@xsi:type ДОЛЖЕН иметь значение "ST". Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation"
                  priority="14"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation ДОЛЖЕН иметь один [1..1] элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@codeSystem='1.2.643.5.1.13.13.99.2.166')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@codeSystem='1.2.643.5.1.13.13.99.2.166'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation/code ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@code='6002')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@code='6002'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation/code ДОЛЖЕН иметь атрибут @code, который ДОЛЖЕН иметь значение "6002".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/originalText/reference[last()=1] and code/originalText/reference/@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/originalText/reference[last()=1] and code/originalText/reference/@value!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="code/@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry/observation/entryRelationship[2]/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(value[last()=1] and value/@*='ST' and empty(value/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">value[last()=1] and value/@*='ST' and empty(value/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation ДОЛЖЕН иметь один [1..1] элемент value. Атрибут value/@xsi:type ДОЛЖЕН иметь значение "ST". Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation"
                  priority="13"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation ДОЛЖЕН иметь один [1..1] элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@codeSystem='1.2.643.5.1.13.13.99.2.166')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@codeSystem='1.2.643.5.1.13.13.99.2.166'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@code='6014')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@code='6014'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code ДОЛЖЕН иметь атрибут @code, который ДОЛЖЕН иметь значение "6014".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(code/originalText/reference[last()=1] and code/originalText/reference/@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/originalText/reference[last()=1] and code/originalText/reference/@value!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="code/@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code/@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
               <xsl:if test="not(value[last()=1] and value/@*='CD' and empty(value/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">value[last()=1] and value/@*='CD' and empty(value/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation ДОЛЖЕН иметь один [1..1] элемент value. Атрибут value/@xsi:type ДОЛЖЕН иметь значение "CD". Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value"
                  priority="12"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.654' and @code!='' and @displayName!='' and @codeSystemVersion!='' and @codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.654' and @code!='' and @displayName!='' and @codeSystemVersion!='' and @codeSystemName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.654"; ДОЛЖЕН иметь атрибуты @code, @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference"
                  priority="11"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(externalDocument[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">externalDocument[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference ДОЛЖЕН иметь один [1..1] элемент externalDocument.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(externalDocument/id[last()=1] and externalDocument/id/@root and externalDocument/id/@extension)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">externalDocument/id[last()=1] and externalDocument/id/@root and externalDocument/id/@extension</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference/externalDocument ДОЛЖЕН иметь элемент id (ДОЛЖЕН иметь атрибуты @root и @extension. Правила внесения информации в @root указано в Таблица 3).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(externalDocument/setId[last()=1] and externalDocument/setId/@root and externalDocument/setId/@extension)">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">externalDocument/setId[last()=1] and externalDocument/setId/@root and externalDocument/setId/@extension</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference/externalDocument ДОЛЖЕН иметь элемент setId (ДОЛЖЕН иметь атрибуты @root и @extension. Правила внесения информации в @root указано в Таблица 3).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation"
                  priority="10"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">code[last()=1]</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation ДОЛЖЕН иметь один элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(value[last()=1] and empty(value/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">value[last()=1] and empty(value/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation ДОЛЖЕН иметь один [1..1] элемент value. Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code"
                  priority="9"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.166')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.166'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code ДОЛЖЕН иметь атрибут @codeSystem ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName='Отсроченное обслуживание' and @code='6013')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName='Отсроченное обслуживание' and @code='6013'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code ДОЛЖЕН иметь атрибут @code ДОЛЖЕН иметь значение "6013", атрибут @displayName ДОЛЖЕН иметь значение "Отсроченное обслуживание".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='' and @codeSystemVersion!='' and @codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!='' and @codeSystemVersion!='' and @codeSystemName!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(originalText[last()=1]/reference[last()=1] and originalText/reference/@value!='' or empty(originalText))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">originalText[last()=1]/reference[last()=1] and originalText/reference/@value!='' or empty(originalText)</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value"
                  priority="8"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='CD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='CD'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation ДОЛЖЕН иметь атрибут value/@xsi:type, который ДОЛЖЕН иметь значение "CD".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.637')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.637'</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.637".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@code!='' and @codeSystemName!='' and @codeSystemVersion!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@code!='' and @codeSystemName!='' and @codeSystemVersion!=''</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation ДОЛЖЕН иметь value/@code, value/@codeSystemVersion, value/@codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//ClinicalDocument/component/structuredBody/component[2]/section/entry"
                  priority="7"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//ClinicalDocument/component/structuredBody/component[2]/section/entry" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(supply[last()=1] and supply/@classCode='SPLY' and supply/@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">supply[last()=1] and supply/@classCode='SPLY' and supply/@moodCode='EVN'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry ДОЛЖНЫ иметь элемент supply (атрибут @classCode ДОЛЖЕН иметь значение "SPLY" и атрибут @moodCode ДОЛЖЕН иметь значение "ENV").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply"
                  priority="6"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(quantity[last()=1] and quantity/@value!='' and empty(quantity/@nullFlavor))">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">quantity[last()=1] and quantity/@value!='' and empty(quantity/@nullFlavor)</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply ДОЛЖЕН иметь один [1..1] quantity (атрибут @value ДОЛЖЕН иметь непустое наполнение), в котором хранится информация о количестве отпущенного препарата в потрибительских упаковках. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(product[last()=1] and product/@typeCode='PRD')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">product[last()=1] and product/@typeCode='PRD'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply ДОЛЖЕН иметь один [1..1] product (атрибут @typeCode ДОЛЖЕН иметь значение "PRD").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(entryRelationship[last()=1] and entryRelationship/@typeCode='COMP')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">entryRelationship[last()=1] and entryRelationship/@typeCode='COMP'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply ДОЛЖЕН иметь один [1..1] entryRelationship (атрибут @typeCode ДОЛЖЕН иметь значение "COMP").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product"
                  priority="5"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(manufacturedProduct[last()=1] and manufacturedProduct/@classCode='MANU')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">manufacturedProduct[last()=1] and manufacturedProduct/@classCode='MANU'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product ДОЛЖЕН иметь элемент manufacturedProduct (атрибут @classCode ДОЛЖЕН иметь значение "MANU").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct"
                  priority="4"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(manufacturedMaterial[last()=1] and manufacturedMaterial/@classCode='MMAT' and manufacturedMaterial/@determinerCode='KIND')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">manufacturedMaterial[last()=1] and manufacturedMaterial/@classCode='MMAT' and manufacturedMaterial/@determinerCode='KIND'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct ДОЛЖЕН иметь элемент manufacturedMaterial (атрибуты @classCode ДОЛЖЕН иметь значение "MMAT" и атрибут determinerCode ДОЛЖЕН иметь значение "KIND").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(manufacturedMaterial/code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">manufacturedMaterial/code[last()=1]</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial ДОЛЖЕН иметь элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code"
                  priority="3"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.540' or @codeSystem='1.2.643.5.1.13.13.99.2.603' or @codeSystem='1.2.643.5.1.13.13.99.2.604')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.540' or @codeSystem='1.2.643.5.1.13.13.99.2.603' or @codeSystem='1.2.643.5.1.13.13.99.2.604'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.540" (При кодировании отпущенного лекарственного препарата) или ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.603"(При кодировании отпущенного специального питания), или ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.604" (При кодировании отпущенного медицинского изделия).</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(@displayName!='' and @code!='' and @codeSystemVersion!='' and @codeSystemName!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@displayName!='' and @code!='' and @codeSystemVersion!='' and @codeSystemName!=''</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code ДОЛЖЕН иметь атрибуты @code, @codeSystemVersion, @codeSystemName, @displayName которые ДОЛЖНЫ иметь ненулевое значение.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship"
                  priority="2"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(observation[last()=1] and observation/@classCode='OBS' and observation/@moodCode='EVN')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">observation[last()=1] and observation/@classCode='OBS' and observation/@moodCode='EVN'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship ДОЛЖЕН иметь один элемент [1..1] observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS" и атрибут @moodCode ДОЛЖЕН иметь значение "EVN").</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(observation/code[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">observation/code[last()=1]</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation ДОЛЖЕН иметь один [1..1] элемент code.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(observation/value[last()=1])">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">observation/value[last()=1]</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation ДОЛЖЕН иметь один [1..1] элемент value.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code"
                  priority="1"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@codeSystem='1.2.643.5.1.13.13.99.2.166' and @code='6015' and @displayName='Стоимость')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@codeSystem='1.2.643.5.1.13.13.99.2.166' and @code='6015' and @displayName='Стоимость'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code ДОЛЖЕН иметь атрибут @codeSystem ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166"; ДОЛЖЕН иметь атрибут @code ДОЛЖЕН иметь значение "6015", атрибут @displayName ДОЛЖЕН иметь значение "Стоимость".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="not(originalText[last()=1]/reference[last()=1] and originalText/reference/@value!='')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">originalText[last()=1]/reference[last()=1] and originalText/reference/@value!=''</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
            </xsl:next-match>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value"
                  priority="0"
                  mode="d13e6">
      <xsl:param name="schxslt:patterns-matched" as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$schxslt:patterns-matched[. = 'd13e6']">
            <schxslt:rule pattern="d13e6">
               <xsl:comment xmlns:svrl="http://purl.oclc.org/dsdl/svrl">WARNING: Rule for context "//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value" shadowed by preceding rule</xsl:comment>
               <svrl:suppressed-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value</xsl:attribute>
               </svrl:suppressed-rule>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="$schxslt:patterns-matched"/>
            </xsl:next-match>
         </xsl:when>
         <xsl:otherwise>
            <schxslt:rule pattern="d13e6">
               <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
                  <xsl:attribute name="context">//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value</xsl:attribute>
               </svrl:fired-rule>
               <xsl:if test="not(@*='REAL')">
                  <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                       location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@*='REAL'</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value ДОЛЖЕН иметь атрибут value/@xsi:type, который ДОЛЖЕН иметь значение "REAL".</svrl:text>
                  </svrl:failed-assert>
               </xsl:if>
               <xsl:if test="@nullFlavor">
                  <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                           location="{schxslt:location(.)}">
                     <xsl:attribute name="test">@nullFlavor</xsl:attribute>
                     <svrl:text>Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</svrl:text>
                  </svrl:successful-report>
               </xsl:if>
            </schxslt:rule>
            <xsl:next-match>
               <xsl:with-param name="schxslt:patterns-matched"
                                as="xs:string*"
                                select="($schxslt:patterns-matched, 'd13e6')"/>
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

﻿<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="address" uri="urn:hl7-ru:address"/>
    <ns prefix="medService" uri="urn:hl7-ru:medService"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>  
    <!-- У1-1 -->
<!-- Нужно вручную применять это правило далее по схематрону к элементам name, содержащим ФИО  -->
<!--
    <pattern>
        <rule context="//name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-1. Элемент name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-1. Элемент name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-1. Элемент name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-1. Элемент name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
-->
    <!-- У1-2 -->
    <!-- У1-3 -->
<!-- Нужно вручную применять это правило далее по схематрону к элементам addr, относящимся к медорганизациям -->
<!--
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-3. Элемент addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-3. Элемент addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-3. Элемент addr должен иметь 1 элемент fias:Address.</assert>
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-3. Элемент addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-3. Элемент addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
-->
    <!-- У1-4 -->
    <pattern>
        <rule context="//telecom[not(@nullFlavor)]">
            <assert test="matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')">У1-4. Все элементы //telecom со схемой "tel:" должны соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра должна остаться в номере телефона после удаления всех разделителей.</assert>
        </rule>
    </pattern>
    <!-- У1-5 -->
    <!-- У1-6 -->
    <!-- У1-7 -->
    <!-- У1-8 -->
    <pattern>
        <rule context="//id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-8. Элемент id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-9 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(realmCode)=1">У1-9. Элемент ClinicalDocument должен иметь 1 элемент realmCode.</assert>
        </rule>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">У1-9. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(typeId)=1">У1-10. Элемент ClinicalDocument должен иметь 1 элемент typeId.</assert>
        </rule>
        <rule context="ClinicalDocument/typeId">
            <assert test="@root='2.16.840.1.113883.1.3'">У1-10. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>
            <assert test="@extension='POCD_MT000040'">У1-10. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_MT000040'.</assert>
        </rule>
    </pattern>
    <!-- У1-11 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">У1-11. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
        </rule>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root='1.2.643.5.1.13.13.14.47.9.1'">У1-11. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.14.47.9.1'.</assert>
        </rule>
    </pattern>
    <!-- У1-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">У1-12. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У1-12. Элемент ClinicalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-13 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code='47'">У1-13. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '47'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-13. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@codeSystemVersion!=''">У1-13. Элемент ClinicalDocument/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-13. Элемент ClinicalDocument/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-14 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
        </rule>
        <rule context="ClinicalDocument/title">
            <assert test=".!=''">У1-14. Элемент ClinicalDocument/title должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-15 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">У1-15. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-15. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <!-- У1-16 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">У1-16. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">У1-16. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@code!=''">У1-16. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-16. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-16. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-17 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">У1-17. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-17. Элемент ClinicalDocument/languageCode должен иметь значение атрибута @code равное 'ru-RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-18 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-18. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">У1-18. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У1-18. Элемент ClinicalDocument/setId должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(setId)=1">У1-19. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.50$')">У1-19. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50".</assert>
            <assert test="@extension!=''">У1-19. Элемент ClinicalDocument/setId должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-20 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(versionNumber)=1">У1-20. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
        </rule>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">У1-20. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У1-21 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(recordTarget)=1">У1-21. Элемент ClinicalDocument должен иметь 1 элемент recordTarget.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">У1-21. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=2">У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 2 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(identity:InsurancePolicy)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:InsurancePolicy.</assert>
            <assert test="count(addr)=[1,2]">У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 или 2 элемента addr.</assert>
            <assert test="count(patient)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
            <assert test="count(providerOrganization)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$')">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов пациентов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10".</assert>
            <assert test="@extension!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@xsi:type='CD'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy]">
            <assert test="count(identity:InsurancePolicy/identity:InsurancePolicyType)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:InsuracePolicyType.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@xsi:type='CD'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicyType/identity:InsuracePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@code!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Series)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:Series.</assert>
            <assert test="identity:InsurancePolicy/identity:Series/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Number)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:InsurancePolicy/identity:Number/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[1][not(@nullFlavor)]">
            <assert test="count(address:Type)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент address:Type.</assert>
            <assert test="address:Type/@xsi:type='CD'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@code='1'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь значение атрибута @code равное '1'.</assert>
            <assert test="address:Type/@displayName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(streetAddressLine)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[1][fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[2][not(@nullFlavor)]">
            <assert test="count(address:Type)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2] должен иметь 1 элемент address:Type.</assert>
            <assert test="address:Type/@xsi:type='CD'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@code='2'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:Type должен иметь значение атрибута @code равное '2'.</assert>
            <assert test="address:Type/@displayName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(streetAddressLine)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2] должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2] должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2] должен иметь 1 элемент fias:Address.</assert>
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-21. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=[1,2]">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(identity:Props)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(name)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]">
            <assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
            <assert test="@extension!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <assert test="@assigningAuthorityName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @assigningAuthorityName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn)&lt;=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrn.</assert>
            <assert test="not(identity:Props/identity:Ogrn) or identity:Props/identity:Ogrn/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:Props/identity:Ogrnip)&lt;=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrnip.</assert>
            <assert test="not(identity:Props/identity:Ogrnip) or identity:Props/identity:Ogrnip/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="identity:Props/identity:Ogrnip and identity:Props/identity:Ogrn">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props не должен одновременно иметь элемент identity:Ogrnip и элемент identity:Ogrn.</report>
            <assert test="count(identity:Props/identity:Okpo)&lt;=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okpo.</assert>
            <assert test="not(identity:Props/identity:Okpo) or identity:Props/identity:Okpo/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:Props/identity:Okato)&lt;=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okato.</assert>
            <assert test="not(identity:Props/identity:Okato) or identity:Props/identity:Okato/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-22 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">У1-22. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-22. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У1-22. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor .</assert>
        </rule>
        <rule context="ClinicalDocument/author/time">
            <assert test="@value!=''">У1-22. Элемент ClinicalDocument/author/time должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">У1-22. Элемент ClinicalDocument/author/assignedAuthor author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr должен иметь 1 элемент fias:Address.</assert>
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST'">У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="@classCode='ORG'">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr должен иметь 1 элемент fias:Address.</assert>
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-23 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(custodian)=1">У1-23. Элемент ClinicalDocument должен иметь 1 элемент custodian.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian">
            <assert test="count(assignedCustodian)=1">У1-23. Элемент ClinicalDocument/custodian должен иметь 1 элемент assignedCustodian.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <assert test="count(representedCustodianOrganization)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-24 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(informationRecipient)=1">У1-24. Элемент ClinicalDocument должен иметь 1 элемент informationRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(intendedRecipient)=1">У1-24. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(receivedOrganization)=1">У1-24. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id/@root='1.2.643.5.1.13']">
            <assert test="count(id)=1">У1-24. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-24. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-25 -->
    <pattern>
        <rule context="ClinicalDocument/informationRecipient[receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(receivedOrganization)=1">У1-25. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/receivedOrganization[id/@root='1.2.643.5.1.13']">
            <assert test="count(id)=1">У1-25. Элемент ClinicalDocument/informationRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-25. Элемент ClinicalDocument/informationRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/receivedOrganization[id/@root!='1.2.643.5.1.13']">
            <assert test="count(id)=1">У1-25. Элемент ClinicalDocument/informationRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-25. Элемент ClinicalDocument/informationRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-26 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-26. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity .</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@value!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/time должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@code='S'">У1-26. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @code равное 'S'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr должен иметь 1 элемент fias:Address.</assert>
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST'">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-26. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-27 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant)=1">У1-27. Элемент ClinicalDocument должен иметь 1 элемент participant.</assert>
        </rule>
        <rule context="ClinicalDocument/participant">
            <assert test="@typeCode='IND'">У1-27. Элемент ClinicalDocument/participant должен иметь значение атрибута @typeCode равное 'IND'.</assert>
            <assert test="count(associatedEntity)=1">У1-27. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <assert test="@classCode='GUAR'">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'GUAR'.</assert>
            <assert test="count(code)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(identity:DocInfo)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:DocInfo.</assert>
            <assert test="count(scopingOrganization)&lt;=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента scopingOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1039'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь значение атрибута @classCode равное '1.2.643.5.1.13.13.11.1039'.</assert>
            <assert test="@code!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @classCode.</assert>
            <assert test="@codeSystemName!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['8','9','10','11']]">
            <assert test="identity:DocInfo/@nullFlavor=['INV','NAV']">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение атрибута @nullFlavor равное 'INV' или 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <assert test="count(identity:DocInfo/identity:IdentityDocType)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:IdentityDocType.</assert>
            <assert test="count(identity:DocInfo/identity:InsurancePolicyType)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:InsurancePolicyType.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@xsi:type='CD'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@displayName!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="count(identity:DocInfo/identity:Series)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Series.</assert>
            <assert test="identity:DocInfo/identity:Series/@xsi:type='ST'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:DocInfo/identity:Number)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:DocInfo/identity:Number/@xsi:type='ST'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:DocInfo/identity:INN)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:INN.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[@classCode='GUAR'][identity:DocInfo/identity:IdentityDocType/@code='3']">
            <assert test="identity:DocInfo/identity:INN/@xsi:type='ST'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code='1']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='1'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '1'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code='3']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='2'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '2'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['4','5','6']]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='3'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '3'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1']">
            <assert test="identity:DocInfo/identity:Series!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NA'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NAV'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']">
            <assert test="identity:DocInfo/identity:Series!='' or identity:DocInfo/identity:Series/@nullFlavor!=''">У1-28. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение или иметь не пустое значение атрибута @nullFlavor.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Number/@nullFlavor='NAV'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]">
            <assert test="identity:DocInfo/identity:Number!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='3']">
            <assert test="identity:DocInfo/identity:INN!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:effectiveTime/@nullFlavor='NAV'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]">
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:low)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:low.</assert>
            <assert test="identity:DocInfo/identity:effectiveTime/identity:low/@xsi:type='TS'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-27. Дата в элементе должна быть указана с точностью до дня.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:high)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:high.</assert>
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@xsi:type='TS'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']">
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor='NAV'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@code='2')]">
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-27. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization">
            <assert test="count(id)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[not(@nullFlavor)]">
            <assert test="@root=['1.2.643.5.1.13.13.99.2.183','1.2.643.5.1.13.2.1.1.635']">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.99.2.183' или '1.2.643.5.1.13.2.1.1.635'.</assert>
            <assert test="@extension!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-28 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(documentationOf)&lt;=1">У1-28. Элемент ClinicalDocument должен иметь не более 1 элемента documentationOf.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf">
            <assert test="count(serviceEvent)=1">У1-28. Элемент ClinicalDocument/documentationOf должен иметь 1 элемент serviceEvent.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent">
            <assert test="count(code)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(medService:serviceForm)&lt;=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceForm.</assert>
            <assert test="count(medService:serviceType)&lt;=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceType.</assert>
            <assert test="count(medService:serviceCond)&lt;=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceCond.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.726'">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.726'.</assert>
            <assert test="@code!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystem.</assert>
            <assert test="@codeSystemVersion!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
            <assert test="count(low)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь 1 элемент high.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-28. Дата в элементе должна быть указана с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-28. Дата в элементе должна быть указана с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceForm]">
            <assert test="medService:serviceForm/@codeSystem=['1.2.643.5.1.13.13.11.1551','1.2.643.5.1.13.2.1.1.568','1.2.643.5.1.13.13.99.2.377']">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1551', '1.2.643.5.1.13.2.1.1.568' или '1.2.643.5.1.13.13.99.2.377'.</assert>
            <assert test="medService:serviceForm/@code!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceForm/@codeSystemVersion!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceForm/@codeSystemName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceForm/@displayName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceType]">
            <assert test="medService:serviceType/@codeSystem='1.2.643.5.1.13.13.11.1034'">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1034'.</assert>
            <assert test="medService:serviceType/@code!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceType/@codeSystemVersion!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceType/@codeSystemName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceType/@displayName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceCond]">
            <assert test="medService:serviceCond/@codeSystem=['1.2.643.5.1.13.13.99.2.322','1.2.643.5.1.13.2.1.1.103']">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1034' или '1.2.643.5.1.13.2.1.1.103'.</assert>
            <assert test="medService:serviceCond/@code!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceCond/@codeSystemVersion!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceCond/@codeSystemName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceCond/@displayName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
            <assert test="@typeCode=['PPRF','SPRF']">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь значение атрибута @typeCode равное 'PPRF' или 'SPRF'.</assert>
            <assert test="count(assignedEntity)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
            <assert test="count(id)=2">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(telecom)&lt;=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента telecom.</assert>
            <assert test="count(assignedPerson)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr должен иметь 1 элемент fias:Address.</assert>
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь не более 1 элемента addr.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(fias:Address)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr должен иметь 1 элемент fias:Address.</assert>
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-28. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-29 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(componentOf)=1">У1-29. Элемент ClinicalDocument должен иметь 1 элемент componentOf.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf">
            <assert test="count(encompassingEncounter)=1">У1-29. Элемент ClinicalDocument/componentOf должен иметь 1 элемент encompassingEncounter.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <assert test="count(id)=2">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент code.</assert>
            <assert test="count(medService:DocType)=1">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент medService:DocType.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[1] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[2]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.723'">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.723'.</assert>
            <assert test="@code!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter[medService:DocType]">
            <assert test="medService:DocType/@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="medService:DocType/@code!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/code/medService:DocType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:DocType/@codeSystemVersion!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:DocType/@codeSystemName!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:DocType/@displayName!=''">У1-29. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-30 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-30. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
        </rule>
    </pattern>
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DOCINFO'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(code)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='BENEFITS'])&lt;=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'BENEFITS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']">
            <assert test="count(code)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='BENEFITS']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DGN'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DGN'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(code)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DGN']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='RECOTHER'])=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RECOTHER'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']">
            <assert test="count(code)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='RECOTHER']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='7000']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='7000']]">
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='7000']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='7000']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='7000']]/value">
            <assert test="@xsi:type='ST'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='9001']])&lt;=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9001']]">
            <assert test="count(observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9001']]">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9001']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9001']]/value">
            <assert test="@xsi:type='CD'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="@code!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='9002']])&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9002']]">
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9002']]">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9002']]/value">
            <assert test="@xsi:type='CD'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.685'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.685'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='9003']])&lt;=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9003']]">
            <assert test="count(observation)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9003']]">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9003']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9003']]/value">
            <assert test="@xsi:type='CD'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.684'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.684'.</assert>
            <assert test="@code!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='9004']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='9004']]">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='9004']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='9004']]/value">
            <assert test="@xsi:type='BL'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='10000']])&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10000']]">
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value">
            <assert test="@xsi:type='ST'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='837']])&lt;=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='837']]">
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='837']]">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='837']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='837']]/value">
            <assert test="@xsi:type='CD'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.725'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.725'.</assert>
            <assert test="@code='1'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @code равное '1'.</assert>
            <assert test="@codeSystemName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']">
            <assert test="count(entry[observation/code[@code='9005']])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry[observation/code[@code='9005']]">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship[observation/code[@code='9006']])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='9006']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='9007']])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='9007']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='9008']])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='9008']].</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code[@code='9005']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship[observation/code[@code='9006']]">
            <assert test="@typeCode='COMP'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship[observation/code[@code='9006']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship[observation/code[@code='9006']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation[code[@code='9006']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9006']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9006']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9006']] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9006']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation/code[@code='9006']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9006'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9006'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9006'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9006'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation[code[@code='9006']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='ST'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9006']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation[code[@code='9006']]/value[@nullFlavor]">
            <assert test="@nullFlavour='NA'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9006']]/value должен иметь значение атрибута @nullFlavour равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship[observation/code[@code='9007']]">
            <assert test="@typeCode='COMP'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship[observation/code[@code='9007']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship[observation/code[@code='9007']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation[code[@code='9007']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9007']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9007']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9007']] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9007']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation/code[@code='9007']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9007'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9007'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9007'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9007'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation[code[@code='9007']]/value">
            <assert test="@xsi:type='ST'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9007']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship[observation/code[@code='9008']]">
            <assert test="@typeCode='COMP'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship[observation/code[@code='9008']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship[observation/code[@code='9008']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation[code[@code='9008']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9008']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9008']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9008']] должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation[code[@code='9008']] должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation/code[@code='9008']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9008'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9008'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9008'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/entryRelationship/observation/code[@code='9008'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='9005']]/entryRelationship/observation[code[@code='9008']]/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-8. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']">
            <assert test="count(entry[observation/code[@code='811']])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry[observation/code[@code='811']]">
            <assert test="count(observation)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='811']]">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code[@code='811']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='811']]/value">
            <assert test="@xsi:type='CD'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.713'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.713'.</assert>
            <assert test="@code!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(entry[observation/code[@code='9009']])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry[observation/code[@code='9009']]">
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9009']]">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship[observation/code[@code='9010']])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='9010']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='809']])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='809']].</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code[@code='9009']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9009']]/entryRelationship[observation/code[@code='9010']]">
            <assert test="@typeCode='COMP'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9009']]/entryRelationship/observation[code[@code='9010']]">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9009']]/entryRelationship/observation/code[@code='9010']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9009']]/entryRelationship[observation/code[@code='809']]">
            <assert test="@typeCode='COMP'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9009']]/entryRelationship/observation[code[@code='809']]">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9009']]/entryRelationship/observation/code[@code='809']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9009']]/entryRelationship/observation[code[@code='809']]/value">
            <assert test="@xsi:type='CD'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>    
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(entry[observation/code[@code='9011']])&lt;=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry[observation/code[@code='9011']]">
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9011']]">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship[observation/code[@code='9010']])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='9010']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='809']])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='809']].</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code[@code='9011']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9011']]/entryRelationship[observation/code[@code='9010']]">
            <assert test="@typeCode='COMP'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9011']]/entryRelationship/observation[code[@code='9010']]">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9011']]/entryRelationship/observation/code[@code='9010']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9011']]/entryRelationship[observation/code[@code='809']]">
            <assert test="@typeCode='COMP'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9011']]/entryRelationship/observation[code[@code='809']]">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9011']]/entryRelationship/observation/code[@code='809']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9011']]/entryRelationship/observation[code[@code='809']]/value">
            <assert test="@xsi:type='CD'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry[observation/code[@code='9012']]">
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9012']]">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship[observation/code[@code='9010']])=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='9010']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='809']])=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@code='809']].</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code[@code='9012']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9012']]/entryRelationship[observation/code[@code='9010']]">
            <assert test="@typeCode='COMP'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='9010']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9012']]/entryRelationship/observation[code[@code='9010']]">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='9010']] должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9012']]/entryRelationship/observation/code[@code='9010']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='9010'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9012']]/entryRelationship[observation/code[@code='809']]">
            <assert test="@typeCode='COMP'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship[observation/code[@code='809']] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9012']]/entryRelationship/observation[code[@code='809']]">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9012']]/entryRelationship/observation/code[@code='809']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='809'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9012']]/entryRelationship/observation[code[@code='809']]/value">
            <assert test="@xsi:type='CD'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='809']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(entry[observation/code[@code='9013']])=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry[observation/code[@code='9013']]">
            <assert test="count(observation)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9013']]">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code[@code='9013']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='9013']]/value">
            <assert test="@xsi:type='BL'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']">
            <assert test="count(entry[observation/code[@code='9014']])=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry[observation/code[@code='9014']]">
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation[code[@code='9014']]">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code[@code='9014']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation[code[@code='9014']]/value">
            <assert test="@xsi:type='BL'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']">
            <assert test="count(entry[observation/code[@code='9015']])>=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry[observation/code[@code='9015']]">
            <assert test="count(observation)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation[code[@code='9015']]">
            <assert test="@classCode='OBS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code[@code='9015']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation[code[@code='9015']]/text">
            <assert test=".!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/text должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']">
            <assert test="count(entry[observation/code[@code='9016']])&lt;=4">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER'] должен иметь не более 4 элементов entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry[observation/code[@code='9016']]">
            <assert test="count(observation)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation[code[@code='9016']]">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code[@code='9016']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation[code[@code='9016']]/value">
            <assert test="@xsi:type='CD'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.683'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.683'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
</schema>
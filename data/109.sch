<!-- Схематрон для СЭМД "Направление на медико-социальную экспертизу" (Редакция 5) -->
<!-- Разработано в соответствии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/4011 -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
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
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-3. Элемент addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-3. Элемент addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-3. Элемент addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-3. Элемент addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-3. Элемент addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-3. Элемент addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-4 -->
    <!-- У1-5 -->
    <!-- У1-6 -->
    <!-- У1-7 -->
    <!-- У1-8 -->
    <pattern>
        <rule context="//id[not(@nullFlavor)]">
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
            <assert test="@root='1.2.643.5.1.13.13.14.34.9.5'">У1-11. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.14.34.9.5'.</assert>
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
            <assert test="@code='34'">У1-13. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '34'.</assert>
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
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-15. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
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
            <assert test="count(setId)=1">У1-18. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
            <report test="matches(id/@root,setId/@root)">У1-18. Элемент ClinicalDocument/setId должен иметь значение атрибута @root отличающееся от значения атрибута @root элемента ClinicalDocument/id.</report>
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.50$')">У1-18. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50".</assert>
            <assert test="@extension!=''">У1-18. Элемент ClinicalDocument/setId должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(versionNumber)=1">У1-19. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
        </rule>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">У1-19. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У1-20 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(recordTarget)=1">У1-20. Элемент ClinicalDocument должен иметь 1 элемент recordTarget.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">У1-20. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=2">У1-20. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 2 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(identity:InsurancePolicy)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:InsurancePolicy.</assert>
            <assert test="count(addr)&lt;=2">У1-20. Элемент ClinicalDocument/recordTarget/patientRole должен иметь не более 2 элементов addr.</assert>
            <assert test="count(telecom)>=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(patient)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
            <assert test="count(providerOrganization)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$')">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов пациентов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10".</assert>
            <assert test="@extension!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy]">
            <assert test="count(identity:InsurancePolicy/identity:InsurancePolicyType)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:InsuracePolicyType.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicyType/identity:InsuracePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Series)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь не более 1 элемента identity:Series.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Number)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:InsurancePolicy/identity:Number/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy/identity:Series]">
            <assert test="identity:InsurancePolicy/identity:Series/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
            <assert test="count(guardian)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь не более 1 элемента guardian.</assert>
            <assert test="count(guardianPerson)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь не более 1 элемента guardianPerson.</assert>
            <assert test="count(guardianOrganization)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь не более 1 элемента guardianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-20. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian">
            <assert test="@classCode='GUARD'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь значение атрибута @classCode равное 'GUARD'.</assert>
            <assert test="count(id)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента identity:IdentityDoc.</assert>
            <assert test="count(identity:AuthorityDoc)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента identity:AuthorityDoc.</assert>
            <assert test="count(addr)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента addr.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc]">
            <assert test="count(identity:AuthorityDoc/identity:IdentityCardType)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.313']">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.313'.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:AuthorityDoc/identity:Series)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:AuthorityDoc/identity:Number)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:AuthorityDoc/identity:Number/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:AuthorityDoc/identity:IssueOrgName)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:AuthorityDoc/identity:IssueDate)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:AuthorityDoc/identity:IssueDate/@xsi:type='TS'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="identity:AuthorityDoc/identity:IssueDate/@value!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:AuthorityDoc/identity:Series/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:AuthorityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardianOrganization">
            <assert test="count(identity:Props)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardianOrganization должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(name)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardianOrganization должен иметь не более 1 элемента addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardianOrganization/identity:Props">
            <assert test="count(identity:Ogrn)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardianOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrn.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardianOrganization/identity:Props/identity:Ogrn">
            <assert test="@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardianOrganization/identity:Props/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=[1,2]">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(identity:Props)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(name)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь не более 1 элемента addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]">
            <assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
            <assert test="@extension!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <assert test="@assigningAuthorityName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @assigningAuthorityName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrn.</assert>
            <assert test="not(identity:Props/identity:Ogrn) or identity:Props/identity:Ogrn/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:Props/identity:Ogrnip)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrnip.</assert>
            <assert test="not(identity:Props/identity:Ogrnip) or identity:Props/identity:Ogrnip/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="identity:Props/identity:Ogrnip and identity:Props/identity:Ogrn">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props не должен одновременно иметь элемент identity:Ogrnip и элемент identity:Ogrn.</report>
            <assert test="count(identity:Props/identity:Okpo)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okpo.</assert>
            <assert test="not(identity:Props/identity:Okpo) or identity:Props/identity:Okpo/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:Props/identity:Okato)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okato.</assert>
            <assert test="not(identity:Props/identity:Okato) or identity:Props/identity:Okato/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У1-21 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">У1-21. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-21. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У1-21. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor .</assert>
        </rule>
        <rule context="ClinicalDocument/author/time">
            <assert test="@value!=''">У1-21. Элемент ClinicalDocument/author/time должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">У1-21. Элемент ClinicalDocument/author/assignedAuthor author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-21. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-21. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-21. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-21. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-21. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-21. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-21. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="@classCode='ORG'">У1-21. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-21. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-21. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-22 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(custodian)=1">У1-22. Элемент ClinicalDocument должен иметь 1 элемент custodian.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian">
            <assert test="count(assignedCustodian)=1">У1-22. Элемент ClinicalDocument/custodian должен иметь 1 элемент assignedCustodian.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <assert test="count(representedCustodianOrganization)=1">У1-22. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">У1-22. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-22. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-22. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-22. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-23 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(informationRecipient)=1">У1-23. Элемент ClinicalDocument должен иметь 1 элемент informationRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(intendedRecipient)=1">У1-23. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(receivedOrganization)=1">У1-23. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id/@root='1.2.643.5.1.13']">
            <assert test="count(id)=1">У1-23. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-23. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-24 -->
    <pattern>
        <rule context="ClinicalDocument/informationRecipient[receivedOrganization/id/@root!='1.2.643.5.1.13']">
            <assert test="count(receivedOrganization)=1">У1-24. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/receivedOrganization[id/@root!='1.2.643.5.1.13']">
            <assert test="count(id)=1">У1-24. Элемент ClinicalDocument/informationRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-24. Элемент ClinicalDocument/informationRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/receivedOrganization[id/@root!='1.2.643.5.1.13']">
            <assert test="count(id)=1">У1-24. Элемент ClinicalDocument/informationRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-24. Элемент ClinicalDocument/informationRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-25 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-25. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity .</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@value!=''">У1-25. Элемент ClinicalDocument/legalAuthenticator/time должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@code='S'">У1-25. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @code равное 'S'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST'">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-26 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant)=1">У1-26. Элемент ClinicalDocument должен иметь 1 элемент participant.</assert>
        </rule>
        <rule context="ClinicalDocument/participant">
            <assert test="@typeCode='IND'">У1-26. Элемент ClinicalDocument/participant должен иметь значение атрибута @typeCode равное 'IND'.</assert>
            <assert test="count(associatedEntity)=1">У1-26. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <assert test="@classCode='GUAR'">У1-26. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'GUAR'.</assert>
            <assert test="count(code)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(identity:DocInfo)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:DocInfo.</assert>
            <assert test="count(scopingOrganization)&lt;=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента scopingOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1039'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь значение атрибута @classCode равное '1.2.643.5.1.13.13.11.1039'.</assert>
            <assert test="@code!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @classCode.</assert>
            <assert test="@codeSystemName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['8','9','10','11']]">
            <assert test="identity:DocInfo/@nullFlavor=['INV','NAV']">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение атрибута @nullFlavor равное 'INV' или 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:IdentityDocType)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:IdentityDocType.</assert>
            <assert test="count(identity:DocInfo/identity:InsurancePolicyType)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:InsurancePolicyType.</assert>
            <assert test="count(identity:DocInfo/identity:Series)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Series.</assert>
            <assert test="identity:DocInfo/identity:Series/@xsi:type='ST'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:DocInfo/identity:Number)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:DocInfo/identity:Number/@xsi:type='ST'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:DocInfo/identity:INN)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:INN.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@xsi:type='CD'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@codeSystem='1.2.643.5.1.13.13.99.2.724'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.724'.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@code!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@codeSystemName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@displayName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@xsi:type='CD'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@displayName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[@classCode='GUAR'][identity:DocInfo/identity:IdentityDocType/@code='3']">
            <assert test="identity:DocInfo/identity:INN/@xsi:type='ST'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code='1']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='1'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '1'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code='3']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='2'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '2'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['4','5','6']]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='3'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '3'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1']">
            <assert test="identity:DocInfo/identity:Series!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NA'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']">
            <assert test="identity:DocInfo/identity:Series!='' or identity:DocInfo/identity:Series/@nullFlavor!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение или иметь не пустое значение атрибута @nullFlavor.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Number/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/@nullFlavor)][not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]">
            <assert test="identity:DocInfo/identity:Number!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='3']">
            <assert test="identity:DocInfo/identity:INN!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:effectiveTime/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/@nullFlavor)][not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]">
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:low)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:low.</assert>
            <assert test="identity:DocInfo/identity:effectiveTime/identity:low/@xsi:type='TS'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-26. Дата в элементе должна быть указана с точностью до дня.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:high)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:high.</assert>
            </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']">
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/@nullFlavor)][not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')][not(identity:DocInfo/identity:InsurancePolicyType/@code='2')]">
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@xsi:type='TS'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-26. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization">
            <assert test="count(id)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[not(@nullFlavor)]">
            <assert test="@root=['1.2.643.5.1.13.13.99.2.183','1.2.643.5.1.13.2.1.1.635']">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.99.2.183' или '1.2.643.5.1.13.2.1.1.635'.</assert>
            <assert test="@extension!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У1-27 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(documentationOf)=1">У1-27. Элемент ClinicalDocument должен иметь 1 элемент documentationOf.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf">
            <assert test="count(serviceEvent)=1">У1-27. Элемент ClinicalDocument/documentationOf должен иметь 1 элемент serviceEvent.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent">
            <assert test="count(code)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(medService:serviceForm)&lt;=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceForm.</assert>
            <assert test="count(medService:serviceType)&lt;=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceType.</assert>
            <assert test="count(medService:serviceCond)&lt;=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceCond.</assert>
            <assert test="count(performer)>=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не менее 1 элемента performer.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.726'">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.726'.</assert>
            <assert test="@code!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystem.</assert>
            <assert test="@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
            <assert test="count(low)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low[not(@nullFlavor)]">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-27. Дата в элементе должна с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-27. Дата в элементе должна с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceForm]">
            <assert test="medService:serviceForm/@codeSystem=['1.2.643.5.1.13.13.11.1551','1.2.643.5.1.13.2.1.1.568','1.2.643.5.1.13.13.99.2.377']">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1551', '1.2.643.5.1.13.2.1.1.568' или '1.2.643.5.1.13.13.99.2.377'.</assert>
            <assert test="medService:serviceForm/@code!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceForm/@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceForm/@codeSystemName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceForm/@displayName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceType]">
            <assert test="medService:serviceType/@codeSystem='1.2.643.5.1.13.13.11.1034'">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1034'.</assert>
            <assert test="medService:serviceType/@code!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceType/@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceType/@codeSystemName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceType/@displayName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceCond]">
            <assert test="medService:serviceCond/@codeSystem=['1.2.643.5.1.13.13.99.2.322','1.2.643.5.1.13.2.1.1.103']">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1034' или '1.2.643.5.1.13.2.1.1.103'.</assert>
            <assert test="medService:serviceCond/@code!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceCond/@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceCond/@codeSystemName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceCond/@displayName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
            <assert test="@typeCode=['PPRF','SPRF']">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь значение атрибута @typeCode равное 'PPRF' или 'SPRF'.</assert>
            <assert test="count(assignedEntity)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
            <assert test="count(id)=2">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-27. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь не более 1 элемента addr.</assert>
        </rule>
    </pattern>
    <!-- У1-28 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-28. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
        </rule>
    </pattern>
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SCOPORG'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'SCOPORG'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']">
            <assert test="count(code)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='SCOPORG']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='WORK'])=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'WORK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']">
            <assert test="count(code)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='WORK']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='EDU'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'EDU'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']">
            <assert test="count(code)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='EDU']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SOCANAM'])=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'SOCANAM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(code)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='SOCANAM']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='VITALPARAM'])=1">У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'VITALPARAM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']">
            <assert test="count(code)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='VITALPARAM']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='STATECUR'])=1">У2-6. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'STATECUR'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']">
            <assert test="count(code)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='STATECUR']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='PROC'])&lt;=1">У2-7. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'PROC'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']">
            <assert test="count(code)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='PROC']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DGN'])=1">У2-8. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DGN'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(code)=1">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DGN']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SCORES'])=1">У2-9. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'SCORES'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']">
            <assert test="count(code)=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='SCORES']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='REGIME'])=1">У2-10. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'REGIME'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']">
            <assert test="count(code)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)&lt;=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь не более 1 элемента text.</assert>
            <assert test="count(component[section/code[@code='RECTREAT']])=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент component[section/code[@code='RECTREAT']].</assert>
            <assert test="count(component[section/code[@code='RECOTHER']])=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент component[section/code[@code='RECOTHER']].</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code[@code='RECTREAT']]">
            <assert test="count(code)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code[@code='RECOTHER']]">
            <assert test="count(code)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code[@code='RECTREAT']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code[@code='RECOTHER']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section/code[@code='REGIME']/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='OUTSPECMEDCARE'])&lt;=1">У2-11. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'OUTSPECMEDCARE'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']">
            <assert test="count(code)=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='OUTSPECMEDCARE']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='LINKDOCS'])&lt;=1">У2-12. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'LINKDOCS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(code)=1">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='LINKDOCS']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']">
            <assert test="count(entry[act/code[@code='34']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry[act/code[@code='34']]">
            <assert test="count(act)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]">
            <assert test="@classCode='ACT'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='RQO'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент statusCode.</assert>
            <assert test="count(performer)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент performer.</assert>
            <assert test="count(entryRelationship[observation/code[@codeSystem='1.2.643.5.1.13.13.99.2.147']])>=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь не менее 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1007','1.2.643.5.1.13.2.1.1.109']]])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='4059']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='4060']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='4061']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='7012']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='4062']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code[@code='34']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/statusCode">
            <assert test="@code='active'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/statusCode должен иметь значение атрибута @code равное 'active'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/performer">
            <assert test="count(assignedEntity)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/performer/assignedEntity">
            <assert test="count(id)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/performer/assignedEntity должен иметь 1 элемент id.</assert>
            <assert test="count(representedOrganization)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/performer/assignedEntity должен иметь 1 элемент representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/performer/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/performer/assignedEntity/representedOrganization должен иметь 1 элемент telecom.</assert>
            <assert test="count(addr)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship[observation/code[@codeSystem='1.2.643.5.1.13.13.99.2.147']]">
            <assert test="@typeCode='SUBJ'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'SUBJ'.</assert>
            <assert test="@inversionInd='true'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@codeSystem='1.2.643.5.1.13.13.99.2.147']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation/code[@codeSystem='1.2.643.5.1.13.13.99.2.147']">
            <assert test="@code!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1007','1.2.643.5.1.13.2.1.1.109']]]">
            <assert test="@typeCode='SUBJ'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'SUBJ'.</assert>
            <assert test="@inversionInd='true'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1007','1.2.643.5.1.13.2.1.1.109']]]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1007','1.2.643.5.1.13.2.1.1.109']]">
            <assert test="@code!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship[observation/code[@code='4059']]">
            <assert test="@typeCode='SUBJ'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'SUBJ'.</assert>
            <assert test="@inversionInd='true'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4059']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation/code[@code='4059']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4059']]/effectiveTime">
            <assert test="@value!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/effectiveTime должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4059']]/value">
            <assert test="@xsi:type='ST'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship[observation/code[@code='4060']]">
            <assert test="@typeCode='SUBJ'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'SUBJ'.</assert>
            <assert test="@inversionInd='true'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4060']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation/code[@code='4060']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4060']]/value">
            <assert test="@xsi:type='BL'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value=['true','false']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @value равное 'true' или 'false'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship[observation/code[@code='4061']]">
            <assert test="@typeCode='SUBJ'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'SUBJ'.</assert>
            <assert test="@inversionInd='true'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4061']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation/code[@code='4061']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4061']]/value">
            <assert test="@xsi:type='BL'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value=['true','false']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @value равное 'true' или 'false'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship[observation/code[@code='7012']]">
            <assert test="@typeCode='SUBJ'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'SUBJ'.</assert>
            <assert test="@inversionInd='true'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='7012']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation/code[@code='7012']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='7012']]/value">
            <assert test="@xsi:type='BL'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value=['true','false']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @value равное 'true' или 'false'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship[observation/code[@code='4062']]">
            <assert test="@typeCode='SUBJ'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'SUBJ'.</assert>
            <assert test="@inversionInd='true'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4062']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation/code[@code='4062']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@code='34']]/entryRelationship/observation[code[@code='4062']]/value">
            <assert test="@xsi:type='TS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="@value!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']">
            <assert test="count(entry[observation/code[@codeSystem=['1.2.643.5.1.13.13.99.2.315','1.2.643.5.1.13.2.1.1.218']]])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry[observation/code[@codeSystem=['1.2.643.5.1.13.13.99.2.315','1.2.643.5.1.13.2.1.1.218']]]">
            <assert test="count(observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation[code[@codeSystem=['1.2.643.5.1.13.13.99.2.315','1.2.643.5.1.13.2.1.1.218']]]">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.99.2.315','1.2.643.5.1.13.2.1.1.218']]">
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']">
            <assert test="count(entry[act/code[@codeSystem='1.2.643.5.1.13.13.99.2.856']])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry[act/code[@codeSystem='1.2.643.5.1.13.13.99.2.856']]">
            <assert test="count(act)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@codeSystem='1.2.643.5.1.13.13.99.2.856']]">
            <assert test="@classCode='ACT'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(participant)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act должен иметь 1 элемент participant.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code[@codeSystem='1.2.643.5.1.13.13.99.2.856']">
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@codeSystem='1.2.643.5.1.13.13.99.2.856']]/participant">
            <assert test="@typeCode='LOC'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/participant должен иметь значение атрибута @typeCode равное 'LOC'.</assert>
            <assert test="count(participantRole)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/participant должен иметь 1 элемент participantRole.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@codeSystem='1.2.643.5.1.13.13.99.2.856']]/participant/participantRole">
            <assert test="count(id)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/participant/participantRole должен иметь 1 элемент id.</assert>
            <assert test="count(identity:Props)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/participant/participantRole должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(addr)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/participant/participantRole должен иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@codeSystem='1.2.643.5.1.13.13.99.2.856']]/participant/participantRole[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/participant/participantRole/identity:Props должен иметь 1 элемент identity:Ogrn.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act[code[@codeSystem='1.2.643.5.1.13.13.99.2.856']]/participant/participantRole[identity:Props/identity:Ogrn]">
            <assert test="identity:Props/identity:Ogrn/@xsi:type='ST'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/act/participant/participantRole/identity:Props/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']">
            <assert test="count(entry[observation/code[@codeSystem='1.2.643.5.1.13.13.99.2.314']])=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry[observation/code[@codeSystem='1.2.643.5.1.13.13.99.2.314']]">
            <assert test="count(observation)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation[code[@codeSystem='1.2.643.5.1.13.13.99.2.314']]">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation/code[@codeSystem='1.2.643.5.1.13.13.99.2.314']">
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCOPORG']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']">
            <assert test="count(entry)&lt;=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry">
            <assert test="count(organizer)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer">
            <assert test="@classCode='CLUSTER'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(participant)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент participant.</assert>
            <assert test="count(component[observation/code[@code='4074']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент component.</assert>
            <assert test="count(component[observation/code[@code='4075']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент component.</assert>
            <assert test="count(component[observation/code[@code='4076']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент component.</assert>
            <assert test="count(component[organizer])>=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь не менее 1 элемента component.</assert>
            <assert test="count(component[observation/code[@code='4081']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/statusCode">
            <assert test="@code='completed'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant">
            <assert test="@typeCode='LOC'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant должен иметь значение атрибута @typeCode равное 'LOC'.</assert>
            <assert test="count(participantRole)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant должен иметь 1 элемент participantRole.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole">
            <assert test="@classCode='SDLOC'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole должен иметь значение атрибута @classCode равное 'SDLOC'.</assert>
            <assert test="count(addr)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole должен иметь 1 элемент addr.</assert>
            <assert test="count(playingEntity)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole должен иметь 1 элемент playingEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole/playingEntity">
            <assert test="count(name)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole/playingEntity должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component[observation/code[@code='4074']]">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation[code[@code='4074']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code[@code='4074']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation[code[@code='4074']]/text">
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component[observation/code[@code='4075']]">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation[code[@code='4075']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code[@code='4075']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation[code[@code='4075']]/text">
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component[observation/code[@code='4076']]">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation[code[@code='4076']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code[@code='4076']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation[code[@code='4076']]/text">
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component[organizer]">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(organizer)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer">
            <assert test="@classCode='CLUSTER'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(component[observation/code[@code='4078']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer должен иметь 1 элемент component.</assert>
            <assert test="count(component[observation/code[@code='4079']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer должен иметь 1 элемент component.</assert>
            <assert test="count(component[observation/code[@code='4080']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer должен иметь 1 элемент component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/statusCode">
            <assert test="@code='completed'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component[observation/code[@code='4078']]">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation[code[@code='4078']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code[@code='4078']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation[code[@code='4078']]/text">
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component[observation/code[@code='4079']]">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation[code[@code='4079']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code[@code='4079']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation[code[@code='4079']]/text">
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component[observation/code[@code='4080']]">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation[code[@code='4080']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code[@code='4080']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation[code[@code='4080']]/text">
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/organizer/component/observation/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component[observation/code[@code='4081']]">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation[code[@code='4081']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code[@code='4081']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation[code[@code='4081']]/text">
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/component/observation/text должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']">
            <assert test="count(entry[observation/code[@code='4100']])&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry[observation/code[@code='4100']]">
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code='4100']]">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(performer)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code[@code='4100']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code='4100']]/performer">
            <assert test="count(assignedEntity)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code='4100']]/performer/assignedEntity">
            <assert test="count(id)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/performer/assignedEntity должен иметь 1 элемент id.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code='4100']]/performer/assignedEntity/id">
            <assert test="@nullFlavor='NI'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/performer/assignedEntity/representedOrganization должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code='4100']]/performer/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/performer/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/performer/assignedEntity/representedOrganization должен иметь не более 1 элемента addr.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']">
            <assert test="count(entry[observation/code[@code=['12137','9019','12136']]])&lt;=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry[observation/code[@code=['12137','9019','12136']]]">
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code=['12137','9019','12136']]]">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code[@code=['12137','9019','12136']]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code=['12137','9019','12136']]]/value">
            <assert test="@xsi:type='ST'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']">
            <assert test="count(entry[observation/code[@code='4078']])&lt;=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry[observation/code[@code='4078']]">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code='4078']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code[@code='4078']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation[code[@code='4078']]/value">
            <assert test="@xsi:type='ST'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EDU']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4101']])&lt;=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4101']]">
            <assert test="count(observation)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4101']]">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4101']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4101']]/value">
            <assert test="@xsi:type='ST'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4102']])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4102']]">
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4102']]">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4102']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4102']]/value">
            <assert test="@xsi:type='ST'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4103']])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4103']]">
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4103']]">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4103']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4103']]/value">
            <assert test="@xsi:type='ST'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4082']])&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4082']]">
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4082']]">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4082']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(originalText)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4082']/originalText">
            <assert test="count(reference)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4082']]/text">
            <assert test=".!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/text должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[organizer])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[organizer]">
            <assert test="count(organizer)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer">
            <assert test="@classCode='CLUSTER'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(statusCode)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(component[act])>=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer должен иметь не менее 1 элемента component.</assert>
            <assert test="count(component[observation])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer должен иметь не более 1 элемента component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/statusCode">
            <assert test="@code='completed'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component[act]">
            <assert test="@typeCode='COMP'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(act)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act">
            <assert test="@classCode='ACT'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act должен иметь 1 элемент entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='4057'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/code должен иметь значение атрибута @code равное '4057'.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/effectiveTime">
            <assert test="count(low)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/effectiveTime должен иметь 1 элемент high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/effectiveTime/low[not(@nullFlavor)]">
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/effectiveTime/high[not(@nullFlavor)]">
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship">
            <assert test="count(observation)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component[observation]">
            <assert test="@typeCode='COMP'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='4063'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation/code должен иметь значение атрибута @code равное '4063'.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation/value">
            <assert test="@xsi:type='INT'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/organizer/component/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4058']]">
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(entryRelationship)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4058']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]/text">
            <assert test="count(reference)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]/text/reference">
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]/effectiveTime">
            <assert test="count(high)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime должен иметь 1 элемент high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]/effectiveTime/high">
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]/entryRelationship">
            <assert test="@typeCode='COMP'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]/entryRelationship/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='4083'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @code равное '4083'.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4058']]/entryRelationship/observation/value">
            <assert test="@xsi:type='CD'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.325'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.325'.</assert>
            <assert test="@code!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
    </pattern>
    <!-- У3-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code/qualifier])&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь не более 1 элемента observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code/qualifier]">
            <assert test="count(observation)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]">
            <assert test="@classCode='OBS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[observation/code[@code='4115']])=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='4169']])=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[act])&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь не более 1 элемента entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[qualifier]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1053' или '1.2.643.5.1.13.2.1.1.702'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(originalText)&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента originalText.</assert>
            <assert test="count(qualifier)&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента qualifier.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[qualifier]/originalText">
            <assert test="count(reference)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[qualifier]/originalText/reference">
            <assert test="@value!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/qualifier">
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/qualifier должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[qualifier]/qualifier/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1041'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/qualifier/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1041'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/qualifier/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/qualifier/value должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/qualifier/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/effectiveTime">
            <assert test="count(low)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/effectiveTime/low">
            <assert test="@value!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/effectiveTime/high">
            <assert test="@value!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship[observation/code[@code='4115']]">
            <assert test="@typeCode='COMP'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/observation[code[@code='4115']]">
            <assert test="@classCode='OBS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/observation/code[@code='4115']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/observation[code[@code='4115']]/value">
            <assert test="@xsi:type='CD'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.358'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.358'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship[observation/code[@code='4169']]">
            <assert test="@typeCode='COMP'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/observation[code[@code='4169']]">
            <assert test="@classCode='OBS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/observation/code[@code='4169']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/observation[code[@code='4169']]/value">
            <assert test="@xsi:type='CD'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1490'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1490'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship[act]">
            <assert test="@typeCode='CAUS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'CAUS'.</assert>
            <assert test="@inversionInd='true'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(act)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/act">
            <assert test="@classCode='ACT'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1474','1.2.643.5.1.13.2.1.1.169']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1474' или '1.2.643.5.1.13.2.1.1.169'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(originalText)&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act/code должен иметь не более 1 элемента originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/act/code/originalText">
            <assert test="count(reference)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act/code/originalText должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/qualifier]/entryRelationship/act/code/originalText/reference">
            <assert test="@value!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/entryRelationship/act/code/originalText должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4104']])&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4104']]">
            <assert test="count(observation)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4104']]">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4104']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4104']]/value">
            <assert test="@xsi:type='ST'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-17 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4105']])&lt;=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4105']]">
            <assert test="count(observation)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4105']]">
            <assert test="@classCode='OBS'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4105']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4105']]/value">
            <assert test="@xsi:type='ST'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-18 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4106']])&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4106']]">
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4106']]">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4106']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4106']]/value">
            <assert test="@xsi:type='TS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-19 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4107']])&lt;=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4107']]">
            <assert test="count(observation)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4107']]">
            <assert test="@classCode='OBS'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4107']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4107']]/value">
            <assert test="@xsi:type='ST'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-20 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4064']])&lt;=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4064']]">
            <assert test="count(observation)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4064']]">
            <assert test="@classCode='OBS'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4064']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4064']]/value">
            <assert test="@xsi:type='CD'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1475','1.2.643.5.1.13.2.1.1.193']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1475' или '1.2.643.5.1.13.2.1.1.193'.</assert>
            <assert test="@codeSystemVersion!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-21 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="count(entry[observation/code[@code='4065']])&lt;=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry[observation/code[@code='4065']]">
            <assert test="count(observation)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4065']]">
            <assert test="@classCode='OBS'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@code='4065']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code[@code='4065']]/value">
            <assert test="@xsi:type='CD'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1475','1.2.643.5.1.13.2.1.1.193']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1475' или '1.2.643.5.1.13.2.1.1.193'.</assert>
            <assert test="@codeSystemVersion!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-22 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']">
            <assert test="count(entry[organizer])>=3">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM'] должен иметь не менее 3 элементов entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[organizer]">
            <assert test="count(organizer)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer">
            <assert test="@classCode='CLUSTER'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(statusCode)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(component)=[1,2]">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 или 2 элемента component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode">
            <assert test="@code='completed'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime">
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component">
            <assert test="@typeCode='COMP'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation">
            <assert test="@classCode='OBS'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.262','1.2.643.5.1.13.13.11.1010']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.262' или '1.2.643.5.1.13.13.11.1010'.</assert>
            <assert test="@codeSystemVersion!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(originalText)&lt;=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не более 1 элемента originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code/originalText">
            <assert test="count(reference)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code/originalText должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code/originalText/reference">
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value">
            <assert test="@xsi:type=['PQ','INT','REAL']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'PQ', 'INT' или 'REAL'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value[@xsi:type='PQ']">
            <assert test="@unit!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь не пустое значение атрибута @unit.</assert>
        </rule>
    </pattern>
    <!-- У3-23 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']">
            <assert test="count(entry[observation/code[@code='4108']])=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry[observation/code[@code='4108']]">
            <assert test="count(observation)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4108']]">
            <assert test="@classCode='OBS'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code[@code='4108']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation[code[@code='4108']]/value">
            <assert test="@xsi:type='CD'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1492'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1492'.</assert>
            <assert test="@codeSystemVersion!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-24 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']">
            <assert test="count(entry[observation/code[@code='4109']])=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry[observation/code[@code='4109']]">
            <assert test="count(observation)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation[code[@code='4109']]">
            <assert test="@classCode='OBS'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation/code[@code='4109']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation[code[@code='4109']]/value">
            <assert test="@xsi:type='ST'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATECUR']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-25 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry[observation/code[@code='4110']]">
            <assert test="count(observation)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]">
            <assert test="@classCode='OBS'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship)>=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation должен иметь не менее 1 элемента entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/code[@code='4110']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship">
            <assert test="@typeCode='COMP'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
            <assert test="count(reference)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.857'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.857'.</assert>
            <assert test="@code!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation/effectiveTime">
            <assert test="@value!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation/value">
            <assert test="@xsi:type='ST'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation/reference[not(@nullFlavor)]">
            <assert test="@typeCode='REFR'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/reference должен иметь 1 элемент externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation/reference/externalDocument[not(@nullFlavor)]">
            <assert test="@classCode='DOCCLIN'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOCCLIN'.</assert>
            <assert test="@moodCode='EVN'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(id)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation/entryRelationship/observation/reference/externalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation/reference/externalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/entry/observation[code[@code='4110']]/entryRelationship/observation/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У3-26 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(entry)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry">
            <assert test="count(act)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act">
            <assert test="@classCode='ACT'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship)>=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act должен иметь не менее 1 элемента entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.795','1.2.643.5.1.13.13.11.1076']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.795' или '1.2.643.5.1.13.13.11.1076'.</assert>
            <assert test="@codeSystemVersion!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship">
            <assert test="@typeCode='COMP'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(statusCode)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation должен иметь 1 элемент statusCode.</assert>
            <assert test="count(value)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1077','1.2.643.5.1.13.2.1.1.1504.4']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1077' или '1.2.643.5.1.13.2.1.1.1504.4'.</assert>
            <assert test="@code!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/statusCode">
            <assert test="@code='completed'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/value">
            <assert test="@xsi:type='CD'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
    </pattern>
    <!-- У3-27 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry[observation/code[@code='4054']]">
            <assert test="count(observation)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation[code[@code='4054']]">
            <assert test="@classCode='OBS'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4054']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(originalText)&lt;=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не более 1 элемента originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4054']/originalText">
            <assert test="count(reference)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code/originalText должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4054']/originalText/reference">
            <assert test="@value!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation[code[@code='4054']]/value">
            <assert test="@xsi:type='CD'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.148'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.148'.</assert>
            <assert test="@codeSystemVersion!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-28 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry[observation/code[@code='4055']]">
            <assert test="count(observation)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation[code[@code='4055']]">
            <assert test="@classCode='OBS'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4055']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(originalText)&lt;=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не более 1 элемента originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4055']/originalText">
            <assert test="count(reference)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code/originalText должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4055']/originalText/reference">
            <assert test="@value!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation[code[@code='4055']]/value">
            <assert test="@xsi:type='CD'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.148'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.148'.</assert>
            <assert test="@codeSystemVersion!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-29 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry[observation/code[@code='4056']]">
            <assert test="count(observation)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation[code[@code='4056']]">
            <assert test="@classCode='OBS'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4056']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(originalText)&lt;=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не более 1 элемента originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4056']/originalText">
            <assert test="count(reference)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code/originalText должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code[@code='4056']/originalText/reference">
            <assert test="@value!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation[code[@code='4056']]/value">
            <assert test="@xsi:type='CD'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.148'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.148'.</assert>
            <assert test="@codeSystemVersion!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-30 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']">
            <assert test="count(entry[observation/code[@code='4111']])=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry[observation/code[@code='4111']]">
            <assert test="count(observation)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation[code[@code='4111']]">
            <assert test="@classCode='OBS'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code[@code='4111']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation[code[@code='4111']]/value">
            <assert test="@xsi:type='ST'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-31 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']">
            <assert test="count(entry[observation/code[@code='4112']])=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry[observation/code[@code='4112']]">
            <assert test="count(observation)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation[code[@code='4112']]">
            <assert test="@classCode='OBS'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code[@code='4112']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation[code[@code='4112']]/value">
            <assert test="@xsi:type='ST'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-32 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']">
            <assert test="count(entry[observation/code[@code='4113']])=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry[observation/code[@code='4113']]">
            <assert test="count(observation)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation[code[@code='4113']]">
            <assert test="@classCode='OBS'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code[@code='4113']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation[code[@code='4113']]/value">
            <assert test="@xsi:type='ST'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-33 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry[substanceAdministration]">
            <assert test="count(substanceAdministration)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry должен иметь 1 элемент substanceAdministration.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration">
            <assert test="@classCode='SBADM'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='RQO'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(code)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration должен иметь 1 элемент code.</assert>
            <assert test="count(consumable)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration должен иметь 1 элемент consumable.</assert>
            <assert test="count(entryRelationship[observation/code[@code='12182']])=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='12183']])=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration должен иметь 1 элемент entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='12184']])=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration должен иметь 1 элемент entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='12131'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/code должен иметь значение атрибута @code равное '12131'.</assert>
            <assert test="@codeSystemVersion!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable">
            <assert test="@typeCode='CSM'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable должен иметь значение атрибута @typeCode равное 'CSM'.</assert>
            <assert test="count(manufacturedProduct)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct">
            <assert test="@classCode='MANU'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута @classCode равное 'MANU'.</assert>
            <assert test="count(manufacturedMaterial)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedMaterial.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
<!-- В КП - @classCode -->
<!--
            <assert test="@typeCode='MMAT'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @typeCode равное 'MMAT'.</assert>
-->
            <assert test="@determinerCode='KIND'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @determinerCode равное 'KIND'.</assert>
            <assert test="count(code)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code">
<!-- В КП - @codeSystem -->
<!--
            <assert test="@code='1.2.643.5.1.13.13.99.2.611'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь значение атрибута @code равное '1.2.643.5.1.13.13.99.2.611'.</assert>
-->
            <assert test="@code!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>


        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship[observation/code[@code='12182']]">
            <assert test="@typeCode='COMP'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation[code[@code='12182']]">
            <assert test="@classCode='OBS'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='RQO'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(code)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code[@code='12182']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation[code[@code='12182']]/value">
            <assert test="@xsi:type='ST'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/value должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship[observation/code[@code='12183']]">
            <assert test="@typeCode='COMP'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation[code[@code='12183']]">
            <assert test="@classCode='OBS'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='RQO'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(code)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code[@code='12183']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation[code[@code='12183']]/value">
            <assert test="@xsi:type='ST'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/value должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship[observation/code[@code='12184']]">
            <assert test="@typeCode='COMP'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation[code[@code='12184']]">
            <assert test="@classCode='OBS'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='RQO'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(code)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code[@code='12184']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation[code[@code='12184']]/value">
            <assert test="@xsi:type='ST'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/substanceAdministration/entryRelationship/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-34 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']">
            <assert test="count(entry[observation/code[@code='12132']])=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry[observation/code[@code='12132']]">
            <assert test="count(observation)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation[code[@code='12132']]">
            <assert test="@classCode='OBS'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code[@code='12132']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation[code[@code='12132']]/value">
            <assert test="@xsi:type='ST'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-35 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']">
            <assert test="count(entry[observation/code[@code='4114']])&lt;=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry[observation/code[@code='4114']]">
            <assert test="count(observation)=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation[code[@code='4114']]">
            <assert test="@classCode='OBS'">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation/code[@code='4114']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation[code[@code='4114']]/value">
            <assert test="@xsi:type='ST'">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECOTHER']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-36 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']">
            <assert test="count(entry[observation/code[@code='12133']])=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry[observation/code[@code='12133']]">
            <assert test="count(observation)=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation[code[@code='12133']]">
            <assert test="@classCode='OBS'">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation/code[@code='12133']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation[code[@code='12133']]/value">
            <assert test="@xsi:type='ST'">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='OUTSPECMEDCARE']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-37 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(entry)>=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry">
            <assert test="count(act)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act">
            <assert test="@classCode='ACT'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент text.</assert>
            <assert test="count(effectiveTime)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[observation/code[@code='11002']])&lt;=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='11003']])&lt;=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@codeSystemVersion!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@code!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime">
            <assert test="@value!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']]">
            <assert test="@typeCode='COMP'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]">
            <assert test="@classCode='OBS'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value">
            <assert test="@xsi:type='ST'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']]">
            <assert test="@typeCode='COMP'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]">
            <assert test="@classCode='OBS'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
            <assert test="count(reference)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value">
            <assert test="@xsi:type='ST'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/reference">
            <assert test="@typeCode='REFR'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/reference должен иметь 1 элемент externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/reference/externalDocument">
            <assert test="@classCode='DOCCLIN'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOCCLIN'.</assert>
            <assert test="@moodCode='EVN'">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(id)=1">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/reference/externalDocument должен иметь 1 элемент externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/reference/externalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-37. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
</schema>
﻿<!-- Схематрон для СЭМД "Заключение лечебного учреждения о нуждаемости престарелого гражданина в постоянном постороннем уходе (CDA) Редакция 1" -->
<!-- Разработано в соответствии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/____ -->

<!-- Список изменений -->
<!-- 10.06.2022 - v.1.0: Схематрон разработан -->
<!-- 03.10.2023 - v.1.0.4: Скорректировано правило проверки для требования У3-6-1-6-1-2 -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="address" uri="urn:hl7-ru:address"/>
    <ns prefix="PII" uri="urn:hl7-ru:PII"/>
    <ns prefix="medService" uri="urn:hl7-ru:medService"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>

    <!-- Общие ограничения -->
    <!-- Имена и наименования <name> -->
    <!-- 1 -->
    <pattern>	
        <rule context="//name[family|given|identity:Patronymic]">
			<assert test="count(family)=1">Общие ограничения-Имена и наименования-1. Элемент //name должен иметь 1 элемент family.</assert>
			<assert test="count(given)=1">Общие ограничения-Имена и наименования-1. Элемент //name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">Общие ограничения-Имена и наименования-1. Элемент //name должен иметь не более 1 элемента identity:Patronymic.</assert>
        </rule>
        <rule context="//name/family">
            <assert test=".!=''">Общие ограничения-Имена и наименования-1. Элемент //name/family не должен не пустое значение.</assert>
        </rule>
        <rule context="//name/given">
            <assert test=".!=''">Общие ограничения-Имена и наименования-1. Элемент //name/given не должен не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- 2 -->
    <pattern>
        <rule context="//name[not(family|given|identity:Patronymic)][not(@nullFlavor)]">
            <assert test=".!=''">Общие ограничения-Имена и наименования-2. Элемент //name должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- Адреса <addr> -->
    <!-- 1 -->
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">Общие ограничения-Адреса-1. Элемент //addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">Общие ограничения-Адреса-1. Элемент //addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="count(postalCode)=1">Общие ограничения-Адреса-1. Элемент //addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">Общие ограничения-Адреса-1. Элемент //addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
        <rule context="//addr/streetAddressLine">
            <assert test=".!=''">Общие ограничения-Адреса-1. Элемент //addr/streetAddressLine должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[address:stateCode]">
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">Общие ограничения-Адреса-1. Элемент //addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@code!=''">Общие ограничения-Адреса-1. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">Общие ограничения-Адреса-1. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">Общие ограничения-Адреса-1. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="//addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">Общие ограничения-Адреса-1. Элемент //addr/postalCode не должен не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">Общие ограничения-Адреса-1. Элемент //addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">Общие ограничения-Адреса-1. Элемент //addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">Общие ограничения-Адреса-1. Элемент //addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
            <assert test="fias:Address/fias:HOUSEGUID!=''">Общие ограничения-Адреса-1. Элемент //addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- Уникальные идентификаторы <id> -->
    <!-- 1 -->
    <pattern>
        <rule context="//id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">Общие ограничения-Уникальные идентификаторы-1. Элемент //id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>

    <!-- Правила -->
    <!-- У1-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(realmCode)=1">У1-1. Элемент ClinicalDocument должен иметь 1 элемент realmCode.</assert>
        </rule>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">У1-1. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-2 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(typeId)=1">У1-2. Элемент ClinicalDocument должен иметь 1 элемент typeId.</assert>
        </rule>
        <rule context="ClinicalDocument/typeId">
            <assert test="@root='2.16.840.1.113883.1.3'">У1-2. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>
            <assert test="@extension='POCD_MT000040'">У1-2. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_MT000040'.</assert>
        </rule>
    </pattern>
    <!-- У1-3 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">У1-3. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
        </rule>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root='1.2.643.5.1.13.13.14.367.9.1'">У1-3. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.14.367.9.1'.</assert>
        </rule>
    </pattern>
    <!-- У1-4 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-4. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">У1-4. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У1-4. Элемент ClinicalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-5 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">У1-5. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code='367'">У1-5. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '367'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-5. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@codeSystemName!=''">У1-5. Элемент ClinicalDocument/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-5. Элемент ClinicalDocument/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-5. Элемент ClinicalDocument/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
    </pattern>
    <!-- У1-6 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">У1-6. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
        </rule>
        <rule context="ClinicalDocument/title">
            <assert test=".!=''">У1-6. Элемент ClinicalDocument/title должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-7 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">У1-7. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-7. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <!-- У1-8 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">У1-8. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">У1-8. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@codeSystemName!=''">У1-8. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У1-8. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-8. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-8. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-9 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">У1-9. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-9. Элемент ClinicalDocument/languageCode должен иметь значение атрибута @code равное 'ru-RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(setId)=1">У1-10. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.50$')">У1-10. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50".</assert>
            <assert test="@extension!=''">У1-10. Элемент ClinicalDocument/setId должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-11 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(versionNumber)=1">У1-11. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
        </rule>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">У1-11. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У1-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(recordTarget)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент recordTarget.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">У1-12. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=2">У1-12. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 2 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(identity:InsurancePolicy)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:InsurancePolicy.</assert>
            <assert test="count(addr)=[1,2]">У1-12. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 или 2 элемента addr.</assert>
            <assert test="count(patient)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
            <assert test="count(providerOrganization)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$')">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов пациентов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10".</assert>
            <assert test="@extension!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.100.3'">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь не пустое значение.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:Series!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy[not(@nullFlavor)]]">
            <assert test="count(identity:InsurancePolicy/identity:InsurancePolicyType)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:InsuracePolicyType.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicyType/identity:InsuracePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Series)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь не более 1 элемента identity:Series.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Number)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:InsurancePolicy/identity:Number!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]">
            <assert test="count(address:Type)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент address:Type.</assert>
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:Type/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:Type/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(streetAddressLine)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/fias:Address должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr/fias:Address должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
            <assert test="count(guardian)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь не более 1 элемента guardian.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name">
            <assert test="count(family)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</assert>
            <assert test="family!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/family должен иметь не пустое значение.</assert>
            <assert test="count(given)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент given.</assert>
            <assert test="given!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/given должен иметь не пустое значение.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь не более 1 элемента identity:Patronymic.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-12. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian">
            <assert test="@classCode='GUARD'">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь значение атрибута @classCode равное 'GUARD'.</assert>
            <assert test="count(id)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента identity:IdentityDoc.</assert>
            <assert test="count(identity:AuthorityDoc)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента identity:AuthorityDoc.</assert>
            <assert test="count(code)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента code.</assert>
            <assert test="count(addr)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента addr.</assert>
            <assert test="count(guardianPerson)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента guardianPerson.</assert>
            <assert test="count(guardianOrganization)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента guardianOrganization.</assert>
            <report test="guardianPerson and guardianOrganization">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian не должен одновременно иметь элемент guardianPerson и элемент guardianOrganization.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/id">
            <assert test="@root='1.2.643.100.3'">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:IdentityCardType]">
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:Series!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:Number]">
            <assert test="identity:IdentityDoc/identity:Number!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Number должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueOrgName должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueOrgCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc/identity:IssueDate]">
            <assert test="identity:IdentityDoc/identity:IssueDate/@value!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc]">
            <assert test="count(identity:AuthorityDoc/identity:IdentityCardType)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="count(identity:AuthorityDoc/identity:Series)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:AuthorityDoc/identity:Number)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:AuthorityDoc/identity:IssueOrgName)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:AuthorityDoc/identity:IssueDate)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IssueDate.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:IdentityCardType]">
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.313']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.313'.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:AuthorityDoc/identity:Series!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:Number]">
            <assert test="identity:AuthorityDoc/identity:Number!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Number должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:AuthorityDoc/identity:IssueOrgName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueOrgName должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:IssueDate]">
            <assert test="identity:AuthorityDoc/identity:IssueDate/@value!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr">
            <assert test="count(streetAddressLine)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="count(postalCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr[@use]">
            <assert test="@use!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr должен иметь не пустое значение атрибута @use.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/streetAddressLine">
            <assert test=".!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/streetAddressLine должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr[address:stateCode]">
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr[fias:Address/fias:AOGUID]">
            <assert test="fias:Address/fias:AOGUID!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson">
            <assert test="count(name)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name">
            <assert test="count(family)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name должен иметь 1 элемент family.</assert>
            <assert test="family!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/family должен иметь не пустое значение.</assert>
            <assert test="count(given)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name должен иметь 1 элемент given.</assert>
            <assert test="given!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/given должен иметь не пустое значение.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization">
            <assert test="count(id)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization должен иметь не более 1 элемента id.</assert>
            <assert test="count(identity:Props)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(name)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization должен иметь не более 1 элемента addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/id">
            <assert test="@root!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/id должен иметь не пустое значение атрибута @root.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn)&lt;1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrn.</assert>
            <assert test="count(identity:Props/identity:Ogrnip)&lt;1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrnip.</assert>
            <report test="identity:Props/identity:Ogrn and identity:Props/identity:Ogrnip">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props не должен одновременно иметь элемент identity:Ogrn и элемент identity:Ogrnip.</report>
            <assert test="count(identity:Props/identity:Okpo)&lt;1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props должен иметь не более 1 элемента identity:Okpo.</assert>
            <assert test="count(identity:Props/identity:Okato)&lt;1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props должен иметь не более 1 элемента identity:Okato.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization[identity:Props/identity:Ogrn]">
            <assert test="identity:Props/identity:Ogrn!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrn должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization[identity:Props/identity:Ogrnip]">
            <assert test="identity:Props/identity:Ogrnip!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrnip должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization[identity:Props/identity:Okpo]">
            <assert test="identity:Props/identity:Okpo!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okpo должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization[identity:Props/identity:Okato]">
            <assert test="identity:Props/identity:Okato!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okato должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/name">
            <assert test=".!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/name должен иметь не пустое значение атрибута @root.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=[1,2]">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(identity:Props)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(name)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="name!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/name должен иметь не пустое значение.</assert>
            <assert test="count(addr)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь не более 1 элемента addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]">
            <assert test="@root!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] должен иметь не пустое значение атрибута @root.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]">
            <assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
            <assert test="@extension!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <assert test="@assigningAuthorityName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @assigningAuthorityName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrn.</assert>
            <assert test="not(identity:Props/identity:Ogrn) or identity:Props/identity:Ogrn!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn должен иметь не пустое значение.</assert>
            <assert test="count(identity:Props/identity:Ogrnip)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrnip.</assert>
            <assert test="not(identity:Props/identity:Ogrnip) or identity:Props/identity:Ogrnip!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip должен иметь не пустое значение.</assert>
            <report test="identity:Props/identity:Ogrnip and identity:Props/identity:Ogrn">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props не должен одновременно иметь элемент identity:Ogrnip и элемент identity:Ogrn.</report>
            <assert test="count(identity:Props/identity:Okpo)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okpo.</assert>
            <assert test="not(identity:Props/identity:Okpo) or identity:Props/identity:Okpo!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo должен иметь не пустое значение.</assert>
            <assert test="count(identity:Props/identity:Okato)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okato.</assert>
            <assert test="not(identity:Props/identity:Okato) or identity:Props/identity:Okato!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-13 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-13. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У1-13. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor .</assert>
        </rule>
        <rule context="ClinicalDocument/author/time">
            <assert test="@nullFlavor='NI'">У1-13. Элемент ClinicalDocument/author/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">У1-13. Элемент ClinicalDocument/author/assignedAuthor author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-13. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-13. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-13. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@codeSystemName!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name">
            <assert test="count(family)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="family!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/family должен иметь не пустое значение.</assert>
            <assert test="count(given)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="given!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/given должен иметь не пустое значение.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="@classCode='ORG'">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
            <assert test="@root!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь не пустое значение атрибута @root.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-13. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-14 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(custodian)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент custodian.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian">
            <assert test="count(assignedCustodian)=1">У1-14. Элемент ClinicalDocument/custodian должен иметь 1 элемент assignedCustodian.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <assert test="count(representedCustodianOrganization)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="@classCode='ORG'">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <assert test="@root!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь не пустое значение атрибута @root.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <assert test=".!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(address:stateCode)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="count(fias:Address)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-14. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-15 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13'])=1">У1-15. Элемент ClinicalDocument должен иметь 1 элемент informationRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(intendedRecipient)=1">У1-15. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(receivedOrganization)=1">У1-15. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id/@root='1.2.643.5.1.13']">
            <assert test="count(id)=1">У1-15. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-15. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id/@root='1.2.643.5.1.13']/name">
            <assert test=".!=''">У1-15. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-16 -->
    <pattern>
        <rule context="ClinicalDocument/informationRecipient">
            <assert test="count(intendedRecipient)=1">У1-16. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент intendedRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient">
            <assert test="count(receivedOrganization)=1">У1-16. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">У1-16. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-16. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id[not(@nullFlavor)]">
            <assert test="@root!=''">У1-16. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id должен иметь не пустое значение атрибута @root.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name">
            <assert test=".!=''">У1-16. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-17 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-17. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity .</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@nullFlavor='NI'">У1-17. Элемент ClinicalDocument/legalAuthenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@nullFlavor='NI'">У1-17. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@codeSystemName!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name">
            <assert test="count(family)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="family!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family должен иметь не пустое значение.</assert>
            <assert test="count(given)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="given!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given должен иметь не пустое значение.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name">
            <assert test=".!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-17. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-18 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant)&lt;=1">У1-18. Элемент ClinicalDocument должен иметь не более 1 элемента participant.</assert>
        </rule>
        <rule context="ClinicalDocument/participant">
            <assert test="@typeCode='IND'">У1-18. Элемент ClinicalDocument/participant должен иметь значение атрибута @typeCode равное 'IND'.</assert>
            <assert test="count(associatedEntity)=1">У1-18. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <assert test="@classCode='GUAR'">У1-18. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'GUAR'.</assert>
            <assert test="count(code)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(identity:DocInfo)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:DocInfo.</assert>
            <assert test="count(scopingOrganization)&lt;=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента scopingOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1039'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь значение атрибута @classCode равное '1.2.643.5.1.13.13.11.1039'.</assert>
            <assert test="@codeSystemName!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @classCode.</assert>
            <assert test="@codeSystemVersion!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['8','9','10','11','12']]">
            <assert test="identity:DocInfo/@nullFlavor=['INV','NAV']">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение атрибута @nullFlavor равное 'INV' или 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:IdentityDocType)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:IdentityDocType.</assert>
            <assert test="count(identity:DocInfo/identity:InsurancePolicyType)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:InsurancePolicyType.</assert>
            <assert test="count(identity:DocInfo/identity:Series)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:DocInfo/identity:Number)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:DocInfo/identity:INN)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:INN.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:DocType[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:DocType/@codeSystem='1.2.643.5.1.13.13.99.2.724'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:DocType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.724'.</assert>
            <assert test="identity:DocInfo/identity:DocType/@codeSystemName!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:DocType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:DocInfo/identity:DocType/@code!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:DocType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:DocInfo/identity:DocType/@codeSystemVersion!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:DocType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:DocType/@displayName!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:DocType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code='1']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='1'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '1'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code='3']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='2'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '2'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['4','5','6']]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='3'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '3'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemName!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@displayName!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1']">
            <assert test="identity:DocInfo/identity:Series!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NA'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NAV'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']">
            <assert test="identity:DocInfo/identity:Series!='' or identity:DocInfo/identity:Series/@nullFlavor!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение или иметь не пустое значение атрибута @nullFlavor.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Number/@nullFlavor='NAV'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor!='NAV']">
            <assert test="identity:DocInfo/identity:Number!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:INN[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:INN!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:effectiveTime/@nullFlavor='NAV'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:low)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:low.</assert>
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-18. Дата в элементе должна быть указана с точностью до дня.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:high)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:high.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']">
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor='NAV'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code!='2']">
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-18. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization">
            <assert test="count(id)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization/id[not(@nullFlavor)]">
            <assert test="@root=['1.2.643.5.1.13.13.99.2.183','1.2.643.5.1.13.2.1.1.635']">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.99.2.183' или '1.2.643.5.1.13.2.1.1.635'.</assert>
            <assert test="@extension!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization/name">
            <assert test=".!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/name должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization/telecom">
            <assert test="@value!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/scopingOrganization/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-18. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(documentationOf)=1">У1-19. Элемент ClinicalDocument должен иметь 1 элемент documentationOf.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf">
            <assert test="count(serviceEvent)=1">У1-19. Элемент ClinicalDocument/documentationOf должен иметь 1 элемент serviceEvent.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent">
            <assert test="count(code)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(medService:serviceForm)&lt;=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceForm.</assert>
            <assert test="count(medService:serviceType)&lt;=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceType.</assert>
            <assert test="count(medService:serviceCond)&lt;=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceCond.</assert>
            <assert test="count(performer)>=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не менее 1 элемента performer.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.726'">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.726'.</assert>
            <assert test="@codeSystemName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code='5'">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь значение атрибута @code равное '5'.</assert>
            <assert test="@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
            <assert test="count(low)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-19. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-19. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceForm]">
            <assert test="medService:serviceForm/@codeSystem=['1.2.643.5.1.13.13.11.1551','1.2.643.5.1.13.2.1.1.568','1.2.643.5.1.13.13.99.2.377']">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1551', '1.2.643.5.1.13.2.1.1.568' или '1.2.643.5.1.13.13.99.2.377'.</assert>
            <assert test="medService:serviceForm/@codeSystemName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceForm/@code!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceForm/@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceForm/@displayName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceType]">
            <assert test="medService:serviceType/@codeSystem='1.2.643.5.1.13.13.11.1034'">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1034'.</assert>
            <assert test="medService:serviceType/@codeSystemName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceType/@code!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceType/@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceType/@displayName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceCond]">
            <assert test="medService:serviceCond/@codeSystem=['1.2.643.5.1.13.13.99.2.322','1.2.643.5.1.13.2.1.1.103']">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.322' или '1.2.643.5.1.13.2.1.1.103'.</assert>
            <assert test="medService:serviceCond/@codeSystemName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceCond/@code!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceCond/@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceCond/@displayName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
            <assert test="@typeCode=['PPRF','SPRF']">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь значение атрибута @typeCode равное 'PPRF' или 'SPRF'.</assert>
            <assert test="count(functionCode)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь 1 элемент functionCode.</assert>
            <assert test="count(assignedEntity)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/functionCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.368','1.2.643.5.1.13.2.1.1.734']">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.368' или '1.2.643.5.1.13.2.1.1.734'.</assert>
            <assert test="@codeSystemName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
            <assert test="count(id)=2">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@codeSystemName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name">
            <assert test="count(family)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="family!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/family должен иметь не пустое значение.</assert>
            <assert test="count(given)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="given!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/given должен иметь не пустое значение.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/name">
            <assert test=".!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/name должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="streetAddressLine!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/streetAddressLine должен иметь не пустое значение.</assert>
            <assert test="count(address:stateCode)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@code!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="fias:Address/fias:AOGUID!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-20 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(component)=1">У1-20. Элемент ClinicalDocument должен иметь 1 элемент component.</assert>
        </rule>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-20. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
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
            <assert test="@codeSystemName!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/title">
            <assert test=".!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/title должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/text">
            <assert test=".!=''">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/text должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='LINKDOCS'])&lt;=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'LINKDOCS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(code)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='LINKDOCS']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemName!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/title">
            <assert test=".!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/title должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/text">
            <assert test=".!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/text должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code/@code='814'])&lt;=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='814']">
            <assert test="count(observation[code/@code='814'])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='814']">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)&lt;=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь не более 1 элемента effectiveTime.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='814']">
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='814']/effectiveTime">
            <assert test="count(low)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='814']/effectiveTime/low[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона..</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='814']/effectiveTime/high">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона..</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='814']/value">
            <assert test="@xsi:type='CD'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1053' или '1.2.643.5.1.13.2.1.1.702'.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12482']">
            <assert test="count(observation[code/@code='12482'])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12482']">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship)>=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь не менее 1 элемента entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12482']/entryRelationship">
            <assert test="@typeCode='COMP'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12482']/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12482']/entryRelationship/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1057','1.2.643.5.1.13.2.1.1.704']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1057' или '1.2.643.5.1.13.2.1.1.704'.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12482']/entryRelationship/observation/value">
            <assert test="@xsi:type='CD'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1054','1.2.643.5.1.13.2.1.1.710']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1054' или '1.2.643.5.1.13.2.1.1.710'.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='8015']])&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='8015']]">
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='8015']]">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='8015']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='8015']]/value">
            <assert test="@xsi:type='ST'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='837']])=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='837']]">
            <assert test="count(observation)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='837']]">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='837']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='837']]/value">
            <assert test="@xsi:type='CD'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code='45'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @code равное '45'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.725']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.725'.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='10000']])&lt;=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10000']]">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value">
            <assert test="@xsi:type='ST'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(entry)>=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry">
            <assert test="count(act)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act">
            <assert test="@classCode='ACT'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[observation/code[@code='11002']])&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='11003']])&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='6058']])&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(reference)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-6. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']]">
            <assert test="@typeCode='COMP'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value">
            <assert test="@xsi:type='ST'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']]">
            <assert test="@typeCode='COMP'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value">
            <assert test="@xsi:type='ST'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='6058']]">
            <assert test="@typeCode='COMP'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='6058']]">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='6058']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='6058']]/value">
            <assert test="@xsi:type='CD'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.750']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.750'.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference">
            <assert test="@typeCode='REFR'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference должен иметь 1 элемент externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument">
            <assert test="@classCode='DOCCLIN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOCCLIN'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(id)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- Core02-1 -->
    <pattern>
        <rule context="//postalCode[not(@nullFlavor)]">
            <assert test="matches(.,'^[0-9]{6}$')">Extra02-1. Элемент //postalCode должен иметь синтаксически корректное значение, соответствующее почтовому индексу: должно состоять из 6 цифр без разделителей.</assert>
        </rule>
    </pattern>
    <!-- Extra01-1 -->
    <pattern>
        <rule context="//id[@root='1.2.643.100.3']">
            <assert test="matches(@extension,'^([0-9]{3}[-\s]{0,1}){3}[0-9]{2}$')">Extra01-1. Элемент //id[@root='1.2.643.100.3'] должен иметь синтаксически корректное значение атрибута @extension, соответствующее СНИЛС: должно состоять из 11 цифр, цифры могут группироваться по 3+3+3+2, между группами может ставиться пробел или тире.</assert>
        </rule>
    </pattern>
    
    <!-- Core03-1 -->
    <pattern>
        <rule context="//effectiveTime[not(low|high)][not(@nullFlavor)][not(@xsi:type=['IVL_TS','PIVL_TS'])]">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//birthTime[not(@nullFlavor)]|//time[not(@nullFlavor)]|//effectiveTime/low[not(@nullFlavor)]|//effectiveTime/high[not(@nullFlavor)]|//value[xsi:type='TS'][not(@nullFlavor)]">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[PII:birthTime[not(@nullFlavor)]]">
            <assert test="matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:DocInfo/identity:effectiveTime/identity:low[not(@nullFlavor)]]">
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]]">
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:IdentityDoc/identity:IssueDate[not(@nullFlavor)]]">
            <assert test="matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня.</report>
        </rule>
    </pattern>
    
</schema>
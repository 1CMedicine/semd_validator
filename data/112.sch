<!-- Схематрон для СЭМД "Льготный рецепт на лекарственный препарат, изделие медицинского назначения и специализированный продукт лечебного питания" (Редакция 3) -->
<!-- Разработано в соответствии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/4025 -->

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
        </rule>
    </pattern>
-->
    <!-- У1-2 -->
    <!-- У1-3 -->
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-3. Элемент addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-3. Элемент addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(postalCode)=1">У1-3. Элемент addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-3. Элемент addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
        <pattern>
        <rule context="//addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-3. Элемент addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-3. Элемент addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
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
            <assert test="@root='1.2.643.5.1.13.13.14.37.9.3'">У1-11. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.7.5.1.37.9.3'.</assert>
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
            <assert test="@code='37'">У1-13. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '37'.</assert>
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
            <assert test="count(setId)=1">У1-18. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.50$')">У1-18. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов наборов версий документа, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50".</assert>
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
            <assert test="count(addr)=[1,2]">У1-20. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 или 2 элемента addr.</assert>
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
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy[not(@nullFlavor)]]">
            <assert test="count(identity:InsurancePolicy/identity:InsurancePolicyType)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:InsuracePolicyType.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicyType/identity:InsuracePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Series)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь не более 1 элемента identity:Series.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Number)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:Number.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[1][not(@nullFlavor)]">
            <assert test="count(address:Type)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент address:Type.</assert>
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:Type/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь не более 1 элемента identity:Patronymic.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-20. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>        
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=[1,2]">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(identity:Props)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(name)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
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
            <assert test="count(identity:Props/identity:Ogrnip)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrnip.</assert>
            <report test="identity:Props/identity:Ogrnip[not(@nullFlavor)] and identity:Props/identity:Ogrn[not(@nullFlavor)]">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props не должен одновременно иметь элемент identity:Ogrnip и элемент identity:Ogrn.</report>
            <assert test="count(identity:Props/identity:Okpo)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okpo.</assert>
            <assert test="count(identity:Props/identity:Okato)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь не более 1 элемента identity:Okato.</assert>
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
            <assert test="@nullFlavor='NI'">У1-21. Элемент ClinicalDocument/author/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
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
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization[not(@nullFlavor)]">
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
        <rule context="ClinicalDocument[informationRecipient/intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']">
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
        <rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root!='1.2.643.5.1.13']">
            <assert test="count(intendedRecipient)=1">У1-23. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id/@root!='1.2.643.5.1.13']">
            <assert test="count(receivedOrganization)=1">У1-23. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id/@root!='1.2.643.5.1.13']">
            <assert test="count(id)=1">У1-23. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-23. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
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
            <assert test="@nullFlavor='NI'">У1-25. Элемент ClinicalDocument/legalAuthenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@nullFlavor='NI'">У1-25. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity иметь 2 элемента id.</assert>
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
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization[not(@nullFlavor)]">
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
            <assert test="count(componentOf)&lt;=1">У1-26. Элемент ClinicalDocument должен иметь не более 1 элемента componentOf.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf">
            <assert test="count(encompassingEncounter)=1">У1-26. Элемент ClinicalDocument/componentOf должен иметь 1 элемент encompassingEncounter.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <assert test="count(id)=[1,2]">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)&lt;=1">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь не более 1 элемента code.</assert>
            <assert test="count(medService:DocType)&lt;=1">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь не более 1 элемента medService:DocType.</assert>
            <assert test="count(effectiveTime)=1">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.15$')">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов случаев оказания медицинской помощи в экземпляре МИС в медицинской организации, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15".</assert>
            <assert test="@extension!=''">У1-26. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[2]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.16$') or matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.17$')">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов случаев оказания стационарной медицинской помощи, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16, или по правилу формирования идентификаторов случаев оказания амбулаторной медицинской помощи, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17".</assert>
            <assert test="@extension!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.723'">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.723'.</assert>
            <assert test="@code!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter[medService:DocType]">
            <assert test="medService:DocType/@xsi:type='CD'">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="medService:DocType/@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="count(effectiveTime)=1">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент effectiveTime.</assert>
            <assert test="medService:DocType/@code!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/code/medService:DocType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:DocType/@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:DocType/@codeSystemName!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:DocType/@displayName!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <assert test="count(low)=1">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low">
            <assert test="@value!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high">
            <assert test="@value!=''">У1-26. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У1-27 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(component)=1">У1-27. Элемент ClinicalDocument должен иметь 1 элемент component.</assert>
        </rule>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-27. Элемент ClinicalDocument должен иметь 1 элемент structuredBody.</assert>
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
            <assert test="count(component/section/code[@code='BENEFITS'])=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'BENEFITS'.</assert>
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
            <assert test="count(component/section/code[@code='RECIPE'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RECIPE'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']">
            <assert test="count(code)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='RECIPE']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='LINKDOCS'])&lt;=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'LINKDOCS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(code)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='LINKDOCS']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='6000']])&lt;=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='6000']]">
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6000']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6000']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6000']]/value">
            <assert test="@xsi:type='CD'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.609']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.609'.</assert>
            <assert test="@code!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='6001']])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='6001']]">
            <assert test="count(observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6001']]">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6001']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6001']]/value">
            <assert test="@xsi:type='ST'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='6002']])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='6002']]">
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6002']]">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6002']]/value">
            <assert test="@xsi:type='ST'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='6004']])=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='6004']]">
            <assert test="count(observation)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6004']]">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6004']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6004']]/value">
            <assert test="@xsi:type='CD'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.608']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.608'.</assert>
            <assert test="@code=['1','2','4','6','7']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @code равное '1', '2', '4', '6' или '7'.</assert>
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='6005']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='6005']]">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6005']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6005']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6005']]/value">
            <assert test="@xsi:type='TS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='6006']])=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='6006']]">
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6006']]">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6006']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6006']]/value">
            <assert test="@xsi:type='BL'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='11001']])=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='11001']]">
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='11001']]">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='11001']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='11001']]/value">
            <assert test="@xsi:type='BL'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='809']])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='809']]">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='809']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='809']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='809']]/value">
            <assert test="@xsi:type='CD'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']">
            <assert test="count(entry[observation/code[@code='811']])>=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS'] должен иметь не менее 1 элемента entry.</assert>
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
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.541']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.541'.</assert>
            <assert test="@code!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']">
            <assert test="count(entry[observation/code[@code='6009']])&lt;=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry[observation/code[@code='6009']]">
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='6009']]">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code[@code='6009']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='6009']]/value">
            <assert test="@xsi:type='CD'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.605']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.605'.</assert>
            <assert test="@code!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']">
            <assert test="count(entry[observation/code[@code='6010']])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry[observation/code[@code='6010']]">
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='6010']]">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code[@code='6010']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='6010']]/value">
            <assert test="@xsi:type='PQ'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@unit='%'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь значение атрибута @unit равное '%'.</assert>
            <assert test="@value!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="count(translation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation[code[@code='6010']]/value/translation">
            <assert test="@value!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value/translation должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@code='53'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value/translation должен иметь значение атрибута @code равное '53'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value/translation должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='BENEFITS']/entry/observation/value/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE'][entry/substanceAdministration]">
            <assert test="count(entry)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry[substanceAdministration]">
            <assert test="count(substanceAdministration)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry должен иметь 1 элемент substanceAdministration.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration">
            <assert test="@classCode='SBADM'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='RQO'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(routeCode)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration должен иметь 1 элемент routeCode.</assert>
            <assert test="count(consumable)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration должен иметь 1 элемент consumable.</assert>
            <assert test="count(entryRelationship[observation])=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration должен иметь 1 элемент entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.651']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.651'.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime[width][not(@nullFlavor)]">
            <assert test="@xsi:type='IVL_TS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime должен иметь значение атрибута @xsi:type равное 'IVL_TS'.</assert>
            <assert test="count(width)=1 or count(low)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime должен иметь 1 элемент width или 1 элемент low.</assert>
            <assert test="count(width)=1 or count(high)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime должен иметь 1 элемент width или 1 элемент high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor='NI'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width">
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="@unit=['min','h','d','wk','mo','a']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width должен иметь значение атрибута @unit равное 'min', 'h', 'd', 'wk', 'mo' или 'a'.</assert>
            <assert test="count(translation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @unit равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code=['22','23','24','520','521','522']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @code равное '22', '23', '24', '520', '521' или '522'.</assert>
            <assert test="@displayName=['мин','ч','сут','нед','мес','год']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @displayName равное 'мин', 'ч', 'сут', 'нед', 'мес' или 'год'.</assert>
<!-- Отсутствует в КП (Nut_sup_prescription, TradeName_prescription) -->
<!--
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width/translation должен иметь не пустое значение атрибута @value.</assert>
-->
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/width/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/low">
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/high">
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/routeCode[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1468']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/routeCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1468'.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/routeCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/routeCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/routeCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/routeCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable">
            <assert test="@typeCode='CSM'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable должен иметь значение атрибута @typeCode равное 'CSM'.</assert>
            <assert test="count(manufacturedProduct)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct">
            <assert test="@classCode='MANU'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута @classCode равное 'MANU'.</assert>
            <assert test="count(manufacturedMaterial)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedMaterial.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
            <assert test="@classCode='MMAT'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @classCode равное 'MMAT'.</assert>
            <assert test="@determinerCode='KIND'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @determinerCode равное 'KIND'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь 1 элемент code.</assert>
            <assert test="count(name)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь не более 1 элемента name.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.611'] or @codeSystem=['1.2.643.5.1.13.13.99.2.603']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.611' или значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.603'.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/name">
            <assert test=".!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/name должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship[substanceAdministration]">
            <assert test="@typeCode='COMP'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(substanceAdministration)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship должен иметь 1 элемент substanceAdministration.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration">
            <assert test="@classCode='SBADM'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='RQO'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(effectiveTime)=2">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration должен иметь 2 элемента effectiveTime.</assert>
            <assert test="count(doseQuantity)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration должен иметь 1 элемент doseQuantity.</assert>
            <assert test="count(consumable)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration должен иметь 1 элемент consumable.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[1][not(@nullFlavor)]">
            <assert test="@xsi:type='IVL_TS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime должен иметь значение атрибута @xsi:type равное 'IVL_TS'.</assert>
            <assert test="count(width)=1 or count(low)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime должен иметь 1 элемент width или 1 элемент low.</assert>
            <assert test="count(width)=1 or count(high)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime должен иметь 1 элемент width или 1 элемент high.</assert>
        </rule>

        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[1][@nullFlavor]">
            <assert test="@nullFlavor='NI'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[1]/width">
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="@unit=['min','h','d','wk','mo','a']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width должен иметь значение атрибута @unit равное 'min', 'h', 'd', 'wk', 'mo' или 'a'.</assert>
            <assert test="count(translation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[1]/width/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @unit равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code=['22','23','24','520','521','522']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @code равное '22', '23', '24', '520', '521' или '522'.</assert>
            <assert test="@displayName=['мин','ч','сут','нед','мес','год']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @displayName равное 'мин', 'ч', 'сут', 'нед', 'мес' или 'год'.</assert>
<!-- Отсутствует в КП (TradeName_prescription) -->
<!--
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width/translation должен иметь не пустое значение атрибута @value.</assert>
-->
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/width/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[1]/low">
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[1]/high">
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[2]">
            <assert test="@xsi:type='PIVL_TS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime должен иметь значение атрибута @xsi:type равное 'PIVL_TS'.</assert>
            <assert test="@institutionSpecified=['true','false']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime должен иметь значение атрибута @institutionSpecified равное 'true' или 'false'.</assert>
            <assert test="count(period)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime должен иметь 1 элемент period.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[2]/period">
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/period должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit=['min','h','d','wk','mo','a']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/period должен иметь значение атрибута @unit равное 'min', 'h' ,'d' ,'wk', 'mo' или 'a'.</assert>
            <assert test="count(translation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/period должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime[2]/period/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/period/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@code=['22','23','24','520','521','522']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/period/translation должен иметь значение атрибута @code равное '22', '23' ,'24' ,'520', '521' или '522'.</assert>
            <assert test="@displayName=['мин','ч','сут','нед','мес','год']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/period/translation должен иметь значение атрибута @displayName равное 'мин', 'ч' ,'сут' ,'нед', 'мес' или 'год'.</assert>
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/period/translation должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/effectiveTime/period/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity">
            <assert test="@xsi:type='IVL_PQ'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity должен иметь значение атрибута @xsi:type равное 'IVL_PQ'.</assert>
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity должен иметь не пустое значение атрибута @value.</assert>
            <assert test="count(translation)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity должен иметь не более 1 элемента translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity/translation должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity/translation должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity/translation должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/doseQuantity/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/consumable">
<!-- Отсутствует в КП (Nut_sup_prescription) -->
<!--
            <assert test="@typeCode='CSM'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/consumable должен иметь значение атрибута @typeCode равное 'CSM'.</assert>
-->
            <assert test="count(manufacturedProduct)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/consumable должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/consumable/manufacturedProduct">
<!-- Отсутствует в КП (Nut_sup_prescription) -->
<!--
            <assert test="@classCode='MANU'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута @classCode равное 'MANU'.</assert>
-->
            <assert test="count(manufacturedMaterial)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedMaterial.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
            <assert test="@nullFlavor='NA'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship[observation]">
            <assert test="@typeCode='COMP'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/code">
            <assert test="@code='6011'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/code должен иметь значение атрибута @code равное '6011'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value">
            <assert test="@xsi:type='PQ'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit='U'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value должен иметь значение атрибута @unit равное 'U'.</assert>
            <assert test="count(translation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code='128'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value/translation должен иметь значение атрибута @code равное '128'.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value/translation должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@value!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/entryRelationship/observation/value/translation должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition">
            <assert test="@typeCode='PRCN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition должен иметь значение атрибута @typeCode равное 'PRCN'.</assert>
            <assert test="count(criterion)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition должен иметь 1 элемент criterion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion">
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion/code">
            <assert test="@code='ASSERTION'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion/code должен иметь значение атрибута @code равное 'ASSERTION'.</assert>
            <assert test="@codeSystem='2.16.840.1.113883.5.4'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion/code должен иметь значение атрибута @codeSystem равное '2.16.840.1.113883.5.4'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion/value">
            <assert test="@xsi:type='ST'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/substanceAdministration/precondition/criterion/value должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE'][entry/supply]">
            <assert test="count(entry)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry[supply]">
            <assert test="count(supply)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry должен иметь 1 элемент supply.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply">
            <assert test="@classCode='SPLY'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply должен иметь значение атрибута @classCode равное 'SPLY'.</assert>
            <assert test="@moodCode='RQO'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply должен иметь 1 элемент text.</assert>
            <assert test="count(quantity)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply должен иметь 1 элемент quantity.</assert>
            <assert test="count(product)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply должен иметь 1 элемент product.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.651']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.651'.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity">
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity должен иметь не пустое значение атрибута @value.</assert>
            <assert test="count(translation)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity/translation должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity/translation должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity/translation должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/quantity/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product">
            <assert test="@typeCode='PRD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product должен иметь значение атрибута @typeCode равное 'PRD'.</assert>
            <assert test="count(manufacturedProduct)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct">
            <assert test="@classCode='MANU'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct должен иметь значение атрибута @classCode равное 'MANU'.</assert>
            <assert test="count(manufacturedMaterial)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct должен иметь 1 элемент manufacturedMaterial.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial">
            <assert test="@classCode='MMAT'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @classCode равное 'MMAT'.</assert>
            <assert test="@determinerCode='KIND'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @determinerCode равное 'KIND'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial должен иметь 1 элемент code.</assert>
            <assert test="count(name)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.604']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.604'.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RECIPE']/entry/supply/product/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(entry)>=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry">
            <assert test="count(act)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act">
            <assert test="@classCode='ACT'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент text.</assert>
            <assert test="count(effectiveTime)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[observation/code[@code='11002']])&lt;=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='11003']])&lt;=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(reference)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@code!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime">
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']]">
            <assert test="@typeCode='COMP'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value">
            <assert test="@xsi:type='ST'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']]">
            <assert test="@typeCode='COMP'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value">
            <assert test="@xsi:type='ST'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference">
            <assert test="@typeCode='REFR'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference должен иметь 1 элемент externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument">
            <assert test="@classCode='DOCCLIN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOCCLIN'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(id)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
</schema>
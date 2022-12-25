<!-- Схематрон для СЭМД "Протокол инструментального исследования" (Редакция 3) -->
<!-- Разработано в соотвествии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/4021 -->

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
<!-- В максКП - identity:stateCode + отсутствует @xsi:type -->
<!--
            <assert test="count(address:stateCode)=1">У1-3. Элемент addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-3. Элемент addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-3. Элемент addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
-->
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
            <assert test="@root='1.2.643.5.1.13.2.7.5.1.6.9.3'">У1-11. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.7.5.1.6.9.3'.</assert>
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
            <assert test="@code='6'">У1-13. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '6'.</assert>
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
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy[not(@nullFlavor)]]">
            <assert test="count(identity:InsurancePolicy/identity:InsurancePolicyType)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:InsuracePolicyType.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicyType/identity:InsuracePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@code!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Series)&lt;=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь не более 1 элемента identity:Series.</assert>
            <assert test="not(identity:InsurancePolicy/identity:Series) or identity:InsurancePolicy/identity:Series/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Number)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:InsurancePolicy/identity:Number/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[1][not(@nullFlavor)]">
            <assert test="count(address:Type)=1">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь 1 элемент address:Type.</assert>
            <assert test="address:Type/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
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
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
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
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
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
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-25. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
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
            <assert test="count(participant[@typeCode='IND'])=1">У1-26. Элемент ClinicalDocument должен иметь 1 элемент participant.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']">
            <assert test="count(associatedEntity)=1">У1-26. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity">
            <assert test="@classCode='GUAR'">У1-26. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'GUAR'.</assert>
            <assert test="count(code)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(identity:DocInfo)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:DocInfo.</assert>
            <assert test="count(scopingOrganization)&lt;=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента scopingOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1039'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь значение атрибута @classCode равное '1.2.643.5.1.13.13.11.1039'.</assert>
            <assert test="@code!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @classCode.</assert>
            <assert test="@codeSystemName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code=['8','9','10','11']]">
            <assert test="identity:DocInfo/@nullFlavor=['INV','NAV']">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение атрибута @nullFlavor равное 'INV' или 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:IdentityDocType)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:IdentityDocType.</assert>
            <assert test="count(identity:DocInfo/identity:InsurancePolicyType)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:InsurancePolicyType.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@xsi:type='CD'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@displayName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:Series)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:DocInfo/identity:Number)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Number.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:Series/@xsi:type='ST'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:Number[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:Number/@xsi:type='ST'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:INN)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:INN.</assert>
            <assert test="identity:DocInfo/identity:INN/@xsi:type='ST'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code='1']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='1'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '1'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code='3']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='2'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '2'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code=['4','5','6']]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='3'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '3'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1'][identity:DocInfo/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:Series!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NA'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']">
            <assert test="identity:DocInfo/identity:Series!='' or identity:DocInfo/identity:Series/@nullFlavor!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение или иметь не пустое значение атрибута @nullFlavor.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Number/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')][identity:DocInfo/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:Number!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='3'][identity:DocInfo/identity:INN[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:INN!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:effectiveTime/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')][identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:low)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:low.</assert>
<!-- Отсуствует в максКП -->
<!--
            <assert test="identity:DocInfo/identity:effectiveTime/identity:low/@xsi:type='TS'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
-->
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-26. Дата в элементе должна быть указана с точностью до дня.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:high)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:high.</assert>
<!-- Отсутствует в максКП -->
<!--
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@xsi:type='TS'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
-->
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']">
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor='NAV'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@code='2')][identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]][identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]]">
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-26. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code=['1','3','6']]/scopingOrganization">
            <assert test="count(id)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[not(@nullFlavor)]">
            <assert test="@root=['1.2.643.5.1.13.13.99.2.183','1.2.643.5.1.13.2.1.1.635']">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.99.2.183' или '1.2.643.5.1.13.2.1.1.635'.</assert>
            <assert test="@extension!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-26. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
<!-- В максКП - identity:stateCode -->
<!--
            <assert test="count(address:stateCode)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
-->
            <assert test="count(postalCode)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-26. Элемент ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-27 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant[@typeCode='REF'])&lt;=1">У1-27. Элемент ClinicalDocument должен иметь не более 1 элемента participant.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']">
            <assert test="count(associatedEntity)=1">У1-27. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity">
            <assert test="@classCode='PROV'">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'PROV'.</assert>
            <assert test="count(id)=2">У1-27. Элемент ClinicalDocument/participant/associatedEntity иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(associatedPerson)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент associatedPerson.</assert>
            <assert test="count(scopingOrganization)&lt;=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента scopingOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-27. Элемент ClinicalDocument/participant/associatedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.100.3'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity/associatedPerson">
            <assert test="count(name)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity/associatedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-27. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity/scopingOrganization">
            <assert test="count(id)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-27. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-27. Элемент ClinicalDocument/participant/assignedEntity/scopingOrganization должен иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <!-- У1-28 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(inFulfillmentOf)&lt;=1">У1-28. Элемент ClinicalDocument должен иметь не более 1 элемента inFulfillmentOf.</assert>
        </rule>
        <rule context="ClinicalDocument/inFulfillmentOf">
            <assert test="count(order)=1">У1-28. Элемент ClinicalDocument/inFulfillmentOf должен иметь 1 элемент order.</assert>
        </rule>
        <rule context="ClinicalDocument/inFulfillmentOf/order">
            <assert test="count(id)=1">У1-28. Элемент ClinicalDocument/inFulfillmentOf/order иметь 1 элемента id.</assert>
            <assert test="count(code)=1">У1-28. Элемент ClinicalDocument/inFulfillmentOf/order должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/inFulfillmentOf/order/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-28. Элемент ClinicalDocument/inFulfillmentOf/order/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension!=''">У1-28. Элемент ClinicalDocument/participant/associatedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/inFulfillmentOf/order/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-28. Элемент ClinicalDocument/inFulfillmentOf/order/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@code='3'">У1-28. Элемент ClinicalDocument/inFulfillmentOf/order/code должен иметь значение атрибута @code равное '3'.</assert>
            <assert test="@codeSystemName!=''">У1-28. Элемент ClinicalDocument/inFulfillmentOf/order/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-28. Элемент ClinicalDocument/inFulfillmentOf/order/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-28. Элемент ClinicalDocument/inFulfillmentOf/order/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
    </pattern>
    <!-- У1-29 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(documentationOf)=1">У1-29. Элемент ClinicalDocument должен иметь 1 элемент documentationOf.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf">
            <assert test="count(serviceEvent)=1">У1-29. Элемент ClinicalDocument/documentationOf должен иметь 1 элемент serviceEvent.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent">
            <assert test="count(code)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(medService:serviceForm)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент medService:serviceForm.</assert>
            <assert test="count(medService:serviceType)&lt;=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceType.</assert>
            <assert test="count(medService:serviceCond)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент medService:serviceCond.</assert>
            <assert test="count(performer)>=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не менее 1 элемента performer.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.726'">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.726'.</assert>
            <assert test="@code!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystem.</assert>
            <assert test="@codeSystemVersion!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
            <assert test="count(low)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-29. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-29. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceForm[not(@nullFlavor)]]">
            <assert test="medService:serviceForm/@codeSystem=['1.2.643.5.1.13.13.11.1551','1.2.643.5.1.13.2.1.1.568','1.2.643.5.1.13.13.99.2.377']">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1551', '1.2.643.5.1.13.2.1.1.568' или '1.2.643.5.1.13.13.99.2.377'.</assert>
            <assert test="medService:serviceForm/@code!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceForm/@codeSystemVersion!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceForm/@codeSystemName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceForm/@displayName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceType]">
            <assert test="medService:serviceType/@codeSystem='1.2.643.5.1.13.13.11.1034'">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1034'.</assert>
            <assert test="medService:serviceType/@code!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceType/@codeSystemVersion!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceType/@codeSystemName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceType/@displayName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceCond[not(@nullFlavor)]]">
            <assert test="medService:serviceCond/@codeSystem=['1.2.643.5.1.13.13.99.2.322','1.2.643.5.1.13.2.1.1.103']">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1034' или '1.2.643.5.1.13.2.1.1.103'.</assert>
            <assert test="medService:serviceCond/@code!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceCond/@codeSystemVersion!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceCond/@codeSystemName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceCond/@displayName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
            <assert test="@typeCode=['PPRF','SPRF']">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь значение атрибута @typeCode равное 'PPRF' или 'SPRF'.</assert>
            <assert test="count(assignedEntity)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
            <assert test="count(id)=2">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization">
<!-- Отсутствует в максКП -->
<!--
            <assert test="@classCode='ORG'">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
-->
            <assert test="count(id)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-29. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-30 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(componentOf)&lt;=1">У1-30. Элемент ClinicalDocument должен иметь не более 1 элемента componentOf.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf">
            <assert test="count(encompassingEncounter)=1">У1-30. Элемент ClinicalDocument/componentOf должен иметь 1 элемент encompassingEncounter.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <assert test="count(id)=[1,2]">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)&lt;=1">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь не более 1 элемента code.</assert>
            <assert test="count(medService:DocType)&lt;=1">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь не более 1 элемента medService:DocType.</assert>
            <assert test="count(effectiveTime)=1">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.15$')">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов случаев оказания медицинской помощи в экземпляре МИС в медицинской организации, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15".</assert>
            <assert test="@extension!=''">У1-30. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[2]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.16$') or matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.17$')">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов случаев оказания стационарной медицинской помощи, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16, или по правилу формирования идентификаторов случаев оказания амбулаторной медицинской помощи, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17".</assert>
            <assert test="@extension!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.723'">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.723'.</assert>
            <assert test="@code!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter[medService:DocType]">
<!-- Отсутствует в максКП -->
<!--
            <assert test="medService:DocType/@xsi:type='CD'">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
-->
            <assert test="medService:DocType/@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="count(effectiveTime)=1">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент effectiveTime.</assert>
            <assert test="medService:DocType/@code!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/code/medService:DocType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:DocType/@codeSystemVersion!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:DocType/@codeSystemName!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:DocType/@displayName!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <assert test="count(low)=1">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low">
            <assert test="@value!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high">
            <assert test="@value!=''">У1-30. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
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
            <assert test="count(component/section/code[@code='VITALPARAM'])&lt;=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'VITALPARAM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']">
            <assert test="count(code)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='VITALPARAM']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SCORES'])&lt;=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'VITALPARAM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']">
            <assert test="count(code)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='SCORES']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='RESINFO'])=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемента component со значением атрибута section/code/@code равным 'RESINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']">
            <assert test="count(code)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='RESINFO']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SERVICES'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'SERVICES'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']">
            <assert test="count(code)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='SERVICES']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='800']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='800']]">
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='800']]">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='800']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='800']]/value">
            <assert test="@xsi:type='CD'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1007','1.2.643.5.1.13.2.1.1.109']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1007' или '1.2.643.5.1.13.2.1.1.109'.</assert>
            <assert test="@code!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='801']])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='801']]">
            <assert test="count(observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='801']]">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='801']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='801']]/value">
            <assert test="@xsi:type='CD'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1008']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1008'.</assert>
            <assert test="@code!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[act/statusCode])>=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[act/statusCode]">
            <assert test="count(act)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]">
            <assert test="@classCode='ACT'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[observation])&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь не более 1 элемента entryRelationship[observation].</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1471']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1471'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/statusCode">
            <assert test="@code='completed'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/effectiveTime">
            <assert test="count(low)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/effectiveTime/low[not(@nullFlavor)]">
            <assert test="@value!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/effectiveTime/high">
            <assert test="@value!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship[observation]">
            <assert test="@typeCode='COMP'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship[observation] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship[observation] должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship/observation/code">
            <assert test="@code='4159'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @code равное '4159'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship/observation/value">
            <assert test="@xsi:type='PQ'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship/observation/value/translation">
            <assert test="@value!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value/translation должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value/translation должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/observation/value/translation должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship[act]">
            <assert test="@typeCode='REFR'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship[act] должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="@inversionInd='false'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship[act] должен иметь значение атрибута @inversionInd равное 'false'.</assert>
            <assert test="count(act)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship[act] должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship/act">
            <assert test="@classCode='ACT'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[statusCode]/entryRelationship/act/effectiveTime">
            <assert test="@value!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/entryRelationship/act/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observationMedia]">
            <assert test="count(observationMedia)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observationMedia.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="@ID">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia должен иметь атрибут @ID.</assert>
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia/value">
            <assert test="@xsi:type='ED'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia/value должен иметь значение атрибута @xsi:type равное 'ED'.</assert>
            <assert test="@mediaType!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia/value должен иметь не пустое значение атрибута @mediaType.</assert>
            <assert test="count(reference)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia/value должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia/value/reference">
            <assert test="@value!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observationMedia/value//reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='838']]">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='838']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='838']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='838']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[act[not(statusCode)]])&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[act[not(statusCode)]]">
            <assert test="count(act)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[not(statusCode)]">
            <assert test="@classCode='ACT'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(reference)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[not(statusCode)]/code">
            <assert test="@nullFlavor='NA'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/code должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[not(statusCode)]/reference">
            <assert test="@typeCode='REFR'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/reference должен иметь 1 элемент externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[not(statusCode)]/reference/externalDocument">
            <assert test="@classCode='DOC'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOC'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(id)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/reference/externalDocument должен иметь 1 элемент id.</assert>
            <assert test="count(text)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/reference/externalDocument должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[not(statusCode)]/reference/externalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[not(statusCode)]/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act[not(statusCode)]/reference/externalDocument/text">
            <assert test=".!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/act/reference/externalDocument/text должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry">
            <assert test="count(organizer)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer">
            <assert test="@classCode='CLUSTER'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(statusCode)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(component)>=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь не менее 1 элемента component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode">
            <assert test="@code='completed'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime">
            <assert test="@value!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component">
            <assert test="@typeCode='COMP'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.262','1.2.643.5.1.13.13.11.1010']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.262' или '1.2.643.5.1.13.13.11.1010'.</assert>
            <assert test="@code!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value">
            <assert test="@xsi:type='PQ'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)&lt;=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь не более 1 элемента translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@value!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@code!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value/translation должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']">
            <assert test="count(entry)>=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент text.</assert>
            <assert test="count(effectiveTime)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(performer)&lt;=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь не более 1 элемента performer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1514']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1514'.</assert>
            <assert test="@code!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/effectiveTime">
            <assert test="@value!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value">
            <assert test="@xsi:type='PQ'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="count(translation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@code!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value/translation должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value/translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value/translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value/translation должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer">
            <assert test="count(modeCode)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer должен иметь 1 элемент modeCode.</assert>
            <assert test="count(assignedEntity)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/modeCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.368','1.2.643.5.1.13.2.1.1.734']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/modeCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.368' или '1.2.643.5.1.13.2.1.1.734'.</assert>
            <assert test="@code='AUTHOR'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/modeCode должен иметь значение атрибута @code равное 'AUTHOR'.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/modeCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/modeCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/modeCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity">
            <assert test="count(id)=2">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/assignedPerson/name должен иметь не более 1 элемента identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/assignedPerson/name/identity:Patronymic должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='1805']]">
            <assert test="count(observation)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='1805']]">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='1805']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='1805']]/value">
            <assert test="@xsi:type='ST'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='1806']]">
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='1806']]">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='1806']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='1806']]/value">
            <assert test="@xsi:type='ST'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='807']]">
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='807']]">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='807']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='807']]/value">
            <assert test="@xsi:type='ST'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='808']]">
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='808']]">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='808']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='808']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1473']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1473'.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="count(originalText)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не более 1 элемента originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='808']]/value[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']">
            <assert test="count(entry)>=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry">
            <assert test="count(act)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/act">
            <assert test="@classCode='ACT'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/effectiveTime">
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
</schema>
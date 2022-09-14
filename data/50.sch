<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>  
    <!-- У1-1 -->
    <pattern>
        <rule context="//patient | //assignedPerson">
            <assert test="count(name)=1">У1-1. Элементы //patient, //assignedPerson должны иметь 1 элемент name.</assert>
        </rule>
        <rule context="//patient/name | //assignedPerson/name">
            <assert test="count(family)=1">У1-1. Элементы //patient/name, //assignedPerson/name должны иметь 1 элемент family.</assert>
            <assert test="count(given)=[1,2]">У1-1. Элементы //patient/name, //assignedPerson/name должны иметь 1 или 2 элемента given.</assert>
        </rule>
    </pattern>
    <!-- У1-2 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
<!-- Отсутствует в минКП -->
<!--
        <assert test="count(telecom)=1">У1-2. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент telecom.</assert>
-->
    </rule>
    </pattern>
    <!-- У1-3 -->
    <!-- У1-4 -->
    <pattern>
        <rule context="//representedOrganization | //representedCustodianOrganization | //providerOrganization">
            <assert test="count(name)=1">У1-4. Элементы //representedOrganization, //representedCustodianOrganization, //providerOrganization должны иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-4. Элементы //representedOrganization, //representedCustodianOrganization, //providerOrganization должны иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <!-- У1-5 -->
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-5. Элементы //addr должны иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(state)=1">У1-5. Элементы //addr должны иметь 1 элемент state.</assert>
            <assert test="count(fias:Address)=1">У1-5. Элементы //addr должны иметь 1 элемент fias:Address.</assert>
<!-- Отсутствуют в некоторых элементах в КП -->
<!--
            <assert test="count(fias:AOGUID)=1">У1-5. Элементы //addr должны иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:HOUSEGUID)=1">У1-5. Элементы //addr должны иметь 1 элемент fias:HOUSEGUID.</assert>
-->
        </rule>
    </pattern>
    <!-- У1-6 -->
    <pattern>
        <rule context="ClinicalDocument/effectiveTime | ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-6. Дата в элементах должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <!-- У1-7 -->
    <pattern>
        <rule context="//telecom[not(@nullFlavor)]">
            <assert test="matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')">У1-7. Все элементы //telecom со схемой "tel:" должны соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра должна остаться в номере телефона после удаления всех разделителей.</assert>
        </rule>
    </pattern>
    <!-- У1-8 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(realmCode)=1">У1-8. Элемент ClinicalDocument должен иметь 1 элемент realmCode.</assert>
        </rule>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">У1-8. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-9 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(typeId)=1">У1-9. Элемент ClinicalDocument должен иметь 1 элемент typeId.</assert>
        </rule>
        <rule context="ClinicalDocument/typeId">
            <assert test="@root='2.16.840.1.113883.1.3'">У1-9. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>
            <assert test="@extension='POCD_HD000040'">У1-9. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_HD000040'.</assert>
        </rule>
    </pattern>
    <!-- У1-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">У1-10. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
        </rule>
        <rule context="ClinicalDocument/templateId">
<!-- Противоречит КП -->
<!--
        <assert test="@root='1.2.643.5.1.13.2.7.5.1.39.3'">У1-10. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.7.5.1.39.3'.</assert>
-->
        </rule>
    </pattern>    
    <!-- У1-11 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-11. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-11. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code='39'">У1-12. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '39'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-12. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
        </rule>
    </pattern>
    <!-- У1-13 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
        </rule>
        <rule context="ClinicalDocument/title">
            <assert test=".!=''">У1-13. Элемент ClinicalDocument/title должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-14 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/effectiveTime">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-15 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">У1-15. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">У1-15. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@code!=''">У1-15. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-15. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У1-15. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-16 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">У1-16. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-16. Элемент ClinicalDocument/languageCode должен иметь значение атрибута @code равное 'ru-RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-17 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
            <assert test="count(setId)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
            <assert test="count(versionNumber)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент versionNumber.</assert>
        </rule>
    </pattern>
    <!-- У1-18 -->
    <pattern>
        <rule context="ClinicalDocument/id[not(@nullFlavor)] | ClinicalDocument/setId[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-18. Элементы ClinicalDocument/id, ClinicalDocument/setId должны иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-18. Элементы ClinicalDocument/id, ClinicalDocument/setId должны иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <report test="matches(setId/@root,id/@root)">У1-19. Элемент ClinicalDocument/setId должен иметь значение атрибута @root отличное от значения атрибута @root элемента ClinicalDocument/id.</report>
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
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[1]">
            <assert test="@use='H'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[1]/address:Type должен иметь значение атрибута @use равное 'H'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[2]">
            <assert test="@use='HP'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/addr[2]/address:Type должен иметь значение атрибута @use равное 'HP'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-21. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(identity:Ogrn)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент identity:Ogrn.</assert>
            <assert test="count(name)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Ogrn]">
            <assert test="identity:Ogrn/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:Ogrn!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn должен иметь не пустое значение.</assert>
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
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">У1-22. Элемент ClinicalDocument/author/assignedAuthor author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1]">
<!-- В КП в OID - [...].75 -->
<!--
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.71$')">У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.71".</assert>
-->
            <assert test="@extension!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.100.3'">У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-22. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="count(id)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(identity:Ogrn)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент identity:Ogrn.</assert>
            <assert test="count(name)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-22. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/patientRole/providerOrganization[identity:Ogrn]">
            <assert test="identity:Ogrn/@xsi:type='ST'">У1-22. Элемент ClinicalDocument/author/patientRole/providerOrganization/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:Ogrn!=''">У1-22. Элемент ClinicalDocument/author/patientRole/providerOrganization/identity:Ogrn должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-23, У1-24, У1-25 -->
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
            <assert test="count(name)=1">У1-24. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-25. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-23. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-26 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(informationRecipient)=1">У1-26. Элемент ClinicalDocument должен иметь 1 элемент informationRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient">
            <assert test="count(intendedRecipient)=1">У1-26. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient">
            <assert test="count(receivedOrganization)>=1">У1-26. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь не менее 1 элемента receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">У1-26. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-26. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-27 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-27. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity .</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@code='S'">У1-27. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @code равное 'S'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
<!-- В КП OID [...].70 -->
<!--
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.71$')">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.71".</assert>
-->
            <assert test="@extension!=''">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.100.3'">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(identity:Ogrn)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент identity:Ogrn.</assert>
            <assert test="count(name)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedAuthor/representedOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedAuthor/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedAuthor/representedOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-27. Элемент ClinicalDocument/legalAuthenticator/assignedAuthor/representedOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/patientRole/providerOrganization[identity:Ogrn]">
            <assert test="identity:Ogrn/@xsi:type='ST'">У1-27. Элемент ClinicalDocument/legalAuthenticator/patientRole/providerOrganization/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:Ogrn!=''">У1-27. Элемент ClinicalDocument/legalAuthenticator/patientRole/providerOrganization/identity:Ogrn должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-28 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(componentOf)=1">У1-28. Элемент ClinicalDocument должен иметь 1 элемент componentOf.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf">
            <assert test="count(encompassingEncounter)=1">У1-28. Элемент ClinicalDocument/componentOf должен иметь 1 элемент encompassingEncounter.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <assert test="count(id)=1">У1-28. Элемент ClinicalDocument/componentOf должен иметь 1 элемент encompassingEncounter.</assert>
            <assert test="count(effectiveTime)=1">У1-28. Элемент ClinicalDocument/componentOf должен иметь 1 элемент encompassingEncounter.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-28. Элемент ClinicalDocument/componentOf/encompassingEncounter/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-29 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-29. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
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
            <assert test="count(component/section/code[@code='PRVDS'])&lt;=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'PRVDS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']">
            <assert test="count(code)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='PRVDS']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='IMM'])&lt;=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'IMM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']">
            <assert test="count(code)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='IMM']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='RESCONS'])=1">У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RESCONS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']">
            <assert test="count(code)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='RESCONS']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='RESINSTR'])=1">У2-6. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RESINSTR'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']">
            <assert test="count(code)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='RESINSTR']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='RESLAB'])=1">У2-7. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RESLAB'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']">
            <assert test="count(code)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='RESLAB']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У2-8 -->
<!-- Отсутствует в КП -->
<!--
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='RECWORK'])=1">У2-8. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RECWORK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECWORK']">
            <assert test="count(code)=1">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='RECWORK']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
-->
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
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']">
            <assert test="count(entry[organizer/code[@code='4073']])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry[organizer/code[@code='4073']]">
            <assert test="count(organizer)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer[code[@code='4073']]">
            <assert test="@classCode='CLUSTER'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(participant)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer должен иметь 1 элемент participant.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/code[@code='4073']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer[code[@code='4073']]/statusCode">
            <assert test="@code='completed'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer[code[@code='4073']]/participant">
            <assert test="@typeCode='LOC'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant должен иметь значение атрибута @typeCode равное 'LOC'.</assert>
            <assert test="count(participantRole)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant должен иметь 1 элемент participantRole.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer[code[@code='4073']]/participant/participantRole">
            <assert test="@classCode='SDLOC'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole должен иметь значение атрибута @classCode равное 'SDLOC'.</assert>
            <assert test="count(addr)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole должен иметь 1 элемент addr.</assert>
            <assert test="count(telecom)&lt;=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole должен иметь 1 элемент telecom.</assert>
            <assert test="count(playingEntity)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole должен иметь 1 элемент playingEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer[code[@code='4073']]/participant/participantRole/playingEntity">
            <assert test="count(name)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole/playingEntity должен иметь 1 элемент name.</assert>
            <assert test="count(identity:Ogrn)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole/playingEntity должен иметь 1 элемент identity:Ogrn.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer[code[@code='4073']]/participant/participantRole/playingEntity[identity:Ogrn]">
            <assert test="identity:Ogrn/@xsi:type='ST'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='WORK']/entry/organizer/participant/participantRole/playingEntity/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
<!-- В максКП @code='1' -->
<!--
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']">
            <assert test="count(entry[observation/code[@code='3']])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS'] должен иметь 1 элемент entry.</assert>
        </rule>
-->
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry[observation/code[@code='3']]">
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation[code[@code='3']]">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation должен иметь 1 элемент text.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation/code[@code='3']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation[code[@code='3']]/text">
            <assert test="@xsi:type='ST'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation/text должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation/text должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation[code[@code='3']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRVDS']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']">
            <assert test="count(entry)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry">
            <assert test="count(substanceAdministration)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry должен иметь 1 элемент substanceAdministration.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration">
            <assert test="@classCode='SBADM'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='RQO'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
            <assert test="count(effectiveTime)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(consumable)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь 1 элемент consumable.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/effectiveTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-4. Дата в элементе должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable">
            <assert test="count(manufacturedProduct)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct">
            <assert test="count(manufacturedMaterial)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedMaterial.</assert>
            <assert test="@classCode='MANU'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct должен иметь 1 значение атрибута @classCode равное 'MANU'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
            <assert test="@classCode='MMAT'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь 1 значение атрибута @classCode равное 'MMAT'.</assert>
            <assert test="@determinerCode='KIND'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь 1 значение атрибута @determinerCode равное 'KIND'.</assert>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1078'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1078'.</assert>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)&lt;=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation должен иметь не более 1 элемента value.</assert>
            <assert test="count(performer)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент performer.</assert>
            <assert test="count(entryRelationship)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/code">
            <assert test="@nullFlavor='NI'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/code должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/statusCode">
            <assert test="@code='completed'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/effectiveTime">
<!-- Структура даты/времени в КП не соответствует требуемому шаблону -->
<!--
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-5. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
-->
            </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer">
            <assert test="count(assignedEntity)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity">
            <assert test="count(id)=2">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity должен иметь 1 элемент representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1][@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1] должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.100.3'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(identity:Ogrn)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент identity:Ogrn.</assert>
            <assert test="count(name)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization[identity:Ogrn]">
            <assert test="identity:Ogrn/@xsi:type='ST'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship">
            <assert test="@typeCode='COMP'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code">
            <assert test="@code='809'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @code равное '809'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry">
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(reference)&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1471'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1471'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/statusCode">
            <assert test="@code!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/statusCode должен иметь не пустое значение атрибута @code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-6. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/value">
            <assert test="@xsi:type='ST'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/reference">
            <assert test="count(externalDocument)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/reference должен иметь 1 элемент externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument">
            <assert test="count(id)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument">
            <assert test="@root!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument должен иметь не пустое значение атрибута @root.</assert>
            <assert test="@extension!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry">
            <assert test="count(organizer)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer">
            <assert test="@classCode='CLUSTER'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(statusCode)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(reference)&lt;=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer должен иметь не более 1 элемента reference.</assert>
            <assert test="count(component)>=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer должен иметь не менее 1 элемента component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/statusCode">
            <assert test="@code!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/statusCode должен иметь не пустое значение атрибута @code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/reference">
            <assert test="count(externalDocument)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/reference должен иметь 1 элемент externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/reference">
            <assert test="count(id)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/reference/externalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/reference/id">
            <assert test="@root!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/reference/id должен иметь не пустое значение атрибута @root.</assert>
            <assert test="@extension!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/reference/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component">
            <assert test="count(organizer)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer">
            <assert test="@classCode='BATTERY'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь значение атрибута @classCode равное 'BATTERY'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(component)>=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь не менее 1 элемента component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/code">
            <assert test="count(originalText)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/code должен иметь 1 элемент originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/statusCode">
            <assert test="@code!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/statusCode должен иметь не пустое значение атрибута @code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component">
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент value.</assert>
            <assert test="count(referenceRange)&lt;=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь не более 1 элемента referenceRange.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1080'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1080'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/statusCode">
            <assert test="@code!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/statusCode должен иметь не пустое значение атрибута @code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-7. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value">
            <assert test="@xsi:type='PQ'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="count(translation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value/translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange">
            <assert test="count(observationRange)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange должен иметь 1 элемент observationRange.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange">
            <assert test="count(text)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange должен иметь 1 элемент text.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value">
            <assert test="@xsi:type='IVL_PQ'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value должен иметь значение атрибута @xsi:type равное 'IVL_PQ'.</assert>
            <assert test="count(low)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value должен иметь 1 элемент high.</assert>
<!-- Отсутствует в КП -->
<!--
            <assert test="count(interpretationCode)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value должен иметь 1 элемент interpretationCode.</assert>
-->
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low">
            <assert test="@value!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low/translation">
            <assert test="matches(@value, ../@value)">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low/translation должен иметь значение атрибута @value равное значению атрибута @value элемента low.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high">
            <assert test="@value!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high/translation">
            <assert test="matches(@value, ../@value)">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high/translation должен иметь значение атрибута @value равное значению атрибута @value элемента high.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/interpretationCode">
            <assert test="@code!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/interpretationCode должен иметь не пустое значение атрибута @code.</assert>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='7001']]">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='7001']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=[1,2]">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 или 2 элемента value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='7001']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='7001']]/value[1]">
            <assert test="@xsi:type='BL'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value[1] должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='7001']]/value[2]">
            <assert test="@xsi:type='ST'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value[2] должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
</schema>
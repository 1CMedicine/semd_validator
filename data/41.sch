<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <!-- У1-1 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient | //assignedPerson">
            <assert test="count(name)=1">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient, //assignedPerson должны иметь один элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name | //assignedPerson/name">
            <assert test="count(family)=1">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient/name, //assignedPerson/name должны иметь один элемент family.</assert>
            <assert test="count(given)=[1,2]">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient/name, //assignedPerson/name должны иметь 1 или 2 элемента given.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/given[1] | //assignedPerson/name/given[1]">
            <report test="@nullFlavor">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient/name/given[1], //assignedPerson/name/given[1] не должны содержать @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/family | //assignedPerson/name/family">
            <report test="@nullFlavor">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient/name/family, //assignedPerson/name/family не должны содержать @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-2 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(name)=1">У1-2. Элементы ClinicalDocument/recordTarget/patientRole/providerOrganization, ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должны иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-2. Элементы ClinicalDocument/recordTarget/patientRole/providerOrganization, ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должны иметь 1 элемент addr.</assert>
            <assert test="count(telecom)>=1">У1-2. Элементы ClinicalDocument/recordTarget/patientRole/providerOrganization, ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должны иметь не менее 1 элемента telecom.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/name | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <report test="@nullFlavor">У1-2. Элементы ClinicalDocument/recordTarget/patientRole/providerOrganization/name, ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name не должны иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-3 -->
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-3. Элемент //addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(state)=1">У1-3. Элемент //addr должен иметь 1 элемент state.</assert>
        </rule>
    </pattern>
    <!-- У1-4 -->
    <!-- У1-5 -->
    <!-- У1-6 -->
    <pattern>
        <rule context="ClinicalDocument/effectiveTime | ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time | ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low | ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high">
<!--            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-6. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert> -->
<!--            <report test="@nullFlavor">У1-6. Элементы ClinicalDocument/effectiveTime, ClinicalDocument/author/time, ClinicalDocument/legalAuthenticator/time, ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low, ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high не должны иметь атрибут @nullFlavor.</report> -->
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
            <assert test="count(realmCode)=1">У1-8. Элемент ClinicalDocument должен иметь один элемент realmCode.</assert>
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
            <assert test="@extension='POCD_HD000040'">У1-9. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_HD000040'.</assert>
            <assert test="@root='2.16.840.1.113883.1.3'">У1-9. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>
        </rule>
    </pattern>
    <!-- У1-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">У1-10. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
        </rule>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root='1.2.643.5.1.13.2.7.5.1.1.3'">У1-10. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.7.5.1.1.3'.</assert>
        </rule>
    </pattern>
    <!-- У1-11 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-11. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="count(@extension)=1">У1-11. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
<!--        <assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-11. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert> -->
        </rule>
    </pattern>
    <!-- У1-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code='1'">У1-12. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '1'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.13.99.2.195','1.2.643.5.1.13.2.1.1.646']">У1-12. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195', '1.2.643.5.1.13.2.1.1.646' или '1.2.643.5.1.13.13.11.1522'.</assert>
        </rule>
    </pattern>
    <!-- У1-13 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
        </rule>
        <rule context="ClinicalDocument/title">
            <assert test="normalize-space(text())!=''">У1-13. Элемент ClinicalDocument/title должен содержать не пустое наполнение.</assert>
        </rule>
    </pattern>
    <!-- У1-14 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/effectiveTime">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/effectiveTime не должен содержать @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-15 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">У1-15. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1116','1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9']">У1-15. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1116', '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9' или '2.16.840.1.113883.2.35.10.9'.</assert>
            <assert test="@code!=''">У1-15. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-15. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-15. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-16 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">У1-16. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-16. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное 'ru-RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-17 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-17. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
            <assert test="count(setId)=1">У1-17. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
            <assert test="count(versionNumber)=1">У1-17. Элемент ClinicalDocument должен иметь 1 элемент versionNumber.</assert>
            <report test="matches(id/@root,setId/@root)">У1-17. Значения атрибута @root элементов ClinicalDocument/id и ClinicalDocument/setId должны различаться.</report>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="@root">У1-17. Элемент ClinicalDocument/id должен иметь атрибут @root.</assert>
            <assert test="@extension">У1-17. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
<!--        <assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-17. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert> -->
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="@root">У1-17. Элемент ClinicalDocument/setId должен иметь атрибут @root.</assert>
            <assert test="@extension">У1-17. Элемент ClinicalDocument/setId должен иметь атрибут @extension.</assert>
<!--        <assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-17. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert> -->
        </rule>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">У1-17. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У1-18 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">У1-18. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=3">У1-18. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 3 элемента id.</assert>
            <assert test="count(addr)=[1,2]">У1-18. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 или 2 элемента addr.</assert>
            <assert test="count(patient)=1">У1-18. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
            <assert test="count(telecom)>=1">У1-18. Элемент ClinicalDocument/recordTarget/patientRole должен иметь не менее 1 элемента telecom.</assert>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
            <assert test="@root">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь атрибут @root.</assert>
            <assert test="@extension">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь атрибут @extension.</assert>
<!--        <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов пациенов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10".</assert> -->
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-20 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension">У1-20. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-21 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[3][not(@nullFlavor)]">
            <assert test="@root">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[3] должен иметь атрибут @root.</assert>
            <assert test="@extension!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[3] должен иметь не пустое значение атрибута @extension.</assert>
            <assert test="@assigningAuthorityName!=''">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[3] должен иметь не пустое значение атрибута @assigningAuthorityName.</assert>
<!--        <assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-21. Элемент ClinicalDocument/recordTarget/patientRole/id[3] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert> -->
        </rule>
    </pattern>
    <!-- У1-22 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[1]">
            <assert test="@use='H'">У1-22. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь значение атрибута @use равное 'H'.</assert>
        </rule>
    </pattern>
    <!-- У1-23 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[2]">
            <assert test="@use='HP'">У1-23. Элемент ClinicalDocument/recordTarget/patientRole/addr[2] должен иметь значение атрибута @use равное 'HP'.</assert>
        </rule>
    </pattern>
    <!-- У1-24 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(birthTime)=1">У1-24. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
            <assert test="count(name)=1">У1-24. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-24. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
        </rule>
    </pattern>
    <!-- У1-25 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-25. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">У1-25. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-25. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-25. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-25. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-26 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-26. Дата в элементе ClinicalDocument/recordTarget/patientRole/patient/birthTime должна быть указана с точностью до года, можно указывать с точностью до дня.</assert>
            <report test="@nullFlavor">У1-26. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-27 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(providerOrganization)=1">У1-27. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=1">У1-27. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-27. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-27. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент addr.</assert>
            <assert test="count(telecom)>=1">У1-27. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь не менее 1 элемента telecom.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-27. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-28 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$')">У1-28. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь синтаксически корректное значение атрибута @root, заполненное значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@nullFlavor]">
<!--            <assert test="@nullFlavor='OTH'">У1-28. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert> -->
        </rule>
    </pattern>
    <!-- У1-29 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">У1-29. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-29. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У1-29. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor.</assert>
            <assert test="count(functionCode)&lt;=1">У1-29. Элемент ClinicalDocument/author должен иметь не более 1 элемента functionCode.</assert>
        </rule>
    </pattern>
    <!-- У1-30 -->
    <pattern>
        <rule context="//functionCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1066','1.2.643.5.1.13.2.1.1.181','1.2.643.5.1.13.2.1.1.716']">У1-30. Элемент //functionCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1066', '1.2.643.5.1.13.2.1.1.181' или '1.2.643.5.1.13.2.1.1.716'.</assert>
            <assert test="@code!=''">У1-30. Элемент //functionCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-30. Элемент //functionCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-30. Элемент //functionCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-31 -->
    <pattern>
        <rule context="//assignedAuthor">
            <assert test="count(id)=[1,2]">У1-31. Элемент //assignedAuthor должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У1-31. Элемент //assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У1-31. Элемент //assignedAuthor должне иметь 1 элемент assignedPerson.</assert>
            <assert test="count(addr)&lt;=1">У1-31. Элемент //assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-31. Элемент //assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
    </pattern>
    <!-- У1-32 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1]">
            <assert test="@extension">У1-32. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь атрибут @extension</assert>
<!--        <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-32. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert> -->
            <report test="@nullFlavor">У1-32. Элемент ClinicalDocument/author/assignedAuthor/id[1] не должен иметь атрибут @nullFlavor</report>
        </rule>
    </pattern>
    <!-- У1-33 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@extension">У1-33. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-33. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @extension равное '1.2.643.100.3'.</assert>
        </rule>
    </pattern>
    <!-- У1-34 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(code)=1">У1-34. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-34. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-34. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-34. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-34. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-34. Элемент ClinicalDocument/author/assignedAuthor/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-35 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(assignedPerson)=1">У1-35. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">У1-35. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-36 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="count(id)=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
            <assert test="count(telecom)>=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
        </rule>
    </pattern>
    <!-- У1-37 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-37. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-37. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <!-- У1-38 -->
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <assert test="count(representedCustodianOrganization)=1">У1-38. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">У1-38. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-38. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)=1">У1-38. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент telecom.</assert>
            <assert test="count(addr)=1">У1-38. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <report test="@nullFlavor">У1-38. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-39 -->
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
<!--        <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-39. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert> -->
<!--        <assert test="@extension">У1-39. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь атрибут @extension.</assert> -->
            <report test="@nullFlavor">У1-39. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-40-->
    <pattern>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient">
            <assert test="count(receivedOrganization)=1">У1-40. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">У1-40. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-40. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id">
            <report test="@nullFlavor">У1-40. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name">
            <report test="@nullFlavor">У1-40. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-41 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-41. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-41. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-41. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-41. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=[1,2]">У1-41. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У1-41. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У1-41. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedEntity.</assert>
            <assert test="count(addr)&lt;=1">У1-41 Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-41. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/time">
            <report test="@nullFlavor">У1-41. Элемент ClinicalDocument/legalAuthenticator/time не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/signatureCode">
            <report test="@nullFlavor">У1-41. Элемент ClinicalDocument/legalAuthenticator/signatureCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id">
            <report test="@nullFlavor">У1-41. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <report test="@nullFlavor">У1-41. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-42 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@code='S'">У1-42. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @code равное 'S'.</assert>
        </rule>
    </pattern>
    <!-- У1-43 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
            <assert test="@extension">У1-43. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь атрибут @extension</assert>
<!--        <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-43. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert> -->
            <report test="@nullFlavor">У1-43. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-44 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
            <assert test="@extension">У1-44. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-44. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
        </rule>
    </pattern>
    <!-- У1-45 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(code)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-46 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-46. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-46. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-46. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
            <assert test="count(telecom)>=1">У1-46. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
        </rule>
    </pattern>
    <!-- У1-47 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-47. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-47. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <!-- У1-48 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD'])=1">У1-48. Элемент ClinicalDocument должен иметь 1 элемент participant[@typeCode='HLD']/associatedEntity[@classCode=”POLHOLD”].</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']">
            <assert test="count(id)=1">У1-48. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD'] должен иметь 1 элемент id.</assert>
            <assert test="count(code)=1">У1-48. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD'] должен иметь 1 элемент code.</assert>
            <assert test="count(scopingOrganization)=1">У1-48. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD'] должен иметь 1 элемент scopingOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/id">
            <report test="@nullFlavor">У1-48. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/code">
            <report test="@nullFlavor">У1-48. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization">
            <report test="@nullFlavor">У1-48. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-49 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/id">
<!--        <assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-49. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert> -->
            <assert test="@extension">У1-49. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-50 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/code">
            <assert test="@code='SELF'">У1-50. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/code должен иметь значение атрибута @code равное 'SELF'.</assert>
            <assert test="@codeSystem='2.16.840.1.113883.5.111'">У1-50. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/code должен иметь значение атрибута @codeSystem равное '2.16.840.1.113883.5.111'.</assert>
        </rule>
    </pattern>
    <!-- У1-51 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization">
            <assert test="count(id)=1">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization должен иметь не более 1 элемента addr.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization/id">
            <report test="@nullFlavor">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization/name">
            <report test="@nullFlavor">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-52 -->
    <pattern>
        <rule context="ClinicalDocument/componentOf">
            <assert test="count(encompassingEncounter)=1">У1-52. Элемент ClinicalDocument/componentOf должен иметь 1 элемент encompassingEncounter.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <assert test="count(id)=2">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 2 элемента id.</assert>
            <assert test="count(effectiveTime)=1">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(dischargeDispositionCode)=1">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент dischargeDispositionCode.</assert>
            <assert test="count(location/healthCareFacility)=1">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент location/healthCareFacility.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id">
<!--        <assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert> -->
            <assert test="@extension">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/id должен иметь атрибут @extension.</assert>
            <report test="@nullFlavor">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <assert test="count(low)=1">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь 1 элемент high.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low">
            <report test="@nullFlavor">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high">
            <report test="@nullFlavor">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/dischargeDispositionCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1373','1.2.643.5.1.13.2.1.1.1504.2','1.2.643.5.1.13.13.99.2.307']">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/dischargeDispositionCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1373', '1.2.643.5.1.13.2.1.1.1504.2' или '1.2.643.5.1.13.13.99.2.307'.</assert>
            <assert test="@code!=''">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/dischargeDispositionCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/dischargeDispositionCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/dischargeDispositionCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility">
            <report test="@nullFlavor">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У1-52. Элемент ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/id[not(@nullFlavor)]">
<!--        <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-52. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert> -->
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/id[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У1-52. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>   
    <!-- У1-53 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-49. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
        </rule>
    </pattern>
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='HOSP'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'HOSP'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SOCANAM'])&lt;=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'SOCANAM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='STATEADM'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'STATEADM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='STATEDIS'])=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'STATEDIS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SCORES'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'SCORES'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='ALL'])&lt;=1">У2-6. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'ALL'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='VITALPARAM'])&lt;=1">У2-7. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'VITALPARAM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='PROC'])=1">У2-8. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'PROC'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <report test="text">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section не должен иметь элемент text.</report>
        </rule>
    </pattern>
    <!-- У2-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']">
            <assert test="count(component/section/code[@code='RESINSTR'])=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC'] должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RESINSTR'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']">
            <assert test="count(component/section/code[@code='RESLAB'])=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC'] должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RESLAB'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']">
            <assert test="count(component/section/code[@code='RESMOR'])=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC'] должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RESMOR'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']">
            <assert test="count(component/section/code[@code='RESCONS'])=1">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC'] должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RESCONS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='IMM'])&lt;=1">У2-13. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'IMM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-13. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-13. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-13. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SUM'])=1">У2-14. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'SUM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-14. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-14. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <report test="text">У2-14. Элемент ClinicalDocument/component/structuredBody/component/section не должен иметь элемент text.</report>
        </rule>
    </pattern>
    <!-- У2-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DRUG'])&lt;=1">У2-15. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'DRUG'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DRUG']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-15. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-15. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-15. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='NONDRUG'])&lt;=1">У2-16. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'NONDRUG'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NONDRUG']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-16. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-16. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-16. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-17 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SUR'])=1">У2-17. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'SUR'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-17. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-17. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-17. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-18 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='PROCEDURE'])&lt;=1">У2-18. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'PROCEDURE'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-18. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-18. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-18. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-19 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='REGIME'])=1">У2-19. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'REGIME'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-19. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-19. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <report test="text">У2-19. Элемент ClinicalDocument/component/structuredBody/component/section не должен иметь элемент text.</report>
        </rule>
    </pattern>
    <!-- У2-20 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']">
            <assert test="count(component/section/code[@code='RECDIET'])=1">У2-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME'] должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RECDIET'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECDIET']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-21 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']">
            <assert test="count(component/section/code[@code='RECTREAT'])=1">У2-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME'] должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RECTREAT'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECTREAT']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-22 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']">
            <assert test="count(component/section/code[@code='RECWORK'])=1">У2-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME'] должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RECWORK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section[code/@code='RECWORK']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='REGIME']/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-23 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='RECOTHER'])&lt;=1">У2-23. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'RECOTHER'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RECOTHER']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-23. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-23. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-23. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-24 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='SERVICES'])&lt;=1">У2-24. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'SERVICES'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']">
            <assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-24. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="count(title)=1">У2-24. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-24. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']">
            <assert test="count(entry/encounter)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP'] должен иметь 1 элемент entry/encounter.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter">
            <assert test="@classCode='ENC'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter должен иметь значение атрибута @classCode равное 'ENC'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=2">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter должен иметь 2 элемента id.</assert>
            <report test="matches(id[1]/@root, id[2]/@root)">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter должен иметь различающиеся значения атрибута @root у элементов id[1] и id[2].</report>
            <assert test="count(effectiveTime)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter должен иметь 1 элемент entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/id[1]">
<!--        <assert test="matches(@root, ['^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.15$','^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.16$')">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/id должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15" или "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16".</assert> -->
            <assert test="@extension!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/id[2]">
<!--        <assert test="matches(@root, ['^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.15$','^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.16$')">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/id должен иметь синтаксически корректное значение атрибута @root, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15" или "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16".</assert> -->
            <assert test="@extension!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/effectiveTime">
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/effectiveTime не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(low)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/effectiveTime должен иметь 1 элемент high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/effectiveTime/low">
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/effectiveTime/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/effectiveTime/high">
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/effectiveTime/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship">
            <assert test="@typeCode='SUBJ'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship должен иметь значение атрибута @typeCode равное 'SUBJ'.</assert>
            <assert test="@inversionInd='true'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1375','1.2.643.5.1.13.2.1.1.1504.3','1.2.643.5.1.13.13.99.2.256']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1375', '1.2.643.5.1.13.2.1.1.1504.3' или '1.2.643.5.1.13.13.99.2.256'.</assert>
            <assert test="@code!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/encounter/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']">
            <assert test="count(entry/observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP'] должен иметь 1 элемент entry/observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1046','1.2.643.5.1.13.2.1.1.688']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation/code должен иметь значение атрибута @code равное '1.2.643.5.1.13.13.11.1046' или '1.2.643.5.1.13.2.1.1.688'.</assert>
            <assert test="@code!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']">
            <assert test="count(entry/act)=[1,2]">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP'] должен иметь 1 или 2 элемента entry/act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act">
            <assert test="@classCode='ACT'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship)>=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act должен иметь не менее 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code[@code='1']])>=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act должен иметь не менее 1 элемента entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1076'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1076'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship[observation/code[@code!='1']]">
            <assert test="@typeCode='COMP'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation[code[@code!='1']]">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(entryRelationship)&lt;=4">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation должен иметь не более 4 элементов entryRelationship.</assert>
            <assert test="count(entryRelationship[@typeCode='CAUS'])&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation должен иметь не более 1 элемента entryRelationship[@typeCode='CAUS'].</assert>
            <assert test="count(entryRelationship[@typeCode='REFR'])&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation должен иметь не более 1 элемента entryRelationship[@typeCode='REFR'].</assert>
            <assert test="count(entryRelationship[@typeCode='SUBJ'])&lt;=2">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation должен иметь не более 2 элементов entryRelationship[@typeCode='SUBJ'].</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/code[@code!='1']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1077','1.2.643.5.1.13.2.1.1.1504.4']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1077' или '1.2.643.5.1.13.2.1.1.1504.4'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/value">
            <assert test="@xsi:type='CD'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']">
            <assert test="@inversionInd='true'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS'] должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(act)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS'] должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act">
            <assert test="@classCode='ACT'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='CAUS']/act/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']">
            <assert test="@inversionInd='false'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR'] должен иметь значение атрибута @inversionInd равное 'false'.</assert>
            <assert test="count(act)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR'] должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act">
            <assert test="@classCode='ACT'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1036','1.2.643.5.1.13.2.1.1.105']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1036' или '1.2.643.5.1.13.2.1.1.105'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='REFR']/act/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']">
            <assert test="@inversionInd='true'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ'] должен иметь значение атрибута @inversionInd равное 'true'.</assert>
            <assert test="count(act)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ'] должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act">
            <assert test="@classCode='ACT'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act должен иметь 1 элемент code.</assert>
            <assert test="count(entryRelationship)&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act должен иметь не более 1 элемента entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1049','1.2.643.5.1.13.2.1.1.586','1.2.643.5.1.13.13.11.1047','1.2.643.5.1.13.2.1.1.531']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship['SUBJ']/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1049', '1.2.643.5.1.13.2.1.1.586' или '1.2.643.5.1.13.13.11.1047', '1.2.643.5.1.13.2.1.1.531'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act[code/@codeSystem=['1.2.643.5.1.13.13.11.1047','1.2.643.5.1.13.2.1.1.531']]/entryRelationship">
            <assert test="@typeCode='RSON'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code/entryRelationship должен иметь значение атрибута @typeCode равное 'RSON'.</assert>
            <assert test="@inversionInd='false'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code/entryRelationship должен иметь значение атрибута @inversionInd равное 'false'.</assert>
            <assert test="count(act)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code/entryRelationship должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act[code/@codeSystem=['1.2.643.5.1.13.13.11.1047','1.2.643.5.1.13.2.1.1.531']]/entryRelationship/act">
            <assert test="@classCode='ACT'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code/entryRelationship/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code/entryRelationship/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code/entryRelationship/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/code/entryRelationship/act должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act[code/@codeSystem=['1.2.643.5.1.13.13.11.1047','1.2.643.5.1.13.2.1.1.531']]/entryRelationship/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1045','1.2.643.5.1.13.2.1.1.120']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/entryRelationship/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1045' или '1.2.643.5.1.13.2.1.1.120'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/entryRelationship/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/entryRelationship/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/entryRelationship/act/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/entryRelationship[@typecode='SUBJ']/act/entryRelationship/act/code должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship[observation/code[@code='1']]">
            <assert test="@typeCode='COMP'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship[observation/code[@code='1']] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)>=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship[observation/code[@code='1']] должен иметь не менее 1 элемента observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation[code[@code='1']]">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation[code[@code='1']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation[code[@code='1']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation[code[@code='1']] должен иметь значение 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/code[@code='1']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1077','1.2.643.5.1.13.2.1.1.531']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/code[@code='1'] должен иметь значение атрибута @classCode равное '1.2.643.5.1.13.13.11.1077' или '1.2.643.5.1.13.2.1.1.531'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='HOSP']/entry/act/entryRelationship/observation/code[@code='1'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1050','1.2.643.5.1.13.2.1.1.1504.32','1.2.643.5.1.13.13.99.2.43']]">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1050','1.2.643.5.1.13.2.1.1.1504.32','1.2.643.5.1.13.13.99.2.43']]">
            <assert test="@code!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1050','1.2.643.5.1.13.2.1.1.1504.32','1.2.643.5.1.13.13.99.2.43']]/originalText/reference">
            <assert test="@value!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1050','1.2.643.5.1.13.2.1.1.1504.32','1.2.643.5.1.13.13.99.2.43']]/effectiveTime">
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(low)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime должен иметь 1 элемент high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1050','1.2.643.5.1.13.2.1.1.1504.32','1.2.643.5.1.13.13.99.2.43']]/effectiveTime/low[not(@nullFlavor)]">
            <assert test="@value!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1050','1.2.643.5.1.13.2.1.1.1504.32','1.2.643.5.1.13.13.99.2.43']]/effectiveTime/high[not(@nullFlavor)]">
            <assert test="@value!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']]">
            <assert test="@code!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']]/originalText/reference">
            <assert test="@value!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']]/effectiveTime">
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(low)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime должен иметь 1 элемент low.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']]/effectiveTime/low[not(@nullFlavor)]">
            <assert test="@value!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1059','1.2.643.5.1.13.2.1.1.713']]">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1059','1.2.643.5.1.13.2.1.1.713']]">
            <assert test="@code!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1059','1.2.643.5.1.13.2.1.1.713']]/originalText/reference">
            <assert test="@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1060','1.2.643.5.1.13.2.1.1.714']]">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1060','1.2.643.5.1.13.2.1.1.714']]">
            <assert test="@code!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1060','1.2.643.5.1.13.2.1.1.714']]/originalText/reference">
            <assert test="@value!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']]">
            <assert test="@code!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem='1.2.643.5.1.13.13.11.1038']">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem='1.2.643.5.1.13.13.11.1038']">
            <assert test="@code!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem='1.2.643.5.1.13.13.11.1038']/originalText/reference">
            <assert test="@value!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1058','1.2.643.5.1.13.2.1.1.701']]">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1058','1.2.643.5.1.13.2.1.1.701']]">
            <assert test="@code!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1058','1.2.643.5.1.13.2.1.1.701']]/originalText/reference">
            <assert test="@value!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SOCANAM']/entry/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1380', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.99.2.166'.</assert>
            <assert test="@code='804'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/code должен иметь значение атрибута @code равное '804'.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1006' или '1.2.643.5.1.13.2.1.1.111'.</assert>
            <assert test="@xsi:type='CD'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEADM']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1380', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.99.2.166'.</assert>
            <assert test="@code='804'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/code должен иметь значение атрибута @code равное '804'.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1006' или '1.2.643.5.1.13.2.1.1.111'.</assert>
            <assert test="@xsi:type='CD'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STATEDIS']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-13 -->   
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(participant)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation должен иметь 1 элемент participant.</assert>
            <assert test="count(entryRelationship)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation должен иметь 1 элемент entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1064','1.2.643.5.1.13.2.1.1.709']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1064' или '1.2.643.5.1.13.2.1.1.709'.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/text">
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/text не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/effectiveTime">
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant">
            <assert test="@typeCode='IND'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant должен иметь значение атрибута @typeCode равное 'IND'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(participantRole[@classCode=['MANU','SPEC']])=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant должен иметь 1 элемент participantRole.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='MANU']">
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(playingEntity)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole должен иметь 1 элемент playingEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='MANU']/playingEntity">
            <assert test="@classCode='MMAT'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole должен иметь значение атрибута @classCode равное 'MMAT'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='MANU']/playingEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1367','1.2.643.5.1.13.2.1.1.644']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1367' или '1.2.643.5.1.13.2.1.1.644'.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='MANU']/playingEntity/code/originalText/reference">
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='SPEC']">
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(playingEntity)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole должен иметь 1 элемент playingEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='SPEC']/playingEntity">
            <assert test="@classCode='MAT'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole должен иметь значение атрибута @classCode равное 'MMAT'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole должен иметь 1 элемент code.</assert>
            <assert test="count(desc)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole должен иметь 1 элемент desc.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='SPEC']/playingEntity/code">
            <assert test="@nullFlavor='NA'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
            <assert test="count(originalText/reference)&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='SPEC']/playingEntity/code/originalText/reference">
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole[@classCode='SPEC']/playingEntity/desc">
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/participant/participantRole/desc не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship">
            <assert test="@typeCode='MFST'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'MFST'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(observation)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/observation">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1063','1.2.643.5.1.13.2.1.1.705']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1063' или '1.2.643.5.1.13.2.1.1.705'.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/observation/code/originalText/reference">
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ALL']/entry/observation/entryRelationship/code должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer">
            <assert test="@classCode='CLUSTER'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(statusCode)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(component)=[1,2]">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 или 2 элемента component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode">
            <assert test="@code='completed'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime">
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component">
            <assert test="@typeCode='COMP'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1010','1.2.643.5.1.13.13.99.2.262']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1010' или '1.2.643.5.1.13.13.99.2.262'.</assert>
            <assert test="@code!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code/originalText/reference">
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value">
            <assert test="@xsi:type='PQ'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь не пустое значение атрибута @unit.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation">
            <assert test="@classCode='OBS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(priorityCode)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент priorityCode.</assert>
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(performer/assignedEntity)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь 1 элемент performer/assignedEntity.</assert>
            <assert test="count(entryRelationship)>=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь не менее 1 элемента entryRelationship.</assert>
            <assert test="count(reference)&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation должен иметь не более 1 элемента reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1378','1.2.643.5.1.13.13.99.2.259','1.2.643.5.1.13.2.1.1.1504.11']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1378', '1.2.643.5.1.13.13.99.2.259' или '1.2.643.5.1.13.2.1.1.1504.11'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINSTR']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/statusCode">
            <assert test="@code='completed'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/effectiveTime">
            <assert test="@value!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/priorityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1377','1.2.643.5.1.13.2.1.1.1504.6','1.2.643.5.1.13.13.99.2.258']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/priorityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1377', '1.2.643.5.1.13.2.1.1.1504.6' или '1.2.643.5.1.13.13.99.2.258'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/priorityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/priorityCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/priorityCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity">
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=[1,2]">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson/name)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity должен иметь 1 элемент assignedPerson/name.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/id[1]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization/id">
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntityrepresentedOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="streetAddressLine!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntityrepresentedOrganization/addr должен иметь не пустое значение элемента streetAddressLine.</assert>
            <assert test="state!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/performer/assignedEntityrepresentedOrganization/addr должен иметь не пустое значение элемента state.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship">
            <assert test="@typeCode='REFR'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="@inversionInd='false'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship должен иметь значение атрибута @inversionInd равное 'false'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(act)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act">
            <assert test="@classCode='ACT'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act/effectiveTime">
            <assert test="@value!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/entryRelationship/act/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/reference">
            <assert test="@typeCode='REFR'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument/id)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/reference должен иметь 1 элемент externalDocument/id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument/id">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.51$')">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument/id должен иметь значение не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESINSTR']/entry/observation/reference/externalDocument/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer">
            <assert test="@classCode='CLUSTER'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(statusCode)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(reference)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer должен иметь не более 1 элемента reference.</assert>
            <assert test="count(component/organizer)>=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer должен иметь не менее 1 элемента component/organizer.</assert>
            <assert test="count(component/act)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer должен иметь не более 1 элемента component/act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/statusCode">
            <assert test="@code='completed'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/reference">
            <assert test="@typeCode='REFR'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument/id)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/reference должен иметь 1 элемент externalDocument/id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/reference/externalDocument/id">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.51$')">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/reference/externalDocument/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer">
            <assert test="@classCode='BATTERY'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь значение атрибута @classCode равное 'BATTERY'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(component/observation)>=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь не менее 1 элемента component/observation.</assert>
            <assert test="count(component/act)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer должен иметь не более 1 элемента component/act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/code">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/code должен иметь 1 элемент originalText.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/code/originalText">
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/code/originalText должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/statusCode">
            <assert test="@code='completed'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент value.</assert>
            <assert test="count(interpretationCode)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент interpretationCode.</assert>
            <assert test="count(specimen/specimenRole)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь 1 элемент specimen/specimenRole.</assert>
            <assert test="count(performer/assignedEntity)>=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь не менее 1 элемента performer/assignedEntity.</assert>
            <assert test="count(participant)>=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь не менее 1 элемента participant.</assert>
            <assert test="count(referenceRange/observationRange)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation должен иметь не более 1 элемента referenceRange/observationRange.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1080'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1080'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/statusCode">
            <assert test="@code='completed'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/effectiveTime">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value">
            <assert test="@xsi:type=['PQ','ST','CD']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'PQ', 'ST' или 'CD'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value[not(@nullFlavor)][@xsi:type='PQ']">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value должен иметь не пустое значение атрибута @unit.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value[not(@nullFlavor)][@xsi:type='ST']">
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value[not(@nullFlavor)][@xsi:type='CD']">
<!--    <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value должен иметь 1 элемент code.</assert> -->
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value[not(@nullFlavor)][@xsi:type='CD']/code">
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/value/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/interpretationCode[not(@nullFlavor)]">
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/interpretationCode должен иметь не пустое значение атрибута @code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole">
            <assert test="count(id)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole должен иметь 1 элемент id.</assert>
            <assert test="count(specimenPlayingEntity)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole должен иметь 1 элемент specimenPlayingEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/id">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.66$')">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/id должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.66".</assert>
            <assert test="@extension!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity">
            <assert test="@classCode='ENT'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity должен иметь значение атрибута @classCode равное 'ENT'.</assert>
            <assert test="@determinerCode='INSTANCE'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity должен иметь значение атрибута @determinerCode равное 'INSTANCE'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity должен иметь 1 элемент code.</assert>
            <assert test="count(quantity)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity должен иметь 1 элемент quantity.</assert>
            <assert test="count(desc)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity должен иметь 1 элемент desc.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1081'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1081'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/quantity">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/quantity должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/quantity должен иметь не пустое значение атрибута @unit.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/desc">
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/specimen/specimenRole/specimenPlayingEntity/desc должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=[1,2]">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson/name)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity должен иметь не более 1 элемента code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/id[1]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/id">
            <assert test="@root!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/id должен иметь не пустое значение атрибута @root.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="streetAddressLine!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/addr должен иметь не пустое значение элемента streetAddressLine.</assert>
            <assert test="state!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/performer/assignedEntity/representedOrganization/addr должен иметь не пустое значение элемента state.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant">
            <assert test="@typeCode=['DEV','CSM']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant должен иметь значение атрибута @typeCode равное 'DEV' или 'CSM'.</assert>
            <assert test="count(participantRole)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant должен иметь 1 элемент participantRole.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole">
            <assert test="@classCode='ROL'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole должен иметь значение атрибута @classCode равное 'ROL'.</assert>
            <assert test="count(id)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole должен иметь 1 элемент id.</assert>
            <assert test="count(playingDevice/manufacturerModelName)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole должен иметь 1 элемент playingDevice/manufacturerModelName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole/id">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.67$')">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole/id должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.67".</assert>
            <assert test="@extension!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole/playingDevice/manufacturerModelName">
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/participantRole/playingDevice/manufacturerModelName должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(text)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant должен иметь 1 элемент text.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant должен иметь 1 элемент value.</assert>
            <assert test="count(interpretationCode)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant должен иметь 1 элемент interpretationCode.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/text">
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value">
            <assert test="@xsi:type='IVL_PQ'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value должен иметь значение атрибута @xsi:type равное 'IVL_PQ'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(low)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/value должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/participant/value должен иметь 1 элемент high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low должен иметь не пустое значение атрибута @unit.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high должен иметь не пустое значение атрибута @unit.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/observation/referenceRange/observationRange/value/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act">
            <assert test="@classCode='ACT'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act должен иметь 1 элемент text.</assert>
            <assert test="count(author)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1380', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.99.2.166'.</assert>
            <assert test="@code='900'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/code должен иметь значение атрибута @code равное '900'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/text">
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(time)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author должен иметь 1 элемент assignedAuthor.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/time">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/time должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor">
            <assert test="count(id)=[1,2]">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson/name)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor должен иметь 1 элемент assignedPerson/name.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/id[1]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/assignedPerson/name">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/id">
            <assert test="@root!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/id должен иметь не пустое значение атрибута @root.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/name">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="streetAddressLine!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/addr должен иметь не пустое значение элемента streetAddressLine.</assert>
            <assert test="state!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/organizer/component/act/author/assignedAuthor/representedOrganization/addr должен иметь не пустое значение элемента state.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act">
            <assert test="@classCode='ACT'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act должен иметь 1 элемент text.</assert>
            <assert test="count(author)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1380', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.99.2.166'.</assert>
            <assert test="@code='901'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/code должен иметь значение атрибута @code равное '901'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/text">
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(time)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author должен иметь 1 элемент assignedAuthor.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/time">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/time должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor">
            <assert test="count(id)=[1,2]">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson/name)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor должен иметь 1 элемент assignedPerson/name.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/id[1]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/assignedPerson/name">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/id">
            <assert test="@root!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/id должен иметь не пустое значение атрибута @root.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/name">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="streetAddressLine!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/addr должен иметь не пустое значение элемента streetAddressLine.</assert>
            <assert test="state!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESLAB']/entry/organizer/component/act/author/assignedAuthor/representedOrganization/addr должен иметь не пустое значение элемента state.</assert>
        </rule>        
    </pattern>
    <!-- У3-17 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation">
            <assert test="@classCode='OBS'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(priorityCode)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь 1 элемент priorityCode.</assert>
            <assert test="count(value)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(performer/assignedEntity)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь 1 элемент performer/assignedEntity.</assert>
            <assert test="count(entryRelationship)>=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь не менее 1 элемента entryRelationship.</assert>
            <assert test="count(reference)&lt;=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation должен иметь не более 1 элемента reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/code">
            <assert test="@nullFlavor='NA'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/code должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/statusCode">
            <assert test="@code='completed'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/effectiveTime">
            <assert test="@value!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/priorityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1377','1.2.643.5.1.13.2.1.1.1504.6','1.2.643.5.1.13.13.99.2.258']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/priorityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1377', '1.2.643.5.1.13.2.1.1.1504.6' или '1.2.643.5.1.13.13.99.2.258'.</assert>
            <assert test="@code!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/priorityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/priorityCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/priorityCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/value">
            <assert test="@xsi:type='ST'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
            <assert test=".!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity">
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)>=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity должен иметь не менее 1 элемента id.</assert>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson/name)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity должен иметь 1 элемент assignedPerson/name.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[1]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/id">
            <assert test="@root!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/id должен иметь не пустое значение атрибута @root.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="streetAddressLine!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/addr должен иметь не пустое значение элемента streetAddressLine.</assert>
            <assert test="state!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/representedOrganization/addr должен иметь не пустое значение элемента state.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship">
            <assert test="@typeCode='REFR'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="@inversionInd='false'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship должен иметь значение атрибута @inversionInd равное 'false'.</assert>
            <assert test="count(act)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act">
            <assert test="@classCode='ACT'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <assert test="@code!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act/code должен иметь не пустое значение атрибута @code.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act/effectiveTime">
            <assert test="@value!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/entryRelationship/act/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/reference">
            <assert test="@typeCode='REFR'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument/id)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/reference должен иметь 1 элемент externalDocument/id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/reference/externalDocument/id">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.51$')">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESMOR']/entry/observation/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <!-- У3-18 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(statusCode)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(priorityCode)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент priorityCode.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(performer/assignedEntity)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент performer/assignedEntity.</assert>
            <assert test="count(entryRelationship)>=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь не менее 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[act/code/@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']])>=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь не менее 1 элемента entryRelationship[act/code/@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']].</assert>
            <assert test="count(entryRelationship[observation/code/@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']])=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент entryRelationship[observation/code/@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']].</assert>
            <assert test="count(entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='805']])=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='805']].</assert>
            <assert test="count(entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='806']])=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='806']].</assert>
            <assert test="count(entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='807']])&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='807']].</assert>
            <assert test="count(entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='809']])=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь 1 элемент entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='809']].</assert>
            <assert test="count(entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='810']])&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='810']].</assert>
            <assert test="count(reference)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCO1NS']/entry/observation должен иметь не более 1 элемента reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1066','1.2.643.5.1.13.2.1.1.181','1.2.643.5.1.13.2.1.1.716']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1066', '1.2.643.5.1.13.2.1.1.181' или '1.2.643.5.1.13.2.1.1.716'.</assert>
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/statusCode">
            <assert test="@code='completed'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/effectiveTime">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/priorityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1377','1.2.643.5.1.13.2.1.1.1504.6','1.2.643.5.1.13.13.99.2.258']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/priorityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1377', '1.2.643.5.1.13.2.1.1.1504.6' или '1.2.643.5.1.13.13.99.2.258'.</assert>
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/priorityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/priorityCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/priorityCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/value">
            <assert test="@xsi:type='ST'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
            <assert test=".!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/value должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)>=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity должен иметь не менее 1 элемента id.</assert>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson/name)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity должен иметь 1 элемент assignedPerson/name.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/id">
            <assert test="@root!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/id должен иметь не пустое значение атрибута @root.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="streetAddressLine!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/addr должен иметь не пустое значение элемента streetAddressLine.</assert>
            <assert test="state!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/representedOrganization/addr должен иметь не пустое значение элемента state.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship[act/code/@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']]">
            <assert test="@typeCode='REFR'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="@inversionInd='false'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @inversionInd равное 'false'.</assert>
            <assert test="count(act)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act[code/@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']]">
            <assert test="@classCode='ACT'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act/code[@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']]">
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act[code/@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']]/effectiveTime">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/act/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship[observation/code/@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']]">
            <assert test="@typeCode='COMP'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code/@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']]">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']]">
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']]/originalText/reference">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='805']]">
            <assert test="@typeCode='COMP'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='805']]">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text/reference)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь не более 1 элемента text/reference.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='805']">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='805']]/text/reference">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='805']]/value">
            <assert test="@xsi:type='ST'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='806']]">
            <assert test="@typeCode='COMP'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='806']]">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text/reference)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь не более 1 элемента text/reference.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='806']">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='806']]/text/reference">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='806']]/value">
            <assert test="@xsi:type='ST'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='807']]">
            <assert test="@typeCode='COMP'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='807']]">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text/reference)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь не более 1 элемента text/reference.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='807']">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='807']]/text/reference">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='807']]/value">
            <assert test="@xsi:type='ST'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='808']]">
            <assert test="@typeCode='COMP'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='808']]">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='808']">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='808']]/value">
            <assert test="@xsi:type='CD'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='808']]/value/text/reference">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='809']]">
            <assert test="@typeCode='COMP'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='809']]">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='809']">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='809']]/value">
            <assert test="@xsi:type='CD'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='809']]/value/text/reference">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship[observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='810']]">
            <assert test="@typeCode='COMP'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='810']]">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='810']">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='810']]/value">
            <assert test="@xsi:type='CD'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1009'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1009'.</assert>
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation[code[@codeSystem=['1.2.643.5.1.13.13.11.1380','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.99.2.166']][@code='810']]/value/text/reference">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/entryRelationship/observation/value/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/reference">
            <assert test="@typeCode='REFR'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument/id)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/reference должен иметь 1 элемент externalDocument/id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/reference/externalDocument/id">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.51$')">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/reference/externalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROC']/component/section[code/@code='RESCONS']/entry/observation/reference/externalDocument/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-19 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration">
            <assert test="@classCode='SBADM'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='EVN'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(text)&lt;=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(consumable)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration должен иметь 1 элемент consumable.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/text">
            <assert test=".!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/text должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/text не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/effectiveTime">
            <assert test="@value!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable">
            <assert test="@typeCode='CSM'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable должен иметь значение атрибута @typeCode равное 'CSM'.</assert>
            <assert test="count(manufacturedProduct)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct">
<!--        <assert test="@typeCode='MANU'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута @typeCode равное 'MANU'.</assert> -->
            <assert test="count(manufacturedMaterial)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedMaterial.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
            <assert test="@classCode='MMAT'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @classCode равное 'MMAT'.</assert>
            <assert test="@determinerCode='KIND'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @determinerCode равное 'KIND'.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1078'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1078'.</assert>
            <assert test="@code!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/originalText/reference">
            <assert test="@value!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='IMM']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <!-- У3-20 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration">
            <assert test="@classCode='SBADM'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='EVN'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(consumable)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration должен иметь 1 элемент consumable.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration/consumable">
            <assert test="count(manufacturedProduct)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration/consumable/manufacturedProduct">
            <assert test="count(manufacturedLabeledDrug)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration должен иметь 1 элемент manufacturedLabeledDrug.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug">
            <assert test="count(code)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1367','1.2.643.5.1.13.2.1.1.644']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1367' или '1.2.643.5.1.13.2.1.1.644'.</assert>
            <assert test="@code!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUM']/component/section[code/@code='DRUG']/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-21 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure">
            <assert test="@classCode='PROC'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь значение атрибута @classCode равное 'PROC'.</assert>
            <assert test="@moodCode='EVN'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь 1 элемент text.</assert>
            <assert test="count(statusCode)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)&lt;=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь не более 1 элемента effectiveTime.</assert>
<!--        <assert test="count(performer/assignedEntity)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь 1 элемент performer/assignedEntity.</assert> -->
            <assert test="count(entryRelationship)&lt;=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(reference)&lt;=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure должен иметь не более 1 элемента reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <assert test="@code!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/entry/procedure/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/text">
            <assert test=".!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/entry/procedure/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/statusCode">
            <assert test="@code='completed'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/effectiveTime">
            <assert test="@value!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=[1,2]">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson/name)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity должен иметь 1 элемент assignedPerson/name.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/id[1]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization/id">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntityrepresentedOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="streetAddressLine!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntityrepresentedOrganization/addr должен иметь не пустое значение элемента streetAddressLine.</assert>
            <assert test="state!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/performer/assignedEntityrepresentedOrganization/addr должен иметь не пустое значение элемента state.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant">
            <assert test="@typeCode='DEV'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant должен иметь значение атрибута @typeCode равное 'DEV'.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(participantRole)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant должен иметь 1 элемент participantRole.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(playingDevice)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole должен иметь 1 элемент playingDevice.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole[@classCode='MNT']/playingDevice/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1048'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1048'.</assert>
            <assert test="@code!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole[@classCode='MANU']/playingDevice/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1079'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1079'.</assert>
            <assert test="@code!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/participant/participantRole/playingDevice/code не должен иметь атрибут @nullFlavor.</report>
        </rule>

        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship">
            <assert test="@typeCode='COMP'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(substanceAdministration)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship должен иметь 1 элемент substanceAdministration.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration">
            <assert test="@classCode='SBADM'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='EVN'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(consumable)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration должен иметь 1 элемент consumable.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable">
            <assert test="@typeCode='CSM'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable должен иметь значение атрибута @typeCode равное 'CSM'.</assert>
            <assert test="count(manufacturedProduct)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct">
<!--        <assert test="@typeCode='MANU'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута @typeCode равное 'MANU'.</assert> -->
            <assert test="count(manufacturedLabeledDrug)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedLabeledDrug.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1033'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1033'.</assert>
            <assert test="@code!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/reference">
            <assert test="@typeCode='REFR'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument/id)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/reference должен иметь 1 элемент externalDocument/id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/reference/externalDocument/id">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.51$')">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/reference/externalDocument/id должен иметь значение не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SUR']/entry/procedure/reference/externalDocument/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-22 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure">
            <assert test="@classCode='PROC'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure должен иметь значение атрибута @classCode равное 'PROC'.</assert>
            <assert test="@moodCode='EVN'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure должен иметь 1 элемент text.</assert>
            <assert test="count(statusCode)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)&lt;=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure должен иметь не более 1 элемента effectiveTime.</assert>
            <assert test="count(performer/assignedEntity)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure должен иметь 1 элемент performer/assignedEntity.</assert>
            <assert test="count(entryRelationship)&lt;=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure должен иметь не более 1 элемента entryRelationship.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <assert test="@code!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/entry/procedure/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/text">
            <assert test=".!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/entry/procedure/text должен иметь не пустое значение.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/statusCode">
            <assert test="@code='completed'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/effectiveTime">
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity">
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=[1,2]">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson/name)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity должен иметь 1 элемент assignedPerson/name.</assert>
            <assert test="count(representedOrganization)&lt;=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/id[1]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(id)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization/id">
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntityrepresentedOrganization/telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="streetAddressLine!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntityrepresentedOrganization/addr должен иметь не пустое значение элемента streetAddressLine.</assert>
            <assert test="state!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/performer/assignedEntityrepresentedOrganization/addr должен иметь не пустое значение элемента state.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant">
            <assert test="@typeCode='DEV'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant должен иметь значение атрибута @typeCode равное 'DEV'.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(participantRole)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant должен иметь 1 элемент participantRole.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole">
            <assert test="@classCode='MANU'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole должен иметь значение атрибут @classCode равное 'MANU'.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(playingDevice)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole должен иметь 1 элемент playingDevice.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole/playingDevice">
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole/playingDevice не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole/playingDevice должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole/playingDevice/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1079'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole/playingDevice/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1079'.</assert>
            <assert test="@code!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole/playingDevice/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole/playingDevice/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/participant/participantRole/playingDevice/code не должен иметь атрибут @nullFlavor.</report>
        </rule>

        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship">
            <assert test="@typeCode='COMP'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(substanceAdministration)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship должен иметь 1 элемент substanceAdministration.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration">
            <assert test="@classCode='SBADM'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='EVN'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(consumable)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration должен иметь 1 элемент consumable.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable">
<!--        <assert test="@typeCode='CSM'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable должен иметь значение атрибута @typeCode равное 'CSM'.</assert> -->
            <assert test="count(manufacturedProduct)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable должен иметь 1 элемент manufacturedProduct.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct">
<!--        <assert test="@typeCode='MANU'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута @typeCode равное 'MANU'.</assert> -->
            <assert test="count(manufacturedLabeledDrug)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedLabeledDrug.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug">
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1033'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1033'.</assert>
            <assert test="@code!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PROCEDURE']/entry/procedure/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedLabeledDrug/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-23 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']">
            <assert test="count(entry/act)>=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES'] должен иметь не более 1 элемента entry/act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act">
            <assert test="@classCode='ACT'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <assert test="@code!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/effectiveTime">
            <assert test="@value!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/act/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
</schema>         
            

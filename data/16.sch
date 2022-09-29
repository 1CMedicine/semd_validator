<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <!-- У1-1 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient[not(@nullFlavor)] | //assignedPerson[not(@nullFlavor)]">
            <assert test="count(name)=1">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient, //assignedPerson должны иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)] | //assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient/name, //assignedPerson/name должны иметь 1 элемент family.</assert>
            <assert test="count(given)=[1,2]">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient/name, //assignedPerson/name должны иметь 1 или 2 элемента given.</assert>
        </rule>
    </pattern>
    <!-- У1-2 -->
<!-- Много противоречий с контрольными примерами -->
<!--   
   <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor[not(@nullFlavor)] | //assignedEntity[not(@nullFlavor)] | //assignedPerson[not(@nullFlavor)] | //associatedEntity[not(@nullFlavor)]">
            <assert test="count(addr)=1">У1-2. Элементы ClinicalDocument/author/assignedAuthor, //assignedEntity, //assignedPerson, //associatedEntity должны иметь 1 элемент addr.</assert>
            <assert test="count(telecom)>=1">У1-2. Элементы ClinicalDocument/author/assignedAuthor, //assignedEntity, //assignedPerson, //associatedEntity должны иметь не менее 1 элемента telecom.</assert>
        </rule>
    </pattern>
-->
    <!-- У1-3 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[not(@nullFlavor)] | ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization[not(@nullFlavor)] | //scopingOrganization[not(@nullFlavor)]">
            <assert test="count(name)=1">У1-3. Элементы ClinicalDocument/recordTarget/patientRole/patient/name, //assignedPerson/name должны иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-3. Элементы ClinicalDocument/recordTarget/patientRole/patient/name, //assignedPerson/name должны иметь 1 элемент addr.</assert>
<!-- Конфликт с минимальным контрольным примером-->
<!--    <assert test="count(telecom)>=1">У1-3. Элементы ClinicalDocument/recordTarget/patientRole/patient/name, //assignedPerson/name должны иметь хотя бы 1 элемент telecom.</assert> -->
        </rule>
    </pattern>
    <!-- У1-4 -->
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-4. Элемент //addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(state)=1">У1-4. Элемент //addr должен иметь 1 элемент state.</assert>
        </rule>
    </pattern>
    <!-- У1-5 -->
    <!-- У1-6 -->
    <!-- У1-7 -->
    <!-- У1-8 -->
    <!-- У1-9 -->
    <!-- У1-10 -->
    <!-- У1-11 -->
    <pattern>
        <rule context="ClinicalDocument/effectiveTime[not(@nullFlavor)] | ClinicalDocument/author/time[not(@nullFlavor)] | ClinicalDocument/legalAuthenticator/time[not(@nullFlavor)] | ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low[not(@nullFlavor)] | ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high[not(@nullFlavor)] | ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low[not(@nullFlavor)] | ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-11. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <!-- У1-12 -->
    <pattern>
        <rule context="//telecom[not(@nullFlavor)]">
            <assert test="matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')">У1-12. Все элементы //telecom со схемой "tel:" должны соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра должна остаться в номере телефона после удаления всех разделителей.</assert>
        </rule>
    </pattern>
    <!-- У1-13 -->
    <!-- У1-14 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(realmCode)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент realmCode.</assert>
        </rule>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">У1-14. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-15 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(typeId)=1">У1-15. Элемент ClinicalDocument должен иметь 1 элемент typeId.</assert>
        </rule>
        <rule context="ClinicalDocument/typeId">
            <assert test="@extension='POCD_HD000040'">У1-15. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_HD000040'.</assert>
            <assert test="@root='2.16.840.1.113883.1.3'">У1-15. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>
        </rule>
    </pattern>
    <!-- У1-16 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">У1-16. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
        </rule>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root='1.2.643.5.1.13.2.7.5.1.5.3'">У1-16. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.7.5.1.5.3'.</assert>
        </rule>
    </pattern>
    <!-- У1-17 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-17. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-17. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-17. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-18 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">У1-18. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code='5'">У1-18. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '5'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-18. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">У1-19. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
        </rule>
        <rule context="ClinicalDocument/title">
            <assert test=".!=''">У1-19. Элемент ClinicalDocument/title должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-20 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">У1-20. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/effectiveTime">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/recordTarget не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-21 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">У1-21. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">У1-21. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@code!=''">У1-21. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-21. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-21. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-22 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">У1-22. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-22. Элемент ClinicalDocument/languageCode должен иметь значение атрибута @code равное 'ru-RU'.</assert>
        </rule>
    </pattern>    
    <!-- У1-23 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-23. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
            <assert test="count(setId)=1">У1-23. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-23. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-23. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-23. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-23. Элемент ClinicalDocument/setId должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-24 -->
    <pattern>
        <rule context="ClinicalDocument">
            <report test="matches(setId/@root,id/@root)">У1-24. Элемент ClinicalDocument/setId должен иметь значение атрибута @root отличный от значения атрибута @root элемента ClinicalDocument/id.</report>
        </rule>
    </pattern>
    <!-- У1-25 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">У1-25. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=3">У1-25. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 3 элемента id.</assert>
            <assert test="count(addr)=2">У1-25. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 2 элемента addr.</assert>
            <assert test="count(patient)=1">У1-25. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
<!--        <assert test="count(telecom)>=1">У1-25. Элемент ClinicalDocument/recordTarget/patientRole должен иметь не менее 1 элемента telecom.</assert> -->
        </rule>
    </pattern>
    <!-- У1-26 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[1]">
            <assert test="@use='H'">У1-26. Элемент ClinicalDocument/recordTarget/patientRole/addr[1] должен иметь значение атрибута @use равное 'H'.</assert>
        </rule>
    </pattern>
    <!-- У1-27 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[2]">
            <assert test="@use='HP'">У1-27. Элемент ClinicalDocument/recordTarget/patientRole/addr[2] должен иметь значение атрибута @use равное 'HP'.</assert>
        </rule>
    </pattern>
    <!-- У1-28 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/recordTarget/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-28. Элемент ClinicalDocument/recordTarget/recordTarget/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-28. Элемент ClinicalDocument/recordTarget/recordTarget/id должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-29 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(patient)=1">У1-29. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(birthTime)=1">У1-29. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
            <assert test="count(name)=1">У1-29. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-29. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
        </rule>
    </pattern>
    <!-- У1-30 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-30. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">У1-30. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-30. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-30. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-31 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]$')">У1-31. Дата в элементе должна быть указана с точностью до года, можно указывать с точностью до дня.</assert>
        </rule>
    </pattern>
    <!-- У1-32 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(providerOrganization)=1">У1-32. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
<!--        <assert test="count(id)=3">У1-32. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 3 элемента id.</assert> -->
            <assert test="count(name)=1">У1-32. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-32. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr">
            <assert test="count(state)=1">У1-32. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент state.</assert>
            <assert test="count(streetAddressLine)=1">У1-32. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-32. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-33 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-32. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <!-- У1-34 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">У1-34. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-34. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <!--Отсутствует в контрольных примерах-->
            <!--        <assert test="count(functionCode)=1">У1-34. Элемент ClinicalDocument/author должен иметь 1 элемент functionCode.</assert> -->
            <assert test="count(assignedAuthor)=1">У1-34. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor.</assert>
        </rule>
        <rule context="ClinicalDocument/author/time">
            <report test="@nullFlavor">У1-34. Элемент ClinicalDocument/author/time не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/functionCode">
            <report test="@nullFlavor">У1-34. Элемент ClinicalDocument/author/functionCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-35 -->
    <pattern>
        <rule context="ClinicalDocument/author/functionCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1066','1.2.643.5.1.13.2.1.1.181','1.2.643.5.1.13.2.1.1.716']">У1-35. Элемент ClinicalDocument/author/functionCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1066', '1.2.643.5.1.13.2.1.1.181' или '1.2.643.5.1.13.2.1.1.716'.</assert>
            <assert test="@code!=''">У1-35. Элемент ClinicalDocument/author/functionCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-35. Элемент ClinicalDocument/author/functionCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-35. Элемент ClinicalDocument/author/functionCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-35. Элемент ClinicalDocument/author/functionCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-36 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)>=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor должен иметь не менее 1 элемента id.</assert>
            <assert test="count(id)&lt;=3">У1-36. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 3 элементов id.</assert>
            <assert test="count(code)=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(addr)&lt;=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-36. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
    </pattern>
    <!-- У1-37 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-37. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension">У1-37. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-38 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-38. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-38. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-38. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-38. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-38. Элемент ClinicalDocument/author/assignedAuthor/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-39 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">У1-39. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-40 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="count(id)=1">У1-40. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-40. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-40. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
            <assert test="count(telecom)>=1">У1-40. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь не менее 1 элемента telecom.</assert>
        </rule>
    </pattern>
    <!-- У1-41 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-41. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <!--Отсутствует в контрольных примерах-->
            <!--        <assert test="@extension">У1-41. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь атрибут @extension.</assert> -->
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-41. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <!-- У1-42 -->
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <assert test="count(representedCustodianOrganization)=1">У1-42. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">У1-42. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <!--Отсутствует в минимальном контрольном примере-->
            <!--        <assert test="count(telecom)=1">У1-42. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент telecom.</assert> -->
            <assert test="count(addr)=1">У1-42. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <!-- У1-43 -->
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-41. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <!--Отсутствует в контрольных примерах-->
            <!--        <assert test="@extension">У1-43. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь атрибут @extension.</assert> -->
        </rule>
    </pattern>
    <!-- У1-44 -->
    <pattern>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient">
            <assert test="count(receivedOrganization)=1">У1-44. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">У1-44. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-44. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id">
            <report test="@nullFlavor">У1-44. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name">
            <report test="@nullFlavor">У1-44. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-45 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-45. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <!--        <assert test="count(id)=2">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 2 элемента id.</assert> -->
            <assert test="count(code)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <!--Отсутствуют в минимальном контрольном примере-->
            <!--
            <assert test="count(addr)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент addr.</assert>
            <assert test="count(telecom)>=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(representedOrganization)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент representedOrganization.</assert>
-->
            <assert test="count(assignedPerson)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
        </rule>
    </pattern>
    <!-- У1-46 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@code='S'">У1-46. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @code равное 'S'.</assert>
        </rule>
    </pattern>
    <!-- У1-47 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-47. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-47. Элемент ClinicalDocument/legalAuthenticator/assignedAuthor/id[1] должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-48 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-48. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-48. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-48. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-48. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-48. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-49 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-49. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-49. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-49. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <!-- У1-50 -->
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-50. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <!--Отсутствует в максимальном контрольном примере-->
            <!--        <assert test="@extension">У1-50. Элемент ClinicalDocument/author/assignedAuthor/id должен иметь атрибут @extension.</assert> -->
        </rule>
    </pattern>
    <!-- У1-51 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']">
            <assert test="count(associatedEntity[@classCode='POLHOLD'])&lt;=1">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD'] должен иметь не более 1 элемента associatedEntity[@classCode='POLHOLD'].</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']">
            <assert test="count(id)=1">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD'] должен иметь 1 элемент id.</assert>
            <assert test="count(code)=1">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD'] должен иметь 1 элемент code.</assert>
            <assert test="count(scopingOrganization)=1">У1-51. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD'] должен иметь 1 элемент scopingOrganization.</assert>
        </rule>
    </pattern>
    <!-- У1-52 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-52. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-52. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/id должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-53 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/code">
            <assert test="@code='SELF'">У1-53. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/code должен иметь значение атрибута @code равное 'SELF'.</assert>
            <assert test="@codeSystem='2.16.840.1.113883.5.111'">У1-53. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/code должен иметь значение атрибута @codeSystem равное '2.16.840.1.113883.5.111'.</assert>
        </rule>
    </pattern>
    <!-- У1-54 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization">
            <assert test="count(name)=1">У1-54. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)&lt;=1">У1-54. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization должен иметь не более 1 элемента telecom.</assert>
            <assert test="count(addr)&lt;=1">У1-54. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization должен иметь не более 1 элемента addr.</assert>
            <assert test="count(id)&lt;=1">У1-54. Элемент ClinicalDocument/participant[@typeCode='HLD']/associatedEntity[@classCode='POLHOLD']/scopingOrganization должен иметь не более 1 элемента id.</assert>
        </rule>
    </pattern>
    <!-- У1-55 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='REF']">
            <assert test="count(associatedEntity[@classCode='PROV'])&lt;=1">У1-55. Элемент ClinicalDocument/participant[@typeCode='REF'] должен иметь не более 1 элемента associatedEntity[@classCode='PROV'].</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']">
            <assert test="count(id)=2">У1-55. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV'] должен иметь 2 элемента id.</assert>
            <assert test="count(code)&lt;=1">У1-55. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV'] должен иметь не более 1 элемента code.</assert>
            <assert test="count(scopingOrganization)=1">У1-55. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV'] должен иметь 1 элемент scopingOrganization.</assert>
            <assert test="count(associatedPerson)=1">У1-55. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV'] должен иметь 1 элемент associatedPerson.</assert>
        </rule>
    </pattern>
    <!-- У1-56 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-56. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-56. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/id должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-57 -->
    <!-- У1-58 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-58. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-58. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-58. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-58. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-59 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/scopingOrganization">
            <assert test="count(id)&lt;=1">У1-59. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/scopingOrganization должен иметь не более 1 элемента id.</assert>
            <assert test="count(telecom)&lt;=1">У1-59. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/scopingOrganization должен иметь не более 1 элемента telecom.</assert>
            <assert test="count(addr)&lt;=1">У1-59. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/scopingOrganization должен иметь не более 1 элемента addr.</assert>
            <assert test="count(name)=1">У1-59. Элемент ClinicalDocument/participant[@typeCode='REF']/associatedEntity[@classCode='PROV']/scopingOrganization должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-60 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(inFulfillmentOf)&lt;=1">У1-60. Элемент ClinicalDocument должен иметь не более 1 элемента inFulfillmentOf.</assert>
        </rule>
        <rule context="ClinicalDocument/inFulfillmentOf">
            <assert test="count(order/id)=1">У1-60. Элемент ClinicalDocument/inFulfillmentOf должен иметь 1 элемент order/id.</assert>
        </rule>
    </pattern>
    <!-- У1-61 -->
    <pattern>
        <rule context="ClinicalDocument/inFulfillmentOf/order/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-61. Элемент ClinicalDocument/inFulfillmentOf/order/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-61. Элемент ClinicalDocument/inFulfillmentOf/order/id должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-62 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(documentationOf)>=1">У1-62. Элемент ClinicalDocument должен иметь не менее 1 элемента documentationOf.</assert>
        </rule>
    </pattern>
    <!-- У1-63 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf">
            <assert test="count(serviceEvent)=1">У1-63. Элемент ClinicalDocument/documentationOf должен иметь 1 элемент serviceEvent.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent">
            <assert test="count(code)=1">У1-63. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У1-63. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
            <assert test="count(low)=1">У1-63. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У1-63. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
    </pattern>
    <!-- У1-64 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.29','1.2.643.5.1.13.13.11.1463','1.2.643.5.1.13.2.1.1.1504.12','1.2.643.5.1.13.13.99.2.797']">У1-64. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.29', '1.2.643.5.1.13.13.11.1463', '1.2.643.5.1.13.2.1.1.1504.12' или '1.2.643.5.1.13.13.99.2.797'.</assert>
            <assert test="@code!=''">У1-64. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-64. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-64. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-65 -->
    <!-- У1-66 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
            <assert test="count(assignedEntity)=1">У1-66. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь 1 элемент assignedEntity.</assert>
            <assert test="@typeCode=['PPRF','SPRF']">У1-66. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь значение атрибута @typeCode равное 'PPRF' или 'SPRF'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[not(performer/@typeCode='PPRF')]/performer">
<!--        <report test="@typeCode='SPRF'">У1-66. Элемент ClinicalDocument/documentationOf/serviceEvent/performer не должен иметь значение атрибута @typeCode 'SPRF'.</report> -->
        </rule>
    </pattern>
    <!-- У1-67 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
<!--        <assert test="count(id)=1">У1-67. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент id.</assert> -->
            <assert test="count(code)=1">У1-67. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У1-67. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент addr.</assert>
            <assert test="count(assignedPerson)=1">У1-67. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)=1">У1-67. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity может иметь 1 элемент representedOrganization.</assert>
        </rule>
    </pattern>
    <!-- У1-68 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-68. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-68. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedAuthor/id[1] должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-69 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-69. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <!-- У1-70 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-70. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-70. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-70. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-70. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-71 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-71. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-71. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-71. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <!-- У1-72 -->
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-72. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <!--Отсутствует в максимальном контрольном примере-->
            <!--        <assert test="@extension">У1-72. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id должен иметь атрибут @extension.</assert> -->
        </rule>
    </pattern>
    <!-- У1-73 -->
    <pattern>
        <rule context="ClinicalDocument/componentOf">
            <assert test="count(encompassingEncounter)&lt;=1">У1-73. Элемент ClinicalDocument/componentOf должен иметь не более 1 элемента encompassingEncounter.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <assert test="count(id)=1">У1-73. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент id.</assert>
            <!--Отсутствует в контрольных примерах-->
            <!--        <assert test="count(code)=1">У1-73. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент code.</assert> -->
            <assert test="count(effectiveTime)=1">У1-73. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <assert test="count(low)=1">У1-73. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">У1-73. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь не более 1 элемента high.</assert>
        </rule>
    </pattern>
    <!-- У1-74 -->
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-74. Элемент ClinicalDocument/componentOf/encompassingEncounter/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension">У1-74. Элемент ClinicalDocument/componentOf/encompassingEncounter/id должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <!-- У1-75 -->
    <!-- У1-76 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-76. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
        </rule>
    </pattern>
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DOCINFO'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='VITALPARAM'])&lt;=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component со значением атрибута section/code/@code равным 'VITALPARAM'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']">
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='VITALPARAM']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='RESINFO'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'RESINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']">
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='RESINFO']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code[@code='800']]">
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
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='800']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1007','1.2.643.5.1.13.2.1.1.109']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1007' или '1.2.643.5.1.13.2.1.1.109'.</assert>
            <assert test="@xsi:type='CD'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code[@code='801']]">
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
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='801']]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1008'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1008'.</assert>
            <assert test="@xsi:type='CD'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='802']]">
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='802']]">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='802']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='802']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.2.1.1.473','1.2.643.5.1.13.13.11.1070']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.2.1.1.4738' или '1.2.643.5.1.13.13.11.1070'.</assert>
            <assert test="@xsi:type='CD'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>   
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry">
            <assert test="count(organizer)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry должен иметь 1 элемент organizer.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer">
            <assert test="@classCode='CLUSTER'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(statusCode)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(component)=[1,2]">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 или 2 элемента component.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode">
            <assert test="@code='completed'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime">
            <assert test="@value!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component">
            <assert test="@typeCode='COMP'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(observation)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1010','1.2.643.5.1.13.13.99.2.262']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь значение атрибута @classCode равное '1.2.643.5.1.13.13.11.1010' или '1.2.643.5.1.13.13.99.2.262'.</assert>
            <assert test="@code!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(originalText/reference)&lt;=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь не более 1 элемента originalText/reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code/originalText/reference">
            <assert test="@value!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code/originalText/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value">
            <assert test="@xsi:type='PQ'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь не пустое значение атрибута @unit.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'][entry/observation/code[@code='804']]">
            <assert test="count(entry[observation/code[@code='804']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='804']]">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='804']]">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='804']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='804']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1006' или '1.2.643.5.1.13.2.1.1.111'.</assert>
            <assert test="@xsi:type='CD'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'][entry/observation/code[@code='805']]">
            <assert test="count(entry[observation/code[@code='805']])=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='805']]">
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='805']]">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='805']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='805']]/value">
            <assert test="@xsi:type='ST'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'][entry/observation/code[@code='806']]">
            <assert test="count(entry[observation/code[@code='806']])=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='806']]">
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='806']]">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='806']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='806']]/value">
            <assert test="@xsi:type='ST'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'][entry/observation/code[@code='807']]">
            <assert test="count(entry[observation/code[@code='807']])&lt;=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='807']]">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='807']]">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='807']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='807']]/value">
            <assert test="@xsi:type='ST'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='808']]">
            <assert test="count(observation)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='808']]">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='808']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='808']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@xsi:type='CD'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'][entry/observation/code[@code='809']]">
            <assert test="count(entry[observation/code[@code='809']])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='809']]">
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='809']]">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='809']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='809']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@xsi:type='CD'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'][entry/observation/code[@code='810']]">
            <assert test="count(entry[observation/code[@code='810']])&lt;=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO'] должен иметь не более 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry[observation/code[@code='810']]">
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='810']]">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code[@code='810']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation[code[@code='810']]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1009'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1009'.</assert>
            <assert test="@xsi:type='CD'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='RESINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
</schema>
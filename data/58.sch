<!-- Схематрон для СЭМД "Медицинское свидетельство о смерти" (Редакция 5) -->
<!-- Разработано в соответствии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/3815 -->


<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>
    <ns prefix="address" uri="urn:hl7-ru:address"/>
    <!-- У1-1 -->
    <pattern>
        <rule context="//assignedPerson">
            <assert test="count(name)=1">У1-1. Элемент //assignedPerson должен иметь один элемент name.</assert>
        </rule>
        <rule context="//assignedPerson/name">
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name не должен содержать @nullFlavor.</report>
            <assert test="count(family)=1">У1-1. Элемент //assignedPerson/name должен иметь один элемент family.</assert>
            <assert test="count(given)=[1,2]">У1-1. Элемент //assignedPerson/name должен иметь 1 или 2 элемента given.</assert>
        </rule>
        <rule context="//assignedPerson/name/given[1]">
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name/given[1] не должен содержать @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-2 -->
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-2. Элемент //addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У1-2. Элемент //addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="count(postalCode)=1">У1-2. Элемент //addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У1-2. Элемент //addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[address:stateCode]">
            <assert test="address:stateCode/@xsi:type='CD'">У1-2. Элемент //addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-2. Элемент //addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-2. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-2. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-2. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="address:stateCode/@nullFlavor">У1-2. Элемент //addr/address:stateCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="//addr/streetAddressLine">
            <report test="@nullFlavor">У1-2. Элемент //addr/streetAddressLine не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address/fias:AOGUID]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-2. Элемент //addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)&lt;=1">У1-2. Элемент //addr/fias:Address должен иметь не более 1 элемента fias:HOUSEGUID.</assert>
            <report test="fias:Address/fias:AOGUID/@nullFlavor">У1-2. Элемент //addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-3 -->
    <pattern>
        <rule context="//telecom[not(@nullFlavor)]">
            <assert test="matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')">У1-3. Все элементы //telecom со схемой "tel:" ДОЛЖНЫ соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра должна остаться в номере телефона после удаления всех разделителей.</assert>
        </rule>
    </pattern>
    <!-- У1-4 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(realmCode)=1">У1-4. Элемент ClinicalDocument должен иметь один элемент realmCode.</assert>
        </rule>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">У1-4. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-5 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(typeId)=1">У1-5. Элемент ClinicalDocument должен иметь один элемент typeId.</assert>
        </rule>
        <rule context="ClinicalDocument/typeId">
            <assert test="@extension='POCD_MT000040'">У1-5. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_MT000040'.</assert>
            <assert test="@root='2.16.840.1.113883.1.3'">У1-5. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>
        </rule>
    </pattern>
    <!-- У1-6 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">У1-6. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
        </rule>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root=['1.2.643.5.1.13.2.7.5.1.13.9.5','1.2.643.5.1.13.13.14.353.9.5']">У1-6. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.7.5.1.13.9.5' или '1.2.643.5.1.13.13.14.353.9.5'.</assert>
        </rule>
    </pattern>
    <!-- У1-7 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-7. Элемент ClinicalDocument должен иметь один элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="@extension">У1-7. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-7. Элемент ClinicalDocument/id ДОЛЖЕН иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-8 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">У1-8. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code=['13','353']">У1-8. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '13' или '353'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-8. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
        </rule>
    </pattern>
    <!-- У1-9 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">У1-9. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
            <assert test="title/normalize-space(text())!=''">У1-9. Элемент ClinicalDocument/title должен содержать не пустое наполнение.</assert>
        </rule>
    </pattern>
    <!-- У1-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">У1-10. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-10. Дата в элементе ClinicalDocument/effectiveTime должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
            <report test="@nullFlavor">У1-10. Элемент ClinicalDocument/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-11 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">У1-11. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@code!=''">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь атрибут @displayName, представленый не пустым значением.</assert>
        </rule>
    </pattern>
    <!-- У1-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-12. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное 'ru-RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-13 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
            <assert test="count(setId)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
            <assert test="count(versionNumber)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент versionNumber.</assert>
            <report test="matches(id/@root,setId/@root)">У1-13. Значения атрибута @root элементов ClinicalDocument/id и ClinicalDocument/setId должны различаться.</report>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="@extension">У1-13. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-13. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="@extension">У1-13. Элемент ClinicalDocument/setId должен иметь атрибут @extension.</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-13. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">У1-13. Элемент ClinicalDocument/versionNumber должен иметь атрибут @value, представленый не пустым значением.</assert>
        </rule>
    </pattern>
    <!-- У1-14 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">У1-14. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=2">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 2 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(addr)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент addr.</assert>
            <assert test="count(patient)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
            <assert test="count(providerOrganization)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[1] не должен иметь атрибут @nullFlavor.</report>
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.10$')
                          or
                          @root='1.2.643.5.1.13.13.12.2.77.8511.10'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен, при создании документа в МИС, иметь синтаксически корректное значение атрибута @root по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10"; при создании документа в ФРМСС значение атрибута @root должно быть равно '1.2.643.5.1.13.13.12.2.77.8511.10'.</assert>
            <assert test="@extension">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь атрибут @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.100.3'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardTypeId)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/Identity:IdentityDoc должен иметь один элемент identity:IdentityCardTypeId.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/Identity:IdentityDoc должен иметь один элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/Identity:IdentityDoc должен иметь один элемент identity:Number.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/Identity:IdentityDoc должен иметь один элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/Identity:IdentityDoc должен иметь один элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/Identity:IdentityDoc должен иметь один элемент identity:IssueDate.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IdentityCardTypeId]">
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@xsi:type='CD'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@code!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@displayName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="identity:IdentityDoc/identity:IdentityCardTypeId/@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:Series]">           
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:Number]">           
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="identity:IdentityDoc/identity:Number/@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueOrgName]">           
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueOrgCode]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueDate]">
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <report test="identity:IdentityDoc/identity:IssueDate/@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr">
            <assert test="count(address:Type)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь один элемент address:Type.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[address:Type]">
            <assert test="address:Type/@xsi:type='CD'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@code!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/address:Type должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:Type/@displayName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="address:Type/@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/address:Type не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
            <assert test="count(birthplace)&lt;=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь не более 1 элемента birthplace.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь значение элемента @nullFlavor равное 'ASKU' или 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]">
            <assert test="@value!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthTime должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthplace">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(place)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace должен иметь 1 элемент place.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthplace/place">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace/place не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(addr)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace/place должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=2">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь два элемента id.</assert>
            <assert test="count(identity:Okpo)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь один элемент identity:Okpo.</assert>
            <assert test="count(addr)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь один элемент addr.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
            <assert test="@extension">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@assigningAuthorityName">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь атрибут @assigningAuthorityName.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Okpo[not(@nullFlavor)]]">
            <assert test="identity:Okpo/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Okpo должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-15 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">У1-15. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-15. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У1-15. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor.</assert>
        </rule>
        <rule context="ClinicalDocument/author/time">
            <assert test="@nullFlavor='NI'">У1-15. Элемент ClinicalDocument/author/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1][not(@nullFlavor)]">
            <assert test="@extension">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь атрибут @extension</assert>
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@extension">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @extension равное '1.2.643.100.3'.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.700'">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name">
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="count(id)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-15. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/name">
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-16 -->
    <pattern>
        <rule context="ClinicalDocument/custodian">
            <assert test="count(assignedCustodian/representedCustodianOrganization)=1">У1-16. Элемент ClinicalDocument/custodian должен иметь 1 элемент assignedCustodian/representedCustodianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)&lt;=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должке иметь не более 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
            <report test="name/@nullFlavor">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <assert test="@root='1.2.643.5.1.13.13.12.2.77.8511' or matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен соответствовать регулярному выражению "([0-2])([.]([1-9][0-9]*|0))+".</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-17 -->
    <pattern>
        <rule context="ClinicalDocument/informationRecipient">
            <assert test="count(intendedRecipient/receivedOrganization)=1">У1-17. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient/receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id">
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name">
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-18 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-18. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@nullFlavor='NI'">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedAuthor должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@nullFlavor='NI'">У1-18. Элемент ClinicalDocument/legalAuthenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="@extension">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь атрибут @extension</assert>
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
            <assert test="@extension">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @extension равное '1.2.643.100.3'.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.700'">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(authenticator)&lt;=1">У1-19. Элемент ClinicalDocument должен иметь не более 1 элемента authenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator">
            <assert test="count(time)=1">У1-19. Элемент ClinicalDocument/authenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-19. Элемент ClinicalDocument/authenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-19. Элемент ClinicalDocument/authenticator должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/signatureCode">
            <assert test="@nullFlavor='NI'">У1-19. Элемент ClinicalDocument/authenticator/assignedAuthor должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/time">
            <assert test="@nullFlavor='NI'">У1-19. Элемент ClinicalDocument/authenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity">
            <assert test="count(id)=2">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="@extension">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[1] должен иметь атрибут @extension</assert>
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[2]">
            <assert test="@extension">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] должен иметь значение атрибута @extension равное '1.2.643.100.3'.</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/code[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.700'">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/code[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/assignedPerson">
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-20 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant)&lt;=1">У1-20. Элемент ClinicalDocument должен иметь не более 1 элемента participant.</assert>
        </rule>
        <rule context="ClinicalDocument/participant">
            <assert test="@typeCode='IRCP'">У1-20. Элемент ClinicalDocument/participant должен иметь значение атрибута @typeCode равное 'IRCP'.</assert>
            <assert test="count(associatedEntity)=1">У1-20. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <assert test="@classCode=['PRS','AGNT']">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'PRS' или 'AGNT'.</assert>
            <assert test="count(id)&lt;=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(addr)&lt;=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(associatedPerson)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент associatedPerson.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/id">
            <assert test="@root='1.2.643.100.3'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension">У1-20. Элемент ClinicalDocument/participant/associatedEntity/id должен иметь атрибут @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc]">
            <report test="identity:IdentityDoc/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(identity:IdentityDoc/identity:IdentityCardTypeId)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardTypeId.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:IdentityCardTypeId]">
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <report test="identity:IdentityDoc/identity:IdentityCardTypeId/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IdentityCardTypeId не должен иметь атрибут @nullFlavor.</report>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@code!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemName!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@displayName!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:Number]">
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="identity:IdentityDoc/identity:Number/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:IssueDate]">
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IssueDate должен иметь атрибут @value.</assert>
            <report test="identity:IdentityDoc/identity:IssueDate/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/addr">
            <assert test="count(streetAddressLine)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:Type)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr должен иметь 1 элемент address:Type.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/addr[address:Type]">
            <assert test="address:Type/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@code!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:Type/@displayName!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="address:Type/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/associatedPerson">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/associatedPerson/name">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(family)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name должен иметь 2 элемента given.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/associatedPerson/name/given[1]">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name/given не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/associatedPerson/name/given[2][@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name/given должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA', 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У1-21 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-21. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
        </rule>
    </pattern>
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DOCINFO'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <report test="@nullFlavor">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23' или '1.2.643.5.1.13.13.11.1379'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/title">
            <report test="@nullFlavor">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/title не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/text">
            <report test="@nullFlavor">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/text не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DEADPATINFO'])=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <report test="@nullFlavor">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DEADPATINFO']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23' или '1.2.643.5.1.13.13.11.1379'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/title">
            <report test="@nullFlavor">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/title не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/text">
            <report test="@nullFlavor">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/text не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='ABOUTDEAD'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <report test="@nullFlavor">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='ABOUTDEAD']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23' или '1.2.643.5.1.13.13.11.1379'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/title">
            <report test="@nullFlavor">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/title не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/text">
            <report test="@nullFlavor">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/text не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5013'])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5013'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5013']">
            <assert test="count(entry)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5013']">
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5013']">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5013']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5013']]/value">
            <assert test="@xsi:type='ST'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5013']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5013']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5014'])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5014'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5014']">
            <assert test="count(entry)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5014']">
            <assert test="count(observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5014']">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5014']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5014'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value">
            <assert test="@xsi:type='ST'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="matches(.,'^[1|2]{1}[0-9]{8}$')">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value должен иметь синтаксически корректный номер, т.е. должен соответствовать регулярному выражению "[1|2]{1}[0-9]{8}".</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code[@code='353']]/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value">
            <assert test="matches(.,'^[2]{1}')">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value должен начинаться с '2' для документа, содержащего сведения медицинского свидетельства о смерти в бумажной форме.</assert>
        </rule>
        <rule context="ClinicalDocument[code[@code='13']]/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value">
            <assert test="matches(.,'^[1]{1}')">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value должен начинаться с '1' для медицинского свидетельства о смерти.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='511'])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '511'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='511']">
            <assert test="count(entry)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='511']">
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='511']">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='511']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='511'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.19','1.2.643.5.1.13.2.1.1.1504.60']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.19' или '1.2.643.5.1.13.2.1.1.1504.60'.</assert>
            <assert test="@xsi:type='CD'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5015'])=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5015'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5015']">
            <assert test="count(entry)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5015']">
            <assert test="count(observation)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5015']">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5015']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5015'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']]/value">
            <assert test="@xsi:type='ST'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="(.!='' and not(@nullFlavor)) or @nullFlavor='NA'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']]/value должен быть представлен не пустым значением или иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5016'])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5016'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5016']">
            <assert test="count(entry)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5016']">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5016']">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5016']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5016'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']]/value">
            <assert test="@xsi:type='ST'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="(.!='' and not(@nullFlavor)) or @nullFlavor='NA'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']]/value должен быть представлен не пустым значением или иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='112'])=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '112'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='112']">
            <assert test="count(entry)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='112']">
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='112']">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='112']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='112']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='112'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='112']]/value">
            <assert test="@xsi:type='TS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='112']]/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="(@value!='' and not(@nullFlavor)) or @nullFlavor='NA'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='112']]/value должен иметь не пустое значение атрибута @value или значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='12135'])=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '12135'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='12135']">
            <assert test="count(entry)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12135']">
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12135']">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12135']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12135'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value">
            <assert test="@xsi:type='BL'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value=['true','false']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value должен иметь пустое значение атрибута @value равное 'true' или 'false'.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='6082'])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '6082'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='6082']">
            <assert test="count(entry)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='6082']">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='6082']">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6082']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6082'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value">
            <assert test="@xsi:type='ST'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='521'])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '521'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='521']">
            <assert test="count(entry)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='521']">
            <assert test="count(observation)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='521']">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='521']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='521'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value">
            <assert test="@xsi:type='TS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="@value!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='6016'])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '6016'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='6016']">
            <assert test="count(entry)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='6016']">
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='6016']">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='6016']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='6016'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="@xsi:type='CD'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='531'])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '531'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='531']">
            <assert test="count(entry)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='531']">
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='531']">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='531']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='531'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='AD'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value должен иметь значение атрибута @xsi:type равное 'АD'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='252'])=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '252'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='252']">
            <assert test="count(entry)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='252']">
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='252']">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='252']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='252'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="@xsi:type='CD'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='541'])=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '541'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='541']">
            <assert test="count(entry)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='541']">
            <assert test="count(observation)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='541']">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='541']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='541'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.20','1.2.643.5.1.13.2.1.1.1504.61']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.20' или '1.2.643.5.1.13.2.1.1.1504.61'.</assert>
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='612'])=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '612'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='612']">
            <assert test="count(entry)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='612']">
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='612']">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='612']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='612'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.18','1.2.643.5.1.13.2.1.1.1504.68']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.18' или '1.2.643.5.1.13.2.1.1.1504.68'.</assert>
            <assert test="@xsi:type='CD'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='410'])=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '410'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='410']">
            <assert test="count(entry)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='410']">
            <assert test="count(observation)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='410']">
            <assert test="@classCode='OBS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='410']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='410'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='PQ'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit='г'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value должен иметь значение атрибута @unit равное 'г'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='370'])=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '370'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='370']">
            <assert test="count(entry)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='370']">
            <assert test="count(observation)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='370']">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='370']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='370'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='INT'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-17 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code=['260','261']])=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '260' или '261'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code=['260','261']]">
            <assert test="count(entry)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code=['260','261']]">
            <assert test="count(observation)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='261']">
            <assert test="@classCode='OBS'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260']">
            <assert test="@classCode='OBS'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(subject)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']] должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=['260','261']]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=['260','261']] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['260','261']]]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.15','1.2.643.5.1.13.2.1.1.1504.6201']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['260','261']]]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.15' или '1.2.643.5.1.13.2.1.1.1504.6201'.</assert>
            <assert test="@xsi:type='CD'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['260','261']]]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['260','261']]]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['260','261']]]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['260','261']]]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['260','261']]]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject">
            <assert test="count(relatedSubject)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject должен иметь 1 элемент relatedSubject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject">
            <assert test="@classCode='PRS'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject должен иметь значение атрибута @classCode равное 'PRS'.</assert>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject должен иметь 1 элемент addr.</assert>
            <assert test="count(subject)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@code='1'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/code должен иметь значение атрибута @code равное '1'.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/addr[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/addr должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject[not(@nullFlavor)]">
            <assert test="count(name)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name">
            <assert test="count(family)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name должен иметь 2 элемента given.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name/family">
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name/given[1]">
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name/given[2][@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/name/given[2] должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-17. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/birthTime должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260']]/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-18 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code=['270','271']])=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '270' или '271'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code=['270','271']]">
            <assert test="count(entry)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code=['270','271']]">
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='271']">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270']">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(subject)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']] должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=['270','271']]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=['270','271']] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['270','271']]]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.16','1.2.643.5.1.13.2.1.1.1504.62']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['270','271']]]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.16' или '1.2.643.5.1.13.2.1.1.1504.62'.</assert>
            <assert test="@xsi:type='CD'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['270','271']]]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['270','271']]]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['270','271']]]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['270','271']]]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['270','271']]]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject">
            <assert test="count(relatedSubject)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject должен иметь 1 элемент relatedSubject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject">
            <assert test="@classCode='PRS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject должен иметь значение атрибута @classCode равное 'PRS'.</assert>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject должен иметь 1 элемент addr.</assert>
            <assert test="count(subject)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@code='1'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/code должен иметь значение атрибута @code равное '1'.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/addr[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/addr должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject[not(@nullFlavor)]">
            <assert test="count(name)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name">
            <assert test="count(family)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name должен иметь 2 элемента given.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name/family">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name/given[1]">
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name/given[2][@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/name/given[2] должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-18. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/birthTime должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270']]/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-19 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code=['280','281']])=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '280' или '281'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code=['280','281']]">
            <assert test="count(entry)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code=['280','281']]">
            <assert test="count(observation)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='281']">
            <assert test="@classCode='OBS'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280']">
            <assert test="@classCode='OBS'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(subject)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']] должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=['280','281']]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=['280','281']] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['280','281']]]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1038'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['280','281']]]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1038'.</assert>
            <assert test="@xsi:type='CD'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['280','281']]]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['280','281']]]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['280','281']]]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['280','281']]]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=['280','281']]]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject">
            <assert test="count(relatedSubject)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject должен иметь 1 элемент relatedSubject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject">
            <assert test="@classCode='PRS'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject должен иметь значение атрибута @classCode равное 'PRS'.</assert>
            <assert test="count(code)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject должен иметь 1 элемент addr.</assert>
            <assert test="count(subject)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@code='1'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/code должен иметь значение атрибута @code равное '1'.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/addr[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/addr должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject[not(@nullFlavor)]">
            <assert test="count(name)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name">
            <assert test="count(family)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name должен иметь 2 элемента given.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name/family">
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name/given[1]">
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name/given[2][@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/name/given[2] должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-19. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/birthTime должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280']]/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-20 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='5010'])=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5010'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='5010']">
            <assert test="count(entry)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='5010']">
            <assert test="count(observation)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010']">
            <assert test="@classCode='OBS'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(subject)&lt;=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']] должен иметь не более 1 элемента subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='5010']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='5010'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='ST'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject">
            <assert test="count(relatedSubject)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject должен иметь 1 элемент relatedSubject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject">
            <assert test="@classCode='PRS'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject должен иметь значение атрибута @classCode равное 'PRS'.</assert>
            <assert test="count(code)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject должен иметь 1 элемент addr.</assert>
            <assert test="count(subject)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@code='1'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/code должен иметь значение атрибута @code равное '1'.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/addr[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/addr должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject[not(@nullFlavor)]">
            <assert test="count(name)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name">
            <assert test="count(family)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name должен иметь 2 элемента given.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name/family">
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name/given[1]">
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name/given[2][@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name/given[2] должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-20. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/birthTime должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-21 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='551'])=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '551'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='551']">
            <assert test="count(entry)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='551']">
            <assert test="count(observation)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='551']">
            <assert test="@classCode='OBS'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='551']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='551'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.21','1.2.643.5.1.13.2.1.1.1504.63']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.21' или '1.2.643.5.1.13.2.1.1.1504.63'.</assert>
            <assert test="@xsi:type='CD'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-22 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='6019'])=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '6019'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='6019']">
            <assert test="count(entry)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='6019']">
            <assert test="count(observation)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='6019']">
            <assert test="@classCode='OBS'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='6019']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='6019'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='TS'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-22. Время в элементе должно быть указано с точностью до минут, должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-23 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='571'])=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '571'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='571']">
            <assert test="count(entry)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='571']">
            <assert test="count(observation)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='571']">
            <assert test="@classCode='OBS'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='571']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='571'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.22','1.2.643.5.1.13.2.1.1.1504.64']">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.22' или '1.2.643.5.1.13.2.1.1.1504.64'.</assert>
            <assert test="@xsi:type='CD'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-24 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='581'])=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '581'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='581']">
            <assert test="count(entry)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='581']">
            <assert test="count(observation)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='581']">
            <assert test="@classCode='OBS'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='581']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='581'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.23','1.2.643.5.1.13.2.1.1.1504.65']">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.23' или '1.2.643.5.1.13.2.1.1.1504.65'.</assert>
            <assert test="@xsi:type='CD'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-25 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4030'])=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '4030'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4030']">
            <assert test="count(entry)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4030']">
            <assert test="count(observation)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030']">
            <assert test="@classCode='OBS'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4030']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4030'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[@code='4030']/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030']/effectiveTime должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-26 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4035'])=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '4035'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4035']">
            <assert test="count(entry)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4035']">
            <assert test="count(observation)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035']">
            <assert test="@classCode='OBS'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4035']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4035'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[@code='4035']/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035']/effectiveTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-27 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4040'])=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '4040'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4040']">
            <assert test="count(entry)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4040']">
            <assert test="count(observation)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040']">
            <assert test="@classCode='OBS'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4040']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4040'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[@code='4040']/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040']/effectiveTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-28 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4045'])=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '4045'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4045']">
            <assert test="count(entry)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4045']">
            <assert test="count(observation)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045']">
            <assert test="@classCode='OBS'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4045']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4045'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[@code='4045']/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045']/effectiveTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.692'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.692'.</assert>
            <assert test="@xsi:type='CD'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-29 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4050']">
            <assert test="count(observation)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050']">
            <assert test="@classCode='OBS'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4050']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4050'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[@code='4050']/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050']/effectiveTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1489','1.2.643.5.1.13.13.99.2.692']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489' или '1.2.643.5.1.13.13.99.2.692'.</assert>
            <assert test="@xsi:type='CD'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship">
            <assert test="@typeCode='CAUS'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship должен иметь значение атрибута @typeCode равное 'CAUS'.</assert>
            <assert test="count(procedure)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship должен иметь 1 элемент procedure.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure">
            <assert test="@classCode='PROC'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь значение атрибута @classCode равное 'PROC'.</assert>
            <assert test="@moodCode='EVN'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь не более 1 элемента text.</assert>
            <assert test="count(statusCode)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)&lt;=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь не более 1 элемента effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <report test="@nullFlavor">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/code не должен атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/statusCode">
            <assert test="@code='completed'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/statusCode не должен атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-30 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='601'])=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '601'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='601']">
            <assert test="count(entry)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='601']">
            <assert test="count(observation)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='601']">
            <assert test="@classCode='OBS'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=[1,2]">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']] должен иметь 1 или 2 элемента value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='601']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='601'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.24','1.2.643.5.1.13.2.1.1.1504.66']">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.24' или '1.2.643.5.1.13.2.1.1.1504.66'.</assert>
            <assert test="@xsi:type='CD'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-31 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='591'])=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '591'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='591']">
            <assert test="count(entry)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='591']">
            <assert test="count(observation)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='591']">
            <assert test="@classCode='OBS'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='591']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='591'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.25','1.2.643.5.1.13.2.1.1.1504.67']">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.25' или '1.2.643.5.1.13.2.1.1.1504.67'.</assert>
            <assert test="@xsi:type='CD'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
</schema>

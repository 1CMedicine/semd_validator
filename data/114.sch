<!-- Схематрон для СЭМД "Документ, содержащий сведения медицинского свидетельства о перинатальной смерти в бумажной форме" (Редакция 2) -->
<!-- Разработано в соотвествии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/3817 -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>
    <ns prefix="address" uri="urn:hl7-ru:address"/>
    <!-- У1-1 -->
    <pattern>
        <rule context="//assignedPerson[not(@nullFlavor)]">
            <assert test="count(name)=1">У1-1. Элемент //assignedPerson должен иметь один элемент name.</assert>
        </rule>
        <rule context="//assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-1. Элемент //assignedPerson/name должен иметь один элемент family.</assert>
            <assert test="count(given)=[1,2]">У1-1. Элемент //assignedPerson/name должен иметь 1 или 2 элемента given.</assert>
        </rule>
        <rule context="//assignedPerson/name/family">
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name/family не должен содержать @nullFlavor.</report>
        </rule>
        <rule context="//assignedPerson/name/given">
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name/given не должен содержать @nullFlavor.</report>
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
        <rule context="//addr[address:stateCode[not(@nullFlavor)]]">
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
        <rule context="//addr[fias:Address/fias:AOGUID[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-2. Элемент //addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <report test="fias:Address/fias:AOGUID/@nullFlavor">У1-2. Элемент //addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-2. Элемент //addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <!-- У1-3 -->
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
            <assert test="@root=['1.2.643.5.1.13.2.7.5.1.14.9.2','1.2.643.5.1.13.13.14.354.9.2']">У1-6. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.7.5.1.14.9.2' или '1.2.643.5.1.13.13.14.354.9.2'.</assert>
        </rule>
    </pattern>
    <!-- У1-7 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-7. Элемент ClinicalDocument должен иметь один элемент id.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="@extension">У1-7. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-7. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- У1-8 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">У1-8. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code=['14','354']">У1-8. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '14' или '354'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-8. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
        </rule>
    </pattern>
    <!-- У1-9 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">У1-9. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
        </rule>
        <rule context="ClinicalDocument/title">
            <assert test=".!=''">У1-9. Элемент ClinicalDocument/title должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">У1-10. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-10. Дата в элементе ClinicalDocument/effectiveTime должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
            <report test="@nullFlavor">У1-10. Элемент ClinicalDocument/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-11 -->
    <!-- У1-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">У1-12. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9' , '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@code!=''">У1-12. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-12. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-12. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <!-- У1-13 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-13. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное 'ru-RU'.</assert>
        </rule>
    </pattern>
    <!-- У1-14 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
            <assert test="count(setId)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
            <assert test="count(versionNumber)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент versionNumber.</assert>
            <report test="matches(id/@root,setId/@root)">У1-14. Значения атрибута @root элементов ClinicalDocument/id и ClinicalDocument/setId должны различаться.</report>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="@extension">У1-14. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-14. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="@extension">У1-14. Элемент ClinicalDocument/setId должен иметь атрибут @extension.</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-14. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">У1-14. Элемент ClinicalDocument/versionNumber должен иметь атрибут @value, представленый не пустым значением.</assert>
        </rule>
    </pattern>
    <!-- У1-15 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">У1-15. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент id.</assert>
            <assert test="count(patient)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
            <assert test="count(providerOrganization)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id">
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/id не должен иметь атрибут @nullFlavor.</report>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$') or @root='1.2.643.5.1.13.13.12.2.77.8511.10'">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/id должен, при создании документа в МИС, иметь синтаксически корректное значение атрибута @root по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10"; при создании документа в ФРМСС значение атрибута @root должно быть равно '1.2.643.5.1.13.13.12.2.77.8511.10'.</assert>
            <assert test="@extension">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь атрибут @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
            <assert test="count(birthplace)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)] ">
            <assert test="count(family)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/family[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA']">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/family должен иметь значение элемента @nullFlavor равное 'ASKU' или 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor!=''">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-15. Дата в элементе ClinicalDocument/recordTarget/patientRole/patient/birthTime должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthplace[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthplace[not(@nullFlavor)]">
            <assert test="count(place)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace должен иметь 1 элемент place.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/place">
            <assert test="count(addr)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=2">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 2 элемента id.</assert>
            <assert test="count(name)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь один элемент name.</assert>
            <assert test="count(addr)=1">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь один элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]">
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
            <assert test="@extension">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@assigningAuthorityName">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь атрибут @assigningAuthorityName.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/name">
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-16 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">У1-16. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-16. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У1-16. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor.</assert>
        </rule>
        <rule context="ClinicalDocument/author/time">
            <assert test="@nullFlavor='NI'">У1-16. Элемент ClinicalDocument/author/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">У1-16. Элемент ClinicalDocument/author/assignedAuthor должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-16. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-16. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-16. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-16. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1][not(@nullFlavor)]">
            <assert test="@extension">У1-16. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь атрибут @extension</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-16. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-16. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@extension">У1-16. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-16. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @extension равное '1.2.643.100.3'.</assert>
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/author/assignedAuthor/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.700'">У1-16. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-16. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-16. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-16. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/author/assignedAuthor/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson[not(@nullFlavor)]">
            <assert test="count(name)=1">У1-16. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="count(id)=1">У1-16. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-16. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-16. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-16. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/name">
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-17 -->
    <pattern>
        <rule context="ClinicalDocument/custodian">
            <assert test="count(assignedCustodian/representedCustodianOrganization)=1">У1-17. Элемент ClinicalDocument/custodian должен иметь 1 элемент assignedCustodian/representedCustodianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">У1-17. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-17. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)&lt;=1">У1-17. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должке иметь не более 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У1-17. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <assert test="@root='1.2.643.5.1.13.13.12.2.77.8511' or matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-17. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь значение равное '1.2.643.5.1.13.13.12.2.77.8511' или соответствовать регулярному выражению "([0-2])([.]([1-9][0-9]*|0))+".</assert>
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-18 -->
    <pattern>
        <rule context="ClinicalDocument/informationRecipient">
            <assert test="count(intendedRecipient/receivedOrganization)=1">У1-18. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient/receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">У1-18. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-18. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id">
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name">
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-19. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@nullFlavor='NI'">У1-19. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@nullFlavor='NI'">У1-19. Элемент ClinicalDocument/legalAuthenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="@extension">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь атрибут @extension</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
            <assert test="@extension">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @extension равное '1.2.643.100.3'.</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.700'">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен соответствовать регулярному выражению "([0-2])([.]([1-9][0-9]*|0))+".</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-20 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(authenticator)&lt;=1">У1-20. Элемент ClinicalDocument должен иметь не более 1 элемента authenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator">
            <assert test="count(time)=1">У1-20. Элемент ClinicalDocument/authenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-20. Элемент ClinicalDocument/authenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-20. Элемент ClinicalDocument/authenticator должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/time">
            <assert test="@nullFlavor='NI'">У1-20. Элемент ClinicalDocument/authenticator/time должен иметь значение атрибут @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/signatureCode">
            <assert test="@nullFlavor='NI'">У1-20. Элемент ClinicalDocument/authenticator/signatureCode должен иметь значение атрибут @nullFlavor равное 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity">
            <assert test="count(id)=2">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="@extension">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/id[1] должен иметь атрибут @extension</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[2]">
            <assert test="@extension">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] должен иметь значение атрибута @extension равное '1.2.643.100.3'.</assert>
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/code[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.700'">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/assignedPerson">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/id должен соответствовать регулярному выражению "([0-2])([.]([1-9][0-9]*|0))+".</assert>
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-21 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant)&lt;=1">У1-21. Элемент ClinicalDocument должен иметь не более 1 элемента participant.</assert>
        </rule>
        <rule context="ClinicalDocument/participant">
            <assert test="@typeCode='IRCP'">У1-21. Элемент ClinicalDocument/participant должен иметь значение атрибута @typeCode равное 'IRCP'.</assert>
            <assert test="count(associatedEntity)=1">У1-21. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <assert test="@classCode=['PRS','AGNT']">У1-21. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'PRS' или 'AGNT'.</assert>
            <assert test="count(id)&lt;=1">У1-21. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента id.</assert>
            <assert test="count(code)=1">У1-21. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(identity:IdentityDoc)=1">У1-21. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(addr)&lt;=1">У1-21. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(associatedPerson)=1">У1-21. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент associatedPerson.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/id">
            <assert test="@extension">У1-20. Элемент ClinicalDocument/participant/associatedEntity/id должен иметь атрибут @extension.</assert>
            <assert test="@root='1.2.643.100.3'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/id должен иметь значение атрибута @extension равное '1.2.643.100.3'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/assignedAuthor/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У1-20. Элемент ClinicalDocument/participant/assignedAuthor/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@code!=''">У1-20. Элемент ClinicalDocument/participant/assignedAuthor/code должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-20. Элемент ClinicalDocument/participant/assignedAuthor/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-20. Элемент ClinicalDocument/participant/assignedAuthor/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <report test="@nullFlavor!=''">У1-20. Элемент ClinicalDocument/participant/assignedAuthor/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/assignedAuthor[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/identity:IdentityDoc/identity:IssueDate должен иметь атрибут @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/assignedAuthor/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:Type)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/addr должен иметь 1 элемент address:Type.</assert>
            <assert test="address:Type/@xsi:type='CD'">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/addr/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/addr/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@code!=''">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/addr/address:Type должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:Type/@displayName!=''">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/addr/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/addr/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/assignedAuthor/associatedPerson">
            <report test="@nullFlavor">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/associatedPerson не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/associatedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/assignedAuthor/associatedPerson/name">
            <report test="@nullFlavor">У1-21. Элемент ClinicalDocument/participant/assignedAuthor/associatedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-22 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У1-22. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
        </rule>
    </pattern>
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DOCINFO'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.197'">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='MOTHINFO'])=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'MOTHINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='MOTHINFO']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.197'">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='LABODELI'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'LABODELI'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']">
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='LABODELI']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.197'">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DEADPATINFO'])=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DEADPATINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(title)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DEADPATINFO']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.197'">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
        </rule>
    </pattern>
    <!-- У2-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='ORGINFO'])=1">У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'ORGINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']">
            <assert test="count(title)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='ORGINFO']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.197'">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
        </rule>
    </pattern>
    <!-- У2-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='ABOUTDEAD'])=1">У2-6. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'ABOUTDEAD'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(title)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-6. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component/section/text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='ABOUTDEAD']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.197'">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5003'])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5003'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5003']">
            <assert test="count(entry)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5003']">
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5003']">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5003']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5003']]/value">
            <assert test="@xsi:type='ST'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5004'])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5004'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5004']">
            <assert test="count(entry)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5004']">
            <assert test="count(observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5004']">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5004']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5004']]/value">
            <assert test="@xsi:type='ST'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
            <assert test="matches(.,'^[3|4]{1}[0-9]{8}$')">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен быть заполнен синтаксически корректным номером, т.е. должен соответствовать регулярному выражению '[3\4]{1}[0-9]{8}'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code[@code='354']]/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5004']]/value">
            <assert test="matches(.,'^[4]{1}')">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value должен начинаться с '4' для документа, содержащего сведения медицинского свидетельства о перинатальной смерти в бумажной форме.</assert>
        </rule>
        <rule context="ClinicalDocument[code[@code='14']]/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5004']]/value">
            <assert test="matches(.,'^[3]{1}')">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value должен начинаться с '3' для медицинского свидетельства о перинатальной смерти.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='114'])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '114'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='114']">
            <assert test="count(entry)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='114']">
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='114']">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='114']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='114']]/value">
            <assert test="@xsi:type='TS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='511'])=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '511'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='511']">
            <assert test="count(entry)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='511']">
            <assert test="count(observation)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='511']">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='511']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.19'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.19'.</assert>
            <assert test="@xsi:type='CD'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5005'])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5005'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5005']">
            <assert test="count(entry)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5005']">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5005']">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5005']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5005']]/value">
            <assert test="@xsi:type='ST'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="(.!='' and not(@nullFlavor)) or @nullFlavor='NA'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен быть представлен не пустым значением или иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5006'])=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5006'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5006']">
            <assert test="count(entry)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5006']">
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5006']">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5006']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5006']]/value">
            <assert test="@xsi:type='ST'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="(.!='' and not(@nullFlavor)) or @nullFlavor='NA'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен быть представлен не пустым значением или иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5007'])=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5007'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='5007']">
            <assert test="count(entry)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5007']">
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5007']">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5007']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5007']]/value">
            <assert test="@xsi:type='TS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="(@value!='' and not(@nullFlavor)) or @nullFlavor='NA'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value должен иметь не пустое значение атрибута @value или значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='12135'])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '12135'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='12135']">
            <assert test="count(entry)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12135']">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12135']">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12135']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12135'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value">
            <assert test="@xsi:type='BL'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value=['true','false']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value должен иметь пустое значение атрибута @value равное 'true' или 'false'.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='6082'])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '6082'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'][entry/observation/code/@code='6082']">
            <assert test="count(entry)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='6082']">
            <assert test="count(observation)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='6082']">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6082']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'].</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6082'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value">
            <assert test="@xsi:type='ST'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(subject)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'] должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject">
            <assert test="count(relatedSubject)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject должен иметь 1 элемент relatedSubject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject">
            <assert test="@classCode='PRS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь значение атрибута @classCode равное 'PRS'.</assert>
            <assert test="count(identity:id)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент identity:id.</assert>
            <assert test="count(identity:IdentityDoc)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент addr.</assert>
            <assert test="count(subject)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент subject.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[identity:id[not(@nullFlavor)]]">
            <assert test="identity:id/@root='1.2.643.100.3'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="identity:id/@extension!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardTypeId)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardTypeId.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@xsi:type='CD'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@code!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="identity:IdentityDoc/identity:IdentityCardTypeId/@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IdentityCardTypeId не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[identity:IdentityDoc[not(@nullFlavor)]]">
            <report test="identity:IdentityDoc/identity:Number/@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[identity:IdentityDoc[not(@nullFlavor)]]">
            <report test="identity:IdentityDoc/identity:IssueDate/@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor.</report>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/identity:IdentityDoc/identity:IssueDate должен атрибут @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@code='1'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/code должен иметь значение атрибута @code равное '1'.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/addr[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/addr должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/subject">
            <assert test="count(name)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/subject должен иметь 1 элемент birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/subject/name[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/subject/name должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-10. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='250'])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '250'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'][entry/observation/code/@code='250']">
            <assert test="count(entry)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry[observation/code/@code='250']">
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='250']">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='250']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="@xsi:type='CD'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='260'])=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '260'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'][entry/observation/code/@code='260']">
            <assert test="count(entry)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry[observation/code/@code='260']">
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='260']">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='260']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.15','1.2.643.5.1.13.2.1.1.1504.6201']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.15' или '1.2.643.5.1.13.2.1.1.1504.6201'.</assert>
            <assert test="@xsi:type='CD'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='270'])=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '270'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'][entry/observation/code/@code='270']">
            <assert test="count(entry)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry[observation/code/@code='270']">
            <assert test="count(observation)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='270']">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='270']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.16','1.2.643.5.1.13.2.1.1.1504.62']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.16' или '1.2.643.5.1.13.2.1.1.1504.62'.</assert>
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='280'])=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '280'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'][entry/observation/code/@code='280']">
            <assert test="count(entry)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry[observation/code/@code='280']">
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='280']">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='280']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1038'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1038'.</assert>
            <assert test="@xsi:type='CD'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='5010'])=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5010'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'][entry/observation/code/@code='5010']">
            <assert test="count(entry)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry[observation/code/@code='5010']">
            <assert test="count(observation)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='5010']">
            <assert test="@classCode='OBS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='5010']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='5010']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='ST'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='5010']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']">
            <assert test="count(entry)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry">
            <assert test="count(observation)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(performer)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь 1 элемент performer.</assert>
            <assert test="count(entryRelationship)=3">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь 3 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship/observation/code[@code='300'])=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент code со значением атрибута @code равным '300'.</assert>
            <assert test="count(entryRelationship/observation/code[@code='5002'])=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент code со значением атрибута @code равным '5002'.</assert>
            <assert test="count(entryRelationship/observation/code[@code='310'])=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент code со значением атрибута @code равным '310'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/code">
            <assert test="@code='6018'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/code должен иметь значение атрибута @code равное '6018'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code]/value[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer">
            <assert test="count(assignedEntity)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity">
            <assert test="count(id)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity должен иметь 1 элемент id.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/id[not(@nullFlavor)]">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/id должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/id должен иметь атрибут @extension</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/id[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/id должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.32','1.2.643.5.1.13.2.1.1.1504.45']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.32' или '1.2.643.5.1.13.2.1.1.1504.45'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/assignedPerson[not(@nullFlavor)]">
            <assert test="count(name)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/assignedPerson[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/performer/assignedEntity/assignedPerson должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship[observation/code[@code='300']]">
            <assert test="@typeCode='COMP'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='300']]">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code[@code='300']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observationion/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='300']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.31','1.2.643.5.1.13.2.1.1.1504.44']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.31' или '1.2.643.5.1.13.2.1.1.1504.44'.</assert>
            <assert test="@xsi:type='CD'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='300']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observationion/entryRelationship/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship[observation/code[@code='5002']]">
            <assert test="@typeCode='COMP'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='5002']]">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code[@code='5002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observationion/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='5002']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='INT'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='5002']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observationion/entryRelationship/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship[observation/code[@code='310']]">
            <assert test="@typeCode='COMP'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <assert test="count(observation)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='310']]">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code[@code='310']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observationion/entryRelationship/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='310']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='INT'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <assert test="@value!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/entryRelationship/observation[code[@code='310']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observationion/entryRelationship/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-17 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='5009'])=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5009'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='5009']">
            <assert test="count(entry)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='5009']">
            <assert test="count(observation)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5009']">
            <assert test="@classCode='OBS'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='5009']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5009']]/text">
            <assert test="count(reference)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5009']]/text/reference">
            <assert test="@value!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5009']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.30','1.2.643.5.1.13.2.1.1.1504.43']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.30' или '1.2.643.5.1.13.2.1.1.1504.43'.</assert>
            <assert test="@xsi:type='CD'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-18 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='5000'])=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5000'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='5000']">
            <assert test="count(entry)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='5000']">
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5000']">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='5000']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5000']]/text">
            <assert test="count(reference)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5000']]/text/reference">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5000']]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.590'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.590'.</assert>
            <assert test="@xsi:type='CD'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-19 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='370'])=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '370'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='370']">
            <assert test="count(entry)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='370']">
            <assert test="count(observation)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='370']">
            <assert test="@classCode='OBS'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='370']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/text">
            <assert test="count(reference)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/text/reference">
            <assert test="@value!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='INT'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <assert test="@value!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-20 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='380'])=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '380'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='380']">
            <assert test="count(entry)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='380']">
            <assert test="count(observation)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='380']">
            <assert test="@classCode='OBS'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='380']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@displayName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='380']]/text">
            <assert test="count(reference)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='380']]/text/reference">
            <assert test="@value!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='380']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='INT'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <assert test="@value!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='380']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-21 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='410'])=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '410'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='410']">
            <assert test="count(entry)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='410']">
            <assert test="count(observation)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='410']">
            <assert test="@classCode='OBS'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='410']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1410']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1410'.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/text">
            <assert test="count(reference)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/text/reference">
            <assert test="@value!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='PQ'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit='g'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @unit равное 'g'.</assert>
            <assert test="count(translation)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='PQ'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit='g'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @unit равное 'g'.</assert>
            <assert test="count(translation)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value/translation">
            <assert test="@code='8'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @code равное '8'.</assert>
            <assert test="@displayName='г'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @displayName равное 'г'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@codeSystemVersion!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@value!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-22 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='420'])=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '420'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='420']">
            <assert test="count(entry)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='420']">
            <assert test="count(observation)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='420']">
            <assert test="@classCode='OBS'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='420']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1420']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1420'.</assert>
            <assert test="@displayName!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='420']]/text">
            <assert test="count(reference)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='420']]/text/reference">
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='420']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='PQ'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit='cm'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @unit равное 'cm'.</assert>
            <assert test="count(translation)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='420']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='420']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='PQ'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit='g'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @unit равное 'g'.</assert>
            <assert test="count(translation)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='420']]/value/translation">
            <assert test="@code='3'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @code равное '3'.</assert>
            <assert test="@displayName='см'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @displayName равное 'см'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@codeSystemVersion!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@value!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-23 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='521'])=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '521'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='521']">
            <assert test="count(entry)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='521']">
            <assert test="count(observation)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='521']">
            <assert test="@classCode='OBS'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='521']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1521']">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1521'.</assert>
            <assert test="@displayName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/text">
            <assert test="count(reference)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/text/reference">
            <assert test="@value!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='TS'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
<!--Отсутствует в контрольном примере-->
<!--
            <assert test="@extension!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @extension.</assert>
-->
        </rule>
    </pattern>
    <!-- У3-24 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='531'])=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '531'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='531']">
            <assert test="count(entry)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='531']">
            <assert test="count(observation)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='531']">
            <assert test="@classCode='OBS'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='531']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1531']">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1531'.</assert>
            <assert test="@displayName!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/text">
            <assert test="count(reference)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/text/reference">
            <assert test="@value!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]">
            <!--В Руководстве в 'АD' А - кириллица, D - латиница -->
            <assert test="@xsi:type='AD'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'АD'.</assert>
        </rule>
    </pattern>
    <!-- У3-25 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='541'])=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '541'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='541']">
            <assert test="count(entry)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='541']">
            <assert test="count(observation)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='541']">
            <assert test="@classCode='OBS'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='541']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/text">
            <assert test="count(reference)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/text/reference">
            <assert test="@value!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.20','1.2.643.5.1.13.2.1.1.1504.61']">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.20' или '1.2.643.5.1.13.2.1.1.1504.61'.</assert>
            <assert test="@xsi:type='CD'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-26 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='252'])=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '252'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='252']">
            <assert test="count(entry)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='252']">
            <assert test="count(observation)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='252']">
            <assert test="@classCode='OBS'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='252']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1252']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1252'.</assert>
            <assert test="@displayName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/text">
            <assert test="count(reference)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/text/reference">
            <assert test="@value!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="@xsi:type='CD'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-27 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='5001'])=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5001'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'][entry/observation/code/@code='5001']">
            <assert test="count(entry)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='5001']">
            <assert test="count(observation)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5001']">
            <assert test="@classCode='OBS'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='5001']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5001']]/text">
            <assert test="count(reference)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5001']]/text/reference">
            <assert test="@value!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5001']]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.589'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.589'.</assert>
            <assert test="@xsi:type='CD'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-28 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']">
            <assert test="count(entry/observation/code[@code='5008'])=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5008'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO'][entry/observation/code/@code='5008']">
            <assert test="count(entry)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry[observation/code/@code='5008']">
            <assert test="count(observation)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation[code/@code='5008']">
            <assert test="@classCode='OBS'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/code[@code='5008']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation[code[@code='5008']]/text">
            <assert test="count(reference)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation[code[@code='5008']]/text/reference">
            <assert test="@value!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation[code[@code='5008']]/value">
            <assert test="@xsi:type='ST'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ORGINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-29 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='551'])=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '551'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='551']">
            <assert test="count(entry)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='551']">
            <assert test="count(observation)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='551']">
            <assert test="@classCode='OBS'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='551']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/text">
            <assert test="count(reference)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/text/reference">
            <assert test="@value!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.21','1.2.643.5.1.13.2.1.1.1504.63']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.21' или '1.2.643.5.1.13.2.1.1.1504.63'.</assert>
            <assert test="@xsi:type='CD'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-30 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='571'])=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '571'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='571']">
            <assert test="count(entry)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='571']">
            <assert test="count(observation)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='571']">
            <assert test="@classCode='OBS'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='571']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/text">
            <assert test="count(reference)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/text/reference">
            <assert test="@value!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.22','1.2.643.5.1.13.2.1.1.1504.64']">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.22' или '1.2.643.5.1.13.2.1.1.1504.64'.</assert>
            <assert test="@xsi:type='CD'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-31 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='581'])=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '581'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='581']">
            <assert test="count(entry)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='581']">
            <assert test="count(observation)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='581']">
            <assert test="@classCode='OBS'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='581']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/text">
            <assert test="count(reference)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/text должен иметь 1 элемент reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/text/reference">
            <assert test="@value!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/text/reference должен иметь не пустое значение атрибута @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.23','1.2.643.5.1.13.2.1.1.1504.65']">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.23' или '1.2.643.5.1.13.2.1.1.1504.65'.</assert>
            <assert test="@xsi:type='CD'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-32 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4549'])=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '4549'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4549']">
            <assert test="count(entry)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4549']">
            <assert test="count(observation)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4549']">
            <assert test="@classCode='OBS'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4549']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4549']]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-33 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4550'])>=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь не менее 1 элемента code со значением атрибута @code равным '4550'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4550']">
            <assert test="count(entry)>=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4550']">
            <assert test="count(observation)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4550']">
            <assert test="@classCode='OBS'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4550']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4550']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4550']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-34 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4551'])=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '4551'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4551']">
            <assert test="count(entry)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4551']">
            <assert test="count(observation)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4551']">
            <assert test="@classCode='OBS'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4551']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4551']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4551']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['NA','UNK']">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-35 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4552'])>=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь не менее 1 элемента code со значением атрибута @code равным '4552'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4552']">
            <assert test="count(entry)>=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4552']">
            <assert test="count(observation)=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4552']">
            <assert test="@classCode='OBS'">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4552']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4552']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4552']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['NA','UNK']">У3-35. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-36 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4553'])>=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь не менее 1 элемента code со значением атрибута @code равным '4553'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'][entry/observation/code/@code='4553']">
            <assert test="count(entry)>=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь не менее 1 элемента entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4553']">
            <assert test="count(observation)=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry должен иметь 1 элемент observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4553']">
            <assert test="@classCode='OBS'">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4553']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1541']">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1541'.</assert>
            <assert test="@displayName!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4553']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1489','1.2.643.5.1.13.13.99.2.692']">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489' или '1.2.643.5.1.13.13.99.2.692'.</assert>
            <assert test="@xsi:type='CD'">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4553']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-36. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>    
</schema>

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="address" uri="urn:hl7-ru:address"/>
    <ns prefix="PII" uri="urn:hl7-ru:PII"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>
    <!-- У1-1 -->
    <pattern>
        <rule context="//assignedPerson[not(@nullFlavor)]">
            <assert test="count(name)=1">У1-1. Элемент //assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-1. Элемент //assignedPerson/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У1-1. Элемент //assignedPerson/name должен иметь 2 элемента given.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedPerson/name/family">
            <assert test=".!=''">У1-1. Элемент //assignedPerson/name/family должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedPerson/name/given[1]">
            <assert test=".!=''">У1-1. Элемент //assignedPerson/name/given[1] должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedPerson/name/given[2][not(@nullFlavor)]">
            <assert test=".!=''">У1-1. Элемент //assignedPerson/name/given[2] должен иметь не пустое значение.</assert>
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
        <rule context="//addr/streetAddressLine">
            <assert test=".!=''">У1-2. Элемент //addr/streetAddressLine должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-2. Элемент //addr/streetAddressLine не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">У1-2. Элемент //addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У1-2. Элемент //addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-2. Элемент //addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address/fias:AOGUID]">
            <assert test=".!=''">У1-2. Элемент //addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <report test="fias:Address/fias:AOGUID/@nullFlavor">У1-2. Элемент //addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test=".!=''">У1-2. Элемент //addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У1-3 -->
    <!-- У1-4 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(realmCode)=1">У1-4. Элемент ClinicalDocument должен иметь 1 элемент realmCode.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">У1-4. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</assert>  
            <report test="@nullFlavor">У1-4. Элемент Элемент ClinicalDocument/realmCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-5 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(typeId)=1">У1-5. Элемент ClinicalDocument должен иметь 1 элемент typeId.</assert>
        </rule>
    </pattern>
    <pattern>    
        <rule context="ClinicalDocument/typeId">
            <assert test="@extension='POCD_MT000040'">У1-5. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_MT000040'.</assert>  
            <assert test="@root='2.16.840.1.113883.1.3'">У1-5. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>   
            <report test="@nullFlavor">У1-5. Элемент Элемент ClinicalDocument/typeId не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-6 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">У1-6. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/templateId">
            <report test="@nullFlavor">У1-6. Элемент Элемент ClinicalDocument/templateId не должен иметь атрибут @nullFlavor.</report>
        </rule> 
    </pattern>    
    <pattern>
        <rule context="ClinicalDocument[code/@code='13']/templateId">
            <assert test="@root='1.2.643.5.1.13.13.14.13.9.6'">У1-6. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.14.13.9.6'.</assert>
        </rule>
    </pattern>    
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/templateId">
            <assert test="@root='1.2.643.5.1.13.13.14.353.9.6'">У1-6. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.14.353.9.6'.</assert>
        </rule>        
    </pattern>
    <!-- У1-7 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">У1-7. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
        </rule>
    </pattern>
    <pattern>        
        <rule context="ClinicalDocument/id">
            <assert test="@extension">У1-7. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>  
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-7. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>   
            <report test="@nullFlavor">У1-7. Элемент Элемент ClinicalDocument/Id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-8 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">У1-8. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
    </pattern>
    <pattern>        
        <rule context="ClinicalDocument/code">
            <assert test="@code='353'">У1-8. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '353'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-8. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@codeSystemVersion!=''">У1-8. Элемент ClinicalDocument/codeSystemVersion должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У1-8. Элемент ClinicalDocument/codeSystemName должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У1-8. Элемент ClinicalDocument/displayName должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У1-8. Элемент Элемент ClinicalDocument/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-9 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">У1-9. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>           
        </rule>
    </pattern>
    <pattern>    
        <rule context="ClinicalDocument/title">
            <assert test=".!=''">У1-9. Элемент ClinicalDocument/title должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-9. Элемент Элемент ClinicalDocument/title не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">У1-10. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>    
        <rule context="ClinicalDocument/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-10. Дата в элементе ClinicalDocument/effectiveTime должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
            <report test="@nullFlavor">У1-10. Элемент ClinicalDocument/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-11 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">У1-11. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
    </pattern>
    <pattern>    
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@code!=''">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-11. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-11. Элемент ClinicalDocument/confidentialityCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-12. Элемент ClinicalDocument/languageCode должен иметь значение атрибута @code равное 'ru-RU'.</assert>
            <report test="@nullFlavor">У1-12. Элемент ClinicalDocument/languageCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-13 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(setId)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
            <assert test="count(versionNumber)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент versionNumber.</assert>
        </rule>
    </pattern>    
    <pattern>
        <rule context="ClinicalDocument/setId">
            <assert test="@extension">У1-13. Элемент ClinicalDocument/setId должен иметь атрибут @extension.</assert>
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-13. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <report test="@nullFlavor">У1-13. Элемент ClinicalDocument/setId не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[id/@root][setId/@root]">
            <report test="matches(id/@root,setId/@root)">У1-13. Значения атрибута @root элементов ClinicalDocument/id и ClinicalDocument/setId должны различаться.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">У1-13. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У1-13. Элемент ClinicalDocument/versionNumber не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-14 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(recordTarget)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент recordTarget.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">У1-14. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=2">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 2 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(addr)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент addr.</assert>
            <assert test="count(patient)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
            <assert test="count(providerOrganization)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$') or (@root='1.2.643.5.1.13.13.12.2.77.8511.10')">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов пациентов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10" или '1.2.643.5.1.13.13.12.2.77.8511.10'.</assert>
            <assert test="@extension!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.100.3'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>    
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardTypeId)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardTypeId.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@xsi:type='CD'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@code!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemVersion!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@displayName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="identity:IdentityDoc/identity:IdentityCardTypeId/@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId не должен иметь атрибут @nullFlavor.</report>           
            <assert test="count(identity:IdentityDoc/identity:Series)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:IdentityDoc/identity:Number!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь не пустое значение.</assert>
            <report test="identity:IdentityDoc/identity:Number/@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:Number не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @value с точностью до дня.</assert>
            <report test="identity:IdentityDoc/identity:IssueDate/@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:IdentityDoc/identity:Series!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgCode!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>    
    <pattern>        
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]">
            <assert test="count(address:Type)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь 1 элемент address:Type.</assert>            
            <assert test="address:Type/@xsi:type='CD'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</assert>            
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@codeSystemName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:Type/@code!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:Type/@displayName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="address:Type/@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
            <assert test="count(birthplace)&lt;=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь не более 1 элемента birthplace.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient не должен иметь атрибут @nullFlavor.</report>
        </rule>    
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 2 элемента given.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/family">
            <assert test=".!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/family должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/given[1]">
            <assert test=".!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/given[1] должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/given[2][not(@nullFlavor)]">
            <assert test=".!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/name/given[2] должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','UNK']">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/birthTime должен иметь значение атрибута @nullFlavor равное 'ASKU' или 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-14. Дата в элементе должна быть указана с точностью до года, месяца или дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthplace">
            <assert test="count(place)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace должен иметь 1 элемент place.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthplace/place">
            <assert test="count(addr)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace/place должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace/place не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthplace/place/addr">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace/place/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=2">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 2 элемента id.</assert>
            <assert test="count(identity:Okpo)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент identity:Okpo.</assert>
            <assert test="count(name)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
            <assert test="@extension!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <assert test="@assigningAuthorityName!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] должен иметь не пустое значение атрибута @assigningAuthorityName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Okpo[not(@nullFlavor)]]">
            <assert test="identity:Okpo/@xsi:type='ST'">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Okpo должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:Okpo!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Okpo должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/name">
            <assert test=".!=''">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/name должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/name не должен иметь атрибут @nullFlavor.</report>    
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr">
            <report test="@nullFlavor">У1-14. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-15 -->            
    <pattern>         
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">У1-15. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-15. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У1-15. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor .</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='13']/author/time">
            <assert test="@nullFlavor='NI'">У1-15. Элемент ClinicalDocument/author/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/author/time[not(@nullFlavor)]">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-15. Дата в элементе ClinicalDocument/author/time должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/author/time[@nullFlavor]">
            <assert test="@nullFlavor='NI'">У1-15. Элемент ClinicalDocument/author/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>   
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">У1-15. Элемент ClinicalDocument/author/assignedAuthor author иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor не должен значени атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>  
    <pattern>      
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>   
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.700'">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">У1-15. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name">
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/assignedAuthor/code/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/representedOrganization">
            <assert test="count(id)=1">У1-15. Элемент ClinicalDocument/author/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-15. Элемент ClinicalDocument/author/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-15. Элемент ClinicalDocument/author/representedOrganization должен иметь 1 элемент addr.</assert>   
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-15. Элемент ClinicalDocument/author/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/representedOrganization/name">
            <assert test=".!=''">У1-15. Элемент ClinicalDocument/author/representedOrganization/name должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-15. Элемент ClinicalDocument/author/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-16 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(custodian)=1">У1-16. Элемент ClinicalDocument должен иметь 1 элемент custodian.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian">
            <assert test="count(assignedCustodian)=1">У1-16. Элемент ClinicalDocument/custodian должен иметь 1 элемент assignedCustodian.</assert>
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/custodian не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>    
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <assert test="count(representedCustodianOrganization)=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</assert>
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>    
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)&lt;=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization может иметь не более 1 элемента telecom.</assert>
            <assert test="count(addr)=1">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>    
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$') or (@root='1.2.643.5.1.13.13.12.2.77.8511')">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+' или '1.2.643.5.1.13.13.12.2.77.8511'.</assert>
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <assert test=".!=''">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-16. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name не должен иметь значение атрибута @nullFlavor.</report>   
        </rule>
    </pattern>
    <!-- У1-17 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(informationRecipient)=1">У1-17. Элемент ClinicalDocument должен иметь 1 элемент informationRecipient.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/informationRecipient">
            <assert test="count(intendedRecipient)=1">У1-17. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</assert>
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/informationRecipient не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>    
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient">
            <assert test="count(receivedOrganization)=1">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id">
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name">
            <assert test=".!=''">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-18 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">У1-18. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='13']/legalAuthenticator/time">
            <assert test="@nullFlavor='NI'">У1-18. Элемент ClinicalDocument/legalAuthenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/legalAuthenticator/time[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-18. Дата в элементе ClinicalDocument/legalAuthenticator/time должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/legalAuthenticator/time[@nullFlavor]">
            <assert test="@nullFlavor='NI'">У1-18. Элемент ClinicalDocument/legalAuthenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@nullFlavor='NI'">У1-18. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>  
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-18. Элемент ClinicalDocument/legalAuthenticator/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>    
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.700']">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name">
            <assert test=".!=''">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-18. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(authenticator)&lt;=1">У1-19. Элемент ClinicalDocument должен иметь не более 1 элемента authenticator.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator">
            <assert test="count(time)=1">У1-19. Элемент ClinicalDocument/authenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-19. Элемент ClinicalDocument/authenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-19. Элемент ClinicalDocument/authenticator должен иметь 1 элемент assignedEntity.</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='13']/authenticator/time">
            <assert test="@nullFlavor='NI'">У1-19. Элемент ClinicalDocument[code/@code='13']/authenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/authenticator/time[@nullFlavor]">
            <assert test="@nullFlavor='NI'">У1-19. Элемент ClinicalDocument[code/@code='13']/authenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/authenticator/time[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-19. Дата в элементе ClinicalDocument/authenticator/time должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/signatureCode">
            <assert test="@nullFlavor='NI'">У1-19. Элемент ClinicalDocument/authenticator/signatureCode должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity">
            <assert test="count(id)=2">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[1][@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-19. Элемент ClinicalDocument/legalAuthenticator/id[1] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/id[2]">
            <assert test="matches(@root,'([0-2])([.]([1-9][0-9]*|0))+')">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] должен иметь значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <assert test="@extension!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/id[2] не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.700']">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.700'.</assert>
            <assert test="@code!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/code[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/code должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/assignedPerson">
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/assignedPerson не должен иметь значение атрибута @nullFlavor.</report>
            <assert test="count(name)=1">У1-19. Элемент CClinicalDocument/authenticator/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/assignedPerson/name не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization">
            <assert test="count(id)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/authenticator/assignedEntity/representedOrganization/name">
            <assert test=".!=''">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/name должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У1-19. Элемент ClinicalDocument/authenticator/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-20 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant)&lt;=1">У1-20. Элемент ClinicalDocument должен иметь не более 1 элемента participant.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/participant не должен иметь атрибут @nullFlavor.</report>
            <assert test="@typeCode='IRCP'">У1-20. Элемент ClinicalDocument/participant должен иметь значение атрибута @typeCode равное 'IRCP'.</assert>
            <assert test="count(associatedEntity)=1">У1-20. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity не должен иметь атрибут @nullFlavor.</report>
            <assert test="@classCode=['PRS','AGNT']">1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'PRS' или 'AGNT'.</assert>
            <assert test="count(id)&lt;=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(addr)&lt;=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(associatedPerson)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент associatedPerson.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc]">
            <report test="identity:IdentityDoc/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(identity:IdentityDoc/identity:IdentityCardTypeId)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity[identity:IdentityDoc] должен иметь элемент identity:IdentityCardTypeIddentityCardTypeId.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/participant/associatedEntity[identity:IdentityDoc] должен иметь элемент identity:IdentityCardTypeId со значением атрибута @xsi:type равное 'CD'.</assert>            
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-20. Элемент ClinicalDocument/participant/associatedEntity[identity:IdentityDoc] должен иметь элемент identity:IdentityCardTypeId со значением атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@code!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:IdentityCardTypeId с не пустым значением атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:IdentityCardTypeId с не пустым значением атрибута @codeSystemVersion.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemName!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:IdentityCardTypeId с не пустым значением атрибута@codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardTypeId/@displayName!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:IdentityCardTypeId с не пустым значением атрибута @displayName.</assert>
            <report test="identity:IdentityDoc/identity:IdentityCardTypeId/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc не должен элемент identity:IdentityCardTypeId c атрибутом @nullFlavor.</report>
            <assert test="identity:IdentityDoc/count(identity:Series)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:Number со значением атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:IdentityDoc/identity:Number!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:Number должен иметь не пустое значение.</assert>
            <report test="identity:IdentityDoc/identity:Number/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc не должен элемент identity:Number c атрибутом @nullFlavor.</report>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:IssueDate со значением атрибута @xsi:type равное 'TS'.</assert>
            <assert test="matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @value с точностью до дня.</assert>
            <report test="identity:IdentityDoc/identity:IssueDate/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc не должен иметь элемент identity:IssueDate c атрибутом @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:Series со значением атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:IdentityDoc/identity:Series!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:IssueOrgName со значением атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgName!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IssueOrgName должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc должен иметь элемент identity:IssueOrgCode со значением атрибута @xsi:type равное 'ST'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgCode!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/identity:IdentityDoc/identity:IssueOrgCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/addr">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(address:Type)=1">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr должен иметь 1 элемент address:Type.</assert>
            <assert test="address:Type/@xsi:type='CD'">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@codeSystemName!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:Type/@code!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:Type/@displayName!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="address:Type/@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/addr/address:Type не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/associatedPerson">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson не должен иметь значение атрибута @nullFlavor.</report>
            <assert test="count(name)=1">У1-20. Элемент CClinicalDocument/participant/associatedEntity/associatedPerson должен иметь 1 элемент name.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity/associatedPerson/name">
            <report test="@nullFlavor">У1-20. Элемент ClinicalDocument/participant/associatedEntity/associatedPerson/name не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У1-21 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">У2-21. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
            <report test="@nullFlavor">У2-21. Элемент ClinicalDocument/component не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>  
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DOCINFO'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(code)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент text.</assert>
            <report test="@nullFlavor">У2-1. Элемент ClinicalDocument/component/structuredBody/section/component/section[code/@code='DOCINFO'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197']">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
            <assert test="@code=['DOCINFO']">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/code должен иметь значение атрибута @code равное 'DOCINFO'.</assert>
            <report test="@nullFlavor">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/code не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DEADPATINFO'])=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DEADPATINFO'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(code)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент text.</assert>
            <report test="@nullFlavor">У2-2. Элемент ClinicalDocument/component/structuredBody/section/component/section[code/@code='DEADPATINFO'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
            <assert test="@code=['DEADPATINFO']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/code должен иметь значение атрибута @code равное 'DEADPATINFO'.</assert>
            <report test="@nullFlavor">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/code не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='ABOUTDEAD'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'ABOUTDEAD'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(code)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент title.</assert>
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент text.</assert>
            <report test="@nullFlavor">У2-3. Элемент ClinicalDocument/component/structuredBody/section/component/section[code/@code='ABOUTDEAD'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
            <assert test="@code=['ABOUTDEAD']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/code должен иметь значение атрибута @code равное 'DEADPATINFO'.</assert>
            <report test="@nullFlavor">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/code не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5013'])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5013'.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5013']">
            <assert test="count(observation)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5013'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5013'] не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5013']">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[@code='5013'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[@code='5013'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[@code='5013'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[@code='5013'] должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[@code='5013'] не должен иметь значение атрибута @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='5013'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013'] должен иметь значение атрибута @code равное '5013'.</assert>
            <assert test="@displayName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5013'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5013']]/value">
            <assert test="matches(.,'^[0-9]{2}$')">У3-1. ClinicalDocument/component/structuredBody/component/section[1]/entry/observation/code[code[@code='5013']]/value должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '^[0-9]{2}$'.</assert>
            <assert test="@xsi:type='ST'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[1]/entry/observation/code[code[@code='5013']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[1]/entry/code[code[@code='5013']]/valuе не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>  
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5014'])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '5014'.</assert>
        </rule> 
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5014']">
            <assert test="count(observation)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5014'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5014'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5014']">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5014'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5014'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5014'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5014'] должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5014'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5014']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5014'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='5014'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5014'] должен иметь значение атрибута @code равное '5014'.</assert>
            <assert test="@displayName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5014'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5014'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5014'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5014'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value">
            <assert test="matches(.,'^[1|2]{1}[0-9]{8}$')">У3-2. ClinicalDocument/component/structuredBody/component/section[1]/entry/observation/code[code/@code='5014']/value должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '^[1|2]{1}[0-9]{8}$'.</assert>
            <assert test="@xsi:type='ST'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[1]/entry/observation/code[code/@code='5014']/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[1]/entry/code[code/@code='5014']/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='13']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value">
            <assert test="matches(.,'^[1]{1}')">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[1]/entry/observation[code[@code='5014']]/value должен начинаться с '1' для медицинского свидетельства о смерти.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5014']]/value">
            <assert test="matches(.,'^[2]{1}')">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[1]/entry/observation[code[@code='5014']]/value должен начинаться с '2' для документа, содержащий сведения медицинского свидетельства о смерти в бумажной форме.</assert>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='111'])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '111'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='111']">
            <assert test="count(observation)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='111'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='111'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='111']">
            <assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='111'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='111'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='111'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='111'] должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='111'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='111']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='111'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='111'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='111'] должен иметь значение атрибута @code равное '111'.</assert>
            <assert test="@displayName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='111'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='111'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='111'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='111'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='13']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='111']]/value">
            <assert test="@nullFlavor='NA'">У3-3. Элемент ClinicalDocument[code/@code='13']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='111']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='111']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='TS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='111']/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-3. Элемент ClinicalDocument[code/@code='353']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='111']]/value должен иметь значение атрибута @value с точностью до дня.</assert>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='511'])=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '511'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='511']">
            <assert test="count(observation)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='511'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='511'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='511']">
            <assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='511'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='511'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='511'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='511'] должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='511'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='511']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='511'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='511'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='511'] должен иметь значение атрибута @code равное '511'.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='511'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='511'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='511'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='511'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.19','1.2.643.5.1.13.2.1.1.1504.60']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.19' или '1.2.643.5.1.13.2.1.1.1504.60.</assert>
            <assert test="@xsi:type='CD'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='511']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5015'])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '5015'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5015']">
            <assert test="count(observation)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5015'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5015'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5015']">
            <assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5015'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5015'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5015'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5015'] должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5015'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5015']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5015'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='5015'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5015'] должен иметь значение атрибута @code равное '5015'.</assert>
            <assert test="@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5015'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5015'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5015'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5015'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']]/value">
            <assert test="@xsi:type='ST'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['3','4']]/entry/observation[code[@code='5015']]/value">
            <assert test=".!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']]/value должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['1','2']]/entry/observation[code[@code='5015']]/value">
            <assert test="@nullFlavor='NA'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5015']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='5016'])=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '5016'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5016']">
            <assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5016'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='5016'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5016']">
            <assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5016'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5016'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5016'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5016'] должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='5016'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='5016']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5016'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='5016'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5016'] должен иметь значение атрибута @code равное '5016'.</assert>
            <assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5016'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5016'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5016'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='5016'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']]/value">
            <assert test="@xsi:type='ST'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['3','4']]/entry/observation[code[@code='5016']]/value">
            <assert test=".!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']]/value должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['1','2']]/entry/observation[code[@code='5016']]/value">
            <assert test="@nullFlavor='NA'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='5016']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='112'])=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '112'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='112']">
            <assert test="count(observation)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='112'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='112'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='112']">
            <assert test="@classCode='OBS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='112'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='112'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='112'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='112'] должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='112'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='112']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='112'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='112'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='112'] должен иметь значение атрибута @code равное '112'.</assert>
            <assert test="@displayName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='112'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='112'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='112'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='112'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='112']]/value">
            <assert test="@xsi:type='TS'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='112']]/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['3','4']]/entry/observation[code[@code='112']]/value[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-7. Элемент ClinicalDocument[code/@code='353']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='112']]/value должен иметь значение атрибута @value с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['3','4']]/entry/observation[code[@code='112']]/value[@nullFlavor]">
            <assert test="@nullFlavor='NA'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['3','4']]/entry/observation[code[@code='112']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['1','2']]/entry/observation[code[@code='112']]/value">
            <assert test="@nullFlavor='NA'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[1][entry/observation[code[@code='511']]/value/@code=['1','2']]/entry/observation[code[@code='112']]/value должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>   
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='12484'])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '12484'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12484']">
            <assert test="count(observation)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12484'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12484'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12484']">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12484'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12484'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12484'] должен иметь 1 элемент code.</assert>
            <assert test="count(reference)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12484'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12484'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12484']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12484'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='12484'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12484'] должен иметь значение атрибута @code равное '12484'.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12484'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12484'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12484'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12484'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference">
            <assert test="@typeCode='REFR'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference должен иметь 1 элемент externalDocument.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference/externalDocument">
            <assert test="count(id)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference/externalDocument должен иметь 1 элемент id.</assert>
            <assert test="@classCode='DOCCLIN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOCCLIN'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference/externalDocument не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference/externalDocument/id[not(@nullFlavor)]">
            <assert test="@root='1.2.643.5.1.13.13.17.1.1'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference/externalDocument должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.17.1.1'.</assert>
            <assert test="matches(@extension,'^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$') or matches(@extension,'^[0-9]{1,3}[.][0-9]{2}[.][0-9]{4}[.][0-9]{2}[.][0-9]{7}$')">У3-8. ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12484']]/reference/externalDocument/id должен иметь синтаксически корректное значение атрибута @extension, соответствующее регулярному выражению '^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$' или "^[0-9]{1,3}[.][0-9]{2}[.][0-9]{4}[.][0-9]{2}[.][0-9]{7}$".</assert>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='12135'])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '12135'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12135']">
            <assert test="count(observation)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12135'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='12135'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12135']">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12135'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12135'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12135'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12135'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='12135'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12135']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12135'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='12135'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12135'] должен иметь значение атрибута @code равное '12135'.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12135'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12135'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12135'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='12135'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value">
            <assert test="@xsi:type='BL'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <assert test="@value!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value должен иметь атрибут @value, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='13']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value">
            <assert test="@value='true'">У3-9. Элемент ClinicalDocument[code/@code='13']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value должен иметь значение атрибута @value, равное 'true'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[code/@code='353']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value">
            <assert test="@value='false'">У3-9. Элемент ClinicalDocument[code/@code='353']/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12135']]/value должен иметь значение атрибута @value, равное 'false'.</assert>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='6082'])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент code со значением атрибута @code равным '6082'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='6082']">
            <assert test="count(observation)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='6082'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code/@code='6082'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='6082']">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='6082'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='6082'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='6082'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='6082'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='6082'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='6082']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='6082'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='6082'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='6082'] должен иметь значение атрибута @code равное '6082'.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='6082'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='6082'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='6082'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[code/@code='6082'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value">
            <assert test=".='5103835 2'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value должен иметь значение равное 5103835 2.</assert>
            <assert test="@xsi:type='ST'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='6082']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='521'])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '521'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='521']">
            <assert test="count(observation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='521'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='521'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='521']">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='521'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='521'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='521'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='521'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='521'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='521']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='521'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='521'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='521'] должен иметь значение атрибута @code равное '521'.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='521'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='521'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='521'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='521'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-11. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value должна быть указана с точностью до года, можно указывать с точностью до дня, минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
            <assert test="@xsi:type='TS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='521']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='6016'])=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '6016'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='6016']">
            <assert test="count(observation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='6016'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='6016'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='6016']">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='6016'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='6016'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='6016'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='6016'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='6016'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='6016']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='6016'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='6016'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='6016'] должен иметь значение атрибута @code равное '6016'.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='6016'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='6016'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='6016'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='6016'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="@displayName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@code!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@xsi:type='CD'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>        
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У1-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='6016']]/value[@nullFlavor] должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='531'])=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '531'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='531']">
            <assert test="count(observation)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='531'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='531'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='531']">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='531'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='531'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='531'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='531'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='531'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='531']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='531'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='531'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='531'] должен иметь значение атрибута @code равное '531'.</assert>
            <assert test="@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='531'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='531'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='531'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='531'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='AD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value должен иметь значение атрибута @xsi:type равное 'AD'.</assert>
            <assert test="count(streetAddressLine)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)] должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)] должен иметь 1 элемент address:stateCode.</assert>
            <assert test="count(postalCode)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)] должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)] должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[@nullFlavor] должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/streetAddressLine">
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/streetAddressLine не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)][address:stateCode]">
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.99.2.206']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="address:stateCode/@code!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/address:stateCode должен иметь значение атрибута @code равное '531'.</assert>
            <assert test="address:stateCode/@displayName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/address:stateCode должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/address:stateCode должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/address:stateCode должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="address:stateCode/@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/address:stateCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)][fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/fias:Address[not(@nullFlavor)] должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/fias:Address[not(@nullFlavor)] должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)][fias:Address/fias:AOGUID]">
            <assert test="fias:Address/fias:AOGUID!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <report test="fias:Address/fias:AOGUID/@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)][fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='531']]/value[not(@nullFlavor)]/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='252'])=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '252'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='252']">
            <assert test="count(observation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='252'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='252'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='252']">
            <assert test="@classCode='OBS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='252'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='252'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='252'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='252'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='252'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='252']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='252'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='252'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='252'] должен иметь значение атрибута @code равное '252'.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='252'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='252'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='252'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='252'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)]">
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)] должен иметь атрибут @codeSystem, равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="@code!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)] должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@xsi:type='CD'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[not(@nullFlavor)] должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='252']]/value[@nullFlavor] должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <!-- У3-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='541'])=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '541'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='541']">
            <assert test="count(observation)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='541'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section/entry/observation не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='541']">
            <assert test="@classCode='OBS'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='541'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='541'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='541'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='541'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='541'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='541']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='541'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='541'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='541'] должен иметь значение атрибута @code равное '541'.</assert>
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='541'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='541'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='541'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='541'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value">
            <assert test="@displayName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.20','1.2.643.5.1.13.2.1.1.1504.61']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь атрибут @codeSystem, равное '1.2.643.5.1.13.13.99.2.20' или '1.2.643.5.1.13.2.1.1.1504.61'.</assert>
            <assert test="@code!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@xsi:type='CD'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='541']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='612'])=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '612'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='612']">
            <assert test="count(observation)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='612'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='612'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='612']">
            <assert test="@classCode='OBS'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='612'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='612'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='612'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='612'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='612'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='612']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='612'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='612'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='612'] должен иметь значение атрибута @code равное '612'.</assert>
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='612'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='612'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='612'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='612'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value[not(@nullFlavor)]">
            <assert test="@displayName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.18','1.2.643.5.1.13.2.1.1.1504.68']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь атрибут @codeSystem, равное '1.2.643.5.1.13.13.99.2.18' или '1.2.643.5.1.13.2.1.1.1504.68'.</assert>
            <assert test="@code!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@xsi:type='CD'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['NA']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='612']]/value[@nullFlavor] должен иметь значение атрибута @nullFlavor равное 'NA'</assert>
        </rule>
    </pattern>
    <!-- У3-17 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='410'])=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '410'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='410']">
            <assert test="count(observation)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='410'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='410'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='410']">
            <assert test="@classCode='OBS'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='410'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='410'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='410'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='410'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='410'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='410']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='410'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='410'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='410'] должен иметь значение атрибута @code равное '410'.</assert>
            <assert test="@displayName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='410'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='410'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='410'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='410'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value[not(@nullFlavor)]">
            <assert test="@unit!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value должен иметь атрибут @unit, представленый не пустым значением.</assert>
            <assert test="@xsi:type='PQ'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['NA']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='410']]/value[@nullFlavor] должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-18 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='370'])=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '370'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='370']">
            <assert test="count(observation)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='370'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry[observation/code/@code='370'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='370']">
            <assert test="@classCode='OBS'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='370'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='370'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='370'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='370'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='370'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='370']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='370'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='370'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='370'] должен иметь значение атрибута @code равное '370'.</assert>
            <assert test="@displayName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='370'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='370'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='370'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='370'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value[not(@nullFlavor)]">
            <assert test="@value!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value должен иметь атрибут @value, представленый не пустым значением.</assert>
            <assert test="@xsi:type='INT'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['NA']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='370']]/value[@nullFlavor] должен иметь значение атрибута @nullFlavor равное 'NA'</assert>
        </rule>
    </pattern>
    <!-- У3-19 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code=['260','261']])=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '260', '261'.</assert>
        </rule>
    </pattern>  
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code=('260','261')]">
            <assert test="@classCode='OBS'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261'] должен иметь 1 элемент value.</assert>
            <assert test="count(subject)&lt;=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261'] должен иметь не более 1 элемента subject.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=('260','261')]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code=['260','261']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261'] должен иметь значение атрибута @code равное '260','261'.</assert>
            <assert test="@displayName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.15','1.2.643.5.1.13.2.1.1.1504.6201']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.15' или '1.2.643.5.1.13.2.1.1.1504.6201'.</assert>
            <assert test="@xsi:type='CD'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/value должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/value должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/value должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/value должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject">
            <assert test="count(relatedSubject)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261']/subject должен иметь 1 элемент relatedSubject.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261']/subject не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject">
            <assert test="@classCode='PRS'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261']/subject/relatedSubject должен иметь значение атрибута @classCode равное 'PRS'.</assert>
            <assert test="count(code)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261']/subject/relatedSubject должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261']/subject/relatedSubject должен иметь 1 элемент addr.</assert>
            <assert test="count(subject)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261']/subject/relatedSubject должен иметь 1 элемент subject.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='260','261']/subject/relatedSubject не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/subject/relatedSubject/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@code='1'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/subject/relatedSubject/code должен иметь значение атрибута @code равное '1'.</assert>
            <assert test="@displayName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/subject/relatedSubject/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/subject/relatedSubject/code должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='260','261']/subject/relatedSubject/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/addr[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/code должен иметь атрибут @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject">
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubjec/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubjec/subject должен иметь 1 элемент birthTime.</assert>
            </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject/name">
            <assert test="count(family)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubjec/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubjec/subject/name должен иметь 2 элемента given.</assert>           
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject/name[@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/name должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/family">
            <assert test=".!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/name/family должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[1]">
            <assert test=".!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/name/given[1] должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2][not(@nullFlavor)]">
            <assert test=".!=''">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/name/given[2] должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2][@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2] должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @value с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('260','261')]]/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='260','261']]/subject/relatedSubject/subject/birthTime[@nullFlavor]должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-20 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code=['270','271']])=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '260', '261'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code=('270','271')]">
            <assert test="@classCode='OBS'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271'] должен иметь 1 элемент value.</assert>
            <assert test="count(subject)&lt;=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271'] должен иметь не более 1 элемента subject.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=('270','271')]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code=['270','271']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271'] должен иметь значение атрибута @code равное '270','271'.</assert>
            <assert test="@displayName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.16','1.2.643.5.1.13.2.1.1.1504.62']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.16' или '1.2.643.5.1.13.2.1.1.1504.62'.</assert>
            <assert test="@xsi:type='CD'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/value должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/value должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/value должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/value должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject">
            <assert test="count(relatedSubject)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271']/subject должен иметь 1 элемент relatedSubject.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271']/subject не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject">
            <assert test="@classCode='PRS'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271']/subject/relatedSubject должен иметь значение атрибута @classCode равное 'PRS'.</assert>
            <assert test="count(code)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271']/subject/relatedSubject должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271']/subject/relatedSubject должен иметь 1 элемент addr.</assert>
            <assert test="count(subject)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271']/subject/relatedSubject должен иметь 1 элемент subject.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='270','271']/subject/relatedSubject не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.14'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/subject/relatedSubject/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14'.</assert>
            <assert test="@code='1'">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/subject/relatedSubject/code должен иметь значение атрибута @code равное '1'.</assert>
            <assert test="@displayName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/subject/relatedSubject/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/subject/relatedSubject/code должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='270','271']/subject/relatedSubject/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/addr[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/code должен иметь атрибут @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject">
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubjec/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubjec/subject должен иметь 1 элемент birthTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject/name">
            <assert test="count(family)=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubjec/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubjec/subject/name должен иметь 2 элемента given.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject/name[@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/name должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/family">
            <assert test=".!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/name/family должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[1]">
            <assert test=".!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/name/given[1] должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2][not(@nullFlavor)]">
            <assert test=".!=''">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/name/given[2] должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2][@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2] должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @value с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('270','271')]]/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='270','271']]/subject/relatedSubject/subject/birthTime[@nullFlavor]должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-21 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code=['280','281']])=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '260', '261'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code=('280','281')]">
            <assert test="@classCode='OBS'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280','281'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280','281'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280','281'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280','281'] должен иметь 1 элемент value.</assert>
            <assert test="count(subject)&lt;=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280','281'] должен иметь не более 1 элемента subject.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280','281'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code=('280','281')]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code=['280','281']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281'] должен иметь значение атрибута @code равное '280','281'.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1038'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1038'.</assert>
            <assert test="@xsi:type='CD'">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281']/value должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281']/value должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281']/value должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='280','281']/value должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject">
            <assert test="count(relatedSubject)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280','281']/subject должен иметь 1 элемент relatedSubject.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='280','281']/subject не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject">
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubjec/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubjec/subject должен иметь 1 элемент birthTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject/name">
            <assert test="count(family)=1">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubjec/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubjec/subject/name должен иметь 2 элемента given.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject/name[@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/family">
            <assert test=".!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/family должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[1]">
            <assert test=".!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/given[1] должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2][not(@nullFlavor)]">
            <assert test=".!=''">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/given[2] должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2][@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2] должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @value с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code=('280','281')]]/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-21. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/birthTime[@nullFlavor]должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-22 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']">
            <assert test="count(entry/observation/code[@code='5010'])=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO'] должен иметь 1 элемент code со значением атрибута @code равным '260', '261'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010']">
            <assert test="@classCode='OBS'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010'] должен иметь 1 элемент value.</assert>
            <assert test="count(subject)&lt;=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010'] должен иметь не более 1 элемента subject.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[@code='5010']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='5010'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='5010'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='5010'] должен иметь значение атрибута @code равное '5010'.</assert>
            <assert test="@displayName!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='5010'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='5010'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='5010'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation/code[code/@code='5010'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='ST'">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/value[@nullFlavor] должен иметь атрибут @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject">
            <assert test="count(relatedSubject)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code/@code='5010']/subject должен иметь 1 элемент relatedSubject.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject">
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(name)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubjec/subject должен иметь 1 элемент name.</assert>
            <assert test="count(birthTime)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubjec/subject должен иметь 1 элемент birthTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name">
            <assert test="count(family)=1">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubjec/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=2">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubjec/subject/name должен иметь 2 элемента given.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name[@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name[not(@nullFlavor)]/family">
            <assert test=".!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/family должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[1]">
            <assert test=".!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/given[1] должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/given[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2][not(@nullFlavor)]">
            <assert test=".!=''">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name/given[2] должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2][@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/name[not(@nullFlavor)]/given[2] должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/birthTime должен иметь значение атрибута @value с точностью до дня.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='5010']]/subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor=['UNK']">У3-22. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DEADPATINFO']/entry/observation[code[@code='280','281']]/subject/relatedSubject/subject/birthTime[@nullFlavor]должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
    <!-- У3-23 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='551'])=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '551'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='551']">
            <assert test="count(observation)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='551'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='551'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='551']">
            <assert test="@classCode='OBS'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='551'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='551'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='551'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='551'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='551'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='551']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='551'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='551'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='551'] должен иметь значение атрибута @code равное '551'.</assert>
            <assert test="@displayName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='551'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='551'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='551'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='551'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value">
            <assert test="@xsi:type='CD'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.21','1.2.643.5.1.13.2.1.1.1504.63']">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.21' или '1.2.643.5.1.13.2.1.1.1504.63'.</assert>
            <assert test="@code!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь атрибут @code, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='551']]/value должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='551']/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-24 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='12479'])&lt;=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь не более 1 элемента code со значением атрибута @code равным '12479'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='12479']">
            <assert test="count(observation)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='12479'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='12479'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='12479']">
            <assert test="@classCode='OBS'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='12479'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='12479'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='12479'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='12479'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='12479'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='12479']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='12479'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='12479'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='12479'] должен иметь значение атрибута @code равное '12479'.</assert>
            <assert test="@displayName!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='12479'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='12479'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='12479'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='12479'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='12479']]/value">
            <assert test="@value=['true','false']">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='12479']]/value должен иметь значение атрибут @value равное 'true' или 'false'.</assert>
            <assert test="@xsi:type='BL'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='12479']]/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='12479']/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-25 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='6019'])=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '6019'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='6019']">
            <assert test="count(observation)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='6019'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='6019'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='6019']">
            <assert test="@classCode='OBS'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='6019'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='6019'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='6019'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='6019'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='6019'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='6019']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='6019'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='6019'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='6019'] должен иметь значение атрибута @code равное '6019'.</assert>
            <assert test="@displayName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='6019'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='6019'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='6019'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='6019'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-25. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value должна быть указана с точностью до года, можно указывать с точностью до дня, минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
            <assert test="@xsi:type='TS'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value[@nullFlavor]">
           <assert test="@nullFlavor=['NA']">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='6019']]/value[@nullFlavor] должен иметь значение атрибута @nullFlavor равное 'NA'</assert>
        </rule>
    </pattern>
    <!-- У3-26 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='571'])=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '571'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='571']">
            <assert test="count(observation)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='571'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='571'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='571']">
            <assert test="@classCode='OBS'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='571'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='571'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='571'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='571'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='571'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='571']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='571'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь значение атрибута @code равное '571'.</assert>
            <assert test="@displayName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.22','1.2.643.5.1.13.2.1.1.1504.64']">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.22' или '1.2.643.5.1.13.2.1.1.1504.64'.</assert>
            <assert test="@xsi:type='CD'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='571']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='571'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-27 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='581'])=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '581'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='581']">
            <assert test="count(observation)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='581'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='581'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='581']">
            <assert test="@classCode='OBS'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='581'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='581'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='581'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='581'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='581'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='581']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='581'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь значение атрибута @code равное '581'.</assert>
            <assert test="@displayName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.23','1.2.643.5.1.13.2.1.1.1504.65']">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.23' или '1.2.643.5.1.13.2.1.1.1504.65'.</assert>
            <assert test="@xsi:type='CD'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='581']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='581'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-28 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4030'])=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '4030'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4030']">
            <assert test="count(observation)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4030'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4030'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030']">
            <assert test="@classCode='OBS'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030'] должен иметь 1 элемент reference.</assert>
            <assert test="count(effectiveTime)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030'] должен иметь 1 элемент reference.</assert>
            <assert test="count(value)=1">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4030'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4030']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='4030'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь значение атрибута @code равное '4030'.</assert>
            <assert test="@displayName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030']/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/effectiveTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-28. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4030']/effectiveTime должна быть указана с любой возможной точностью, можно указывать с точностью до минут. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-28. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4030']]/effectiveTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <!-- У3-29 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4035'])=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '4035'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4035']">
            <assert test="count(observation)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4035'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4035'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035']">
            <assert test="@classCode='OBS'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035'] должен иметь 1 элемент reference.</assert>
            <assert test="count(effectiveTime)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035'] должен иметь 1 элемент reference.</assert>
            <assert test="count(value)=1">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4035'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4035']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='4035'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь значение атрибута @code равное '4035'.</assert>
            <assert test="@displayName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035'] должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/effectiveTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-29. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4035']/effectiveTime должна быть указана с любой возможной точностью, можно указывать с точностью до минут. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-29. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4035']]/effectiveTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <!-- У3-30 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4040'])=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '4040'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4040']">
            <assert test="count(observation)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4040'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4040'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040']">
            <assert test="@classCode='OBS'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040'] должен иметь 1 элемент reference.</assert>
            <assert test="count(effectiveTime)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040'] должен иметь 1 элемент reference.</assert>
            <assert test="count(value)=1">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4040'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4040']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='4040'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь значение атрибута @code равное '4040'.</assert>
            <assert test="@displayName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489'.</assert>
            <assert test="@xsi:type='CD'">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor!=''">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/effectiveTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-30. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4040']/effectiveTime должна быть указана с любой возможной точностью, можно указывать с точностью до минут. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor">У3-30. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4040']]/effectiveTime не должен иметь атрибут @nullFlavor.</assert>
        </rule>
    </pattern>
    <!-- У3-31 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='4045'])=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '4045'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4045']">
            <assert test="count(observation)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4045'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4045'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045']">
            <assert test="@classCode='OBS'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045'] должен иметь 1 элемент reference.</assert>
            <assert test="count(effectiveTime)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045'] должен иметь 1 элемент reference.</assert>
            <assert test="count(value)=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4045'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4045']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='4045'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь значение атрибута @code равное '4045'.</assert>
            <assert test="@displayName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.692'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.692'.</assert>
            <assert test="@xsi:type='CD'">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045'] должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/effectiveTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-31. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4045']/effectiveTime должна быть указана с любой возможной точностью, можно указывать с точностью до минут. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4045']]/effectiveTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <!-- У3-32 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4050']">
            <assert test="count(observation)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4050'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='4050'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050']">
            <assert test="@classCode='OBS'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050'] должен иметь 1 элемент reference.</assert>
            <assert test="count(effectiveTime)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050'] должен иметь 1 элемент reference.</assert>
            <assert test="count(value)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050'] должен иметь 1 элемент reference.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='4050']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='4050'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь значение атрибута @code равное '4050'.</assert>
            <assert test="@displayName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1489' or @codeSystem='1.2.643.5.1.13.13.99.2.692'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1489' или '1.2.643.5.1.13.13.99.2.692'.</assert>
            <assert test="@xsi:type='CD'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/value[@nullFlavor]">            
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050'] должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/effectiveTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-32. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050']/effectiveTime должна быть указана с любой возможной точностью, можно указывать с точностью до минут. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/effectiveTime должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship">
            <assert test="@typeCode='CAUS'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship должен иметь значение атрибута @typeCode, равное 'CAUS'.</assert>
            <assert test="count(procedure)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050']/entryRelationship должен иметь 1 элемент procedure.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure">
            <assert test="@classCode='PROC'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь значение атрибута @classCode, равное 'PROC'.</assert>
            <assert test="@moodCode='EVN'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь значение атрибута @moodCode, равное 'EVN'.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure не должен иметь атрибут @nullFlavor.</report>
            <assert test="count(code)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050']/entryRelationship/procedure должен иметь 1 элемент code.</assert>
            <assert test="count(text)&lt;=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь не более 1 элемента text.</assert>
            <assert test="count(statusCode)=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='4050']/entryRelationship/procedure должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)&lt;=1">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure должен иметь не более 1 элемента effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1070'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050']/entryRelationship/procedure/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070'.</assert>
            <assert test="@code!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050']/entryRelationship/procedure/code должен иметь значение атрибута @code равное '4050'.</assert>
            <assert test="@displayName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050']/entryRelationship/procedure/code должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050']/entryRelationship/procedure/code должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050']/entryRelationship/procedure/code должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050']/entryRelationship/procedure/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/text">
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/text не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/statusCode">
            <assert test="@code='completed'">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='4050']/entryRelationship/procedure/statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-32. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/effectiveTime должна быть указана с любой возможной точностью, можно указывать с точностью до минут. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
            <report test="@nullFlavor">У3-32. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='4050']]/entryRelationship/procedure/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-33 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='601'])=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '601'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='601']">
            <assert test="count(observation)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='601'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='601'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='601']">
            <assert test="@classCode='OBS'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='601'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='601'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='601'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=[1,2]">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='601'] должен иметь 1 или 2 элементов value.</assert>
            <report test="@nullFlavor">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='601'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='601']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='601'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь значение атрибута @code равное '601'.</assert>
            <assert test="@displayName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.24','1.2.643.5.1.13.2.1.1.1504.66']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.24' или '1.2.643.5.1.13.2.1.1.1504.66'.</assert>
            <assert test="@xsi:type='CD'">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='601']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['NA']">У3-33. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='601'] должен иметь значение атрибута @nullFlavor равное 'NA'</assert>
        </rule>
    </pattern>
    <!-- У3-34 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']">
            <assert test="count(entry/observation/code[@code='591'])=1">У3-31. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD'] должен иметь 1 элемент code со значением атрибута @code равным '591'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='591']">
            <assert test="count(observation)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='591'] должен иметь 1 элемент observation.</assert>
            <report test="@nullFlavor">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry[observation/code/@code='591'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='591']">
            <assert test="@classCode='OBS'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='591'] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='591'] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='591'] должен иметь 1 элемент code.</assert>
            <assert test="count(value)=[1,2]">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='591'] должен иметь 1 или 2 элементов value.</assert>
            <report test="@nullFlavor">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code/@code='591'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[@code='591']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@code='591'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь значение атрибута @code равное '591'.</assert>
            <assert test="@displayName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
            <report test="@nullFlavor">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.25','1.2.643.5.1.13.2.1.1.1504.67']">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.25' или '1.2.643.5.1.13.2.1.1.1504.67'.</assert>
            <assert test="@xsi:type='CD'">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь значение атрибута @code, представленый не пустым значением.</assert>
            <assert test="@displayName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь атрибут @displayName, представленый не пустым значением.</assert>
            <assert test="@codeSystemVersion!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь атрибут @codeSystemVersion, представленый не пустым значением.</assert>
            <assert test="@codeSystemName!=''">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь атрибут @codeSystemName, представленый не пустым значением.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation[code[@code='591']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['NA']">У3-34. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ABOUTDEAD']/entry/observation/code[code/@code='591'] должен иметь значение атрибута @nullFlavor равное 'NA'</assert>
        </rule>
    </pattern>
    <!-- Проверка корректного заполнения поля для указания кода подразделения, выдавшего документ, удостоверяющий личность (12.10.2023) -->
    <pattern>
        <rule context="//identity:IdentityDoc[not(@nullFlavor)][identity:IdentityCardTypeId[@code='1']]/identity:IssueOrgCode[not(@nullFlavor)]">
            <assert test="matches(.,'^[0-9]{3}[-]{1}[0-9]{3}$')">Элемент //identity:IssueOrgCode должен иметь синтаксически корректное значение, соответствующее коду подразделения: '^[0-9]{3}[-]{1}[0-9]{3}$'.</assert>
        </rule>
    </pattern>
</schema>
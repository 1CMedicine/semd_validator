<!-- Схематрон для СЭМД "Медицинское свидетельство о рождении" (Редакция 4) -->
<!-- Разработано в соответствии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/3849 -->


<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
<ns prefix="f103" uri="urn:f103"/>
<ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
<ns prefix="fias" uri="urn:fias"/>
<ns prefix="address" uri="urn:hl7-ru:address"/>
	<!-- У1-1 -->
	<pattern>	
		<rule context="//assignedPerson">
			<assert test="count(name)=1">У1-1. Элемент //assignedPerson должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="//assignedPerson/name">
			<assert test="count(family)=1">У1-1. Элемент //assignedPerson/name должен иметь 1 элемент family.</assert>
			<assert test="count(given)=[1,2]">У1-1. Элемент //assignedPerson/name должен иметь 1 или 2 элемента given.</assert>
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="//assignedPerson/family">
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="//assignedPerson/given">
            <report test="@nullFlavor">У1-1. Элемент //assignedPerson/name/given не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
	<!-- У1-2 -->
	<pattern>
		<rule context="//providerOrganization | //representedOrganization | //representedCustodianOrganization">
			<assert test="count(name)=1">У1-2. Элементы //providerOrganization, //representedOrganization, //representedCustodianOrganization должны иметь 1 элемент name.</assert>
			<assert test="count(addr)=1">У1-2. Элементы //providerOrganization, //representedOrganization, //representedCustodianOrganization должны иметь 1 элемент addr.</assert>
		</rule>
        <rule context="//providerOrganization/name | //representedOrganization/name | //representedCustodianOrganization/name">
            <report test="@nullFlavor">У1-2. Элементы //providerOrganization/name, //representedOrganization/name, //representedCustodianOrganization/name не должны иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У1-3 -->
	<pattern>
		<rule context="//addr[not(@nullFlavor)]">
			<assert test="count(streetAddressLine)=1">У1-3. Элемент //addr должен иметь 1 элемент streetAddressLine.</assert>
		</rule>
      	<rule context="//addr/streetAddressLine">
			<report test="@nullFlavor">У1-3. Элемент //addr/streetAddressLine не должен иметь атрибут @nullFlavor.</report>
		</rule>
	</pattern>
	<!-- У1-4 -->
	<pattern>
		<rule context="//addr[not(@nullFlavor)]">
            <assert test="address:stateCode/@xsi:type='CD'">У1-4. Элемент //addr/address:stateCode должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="count(address:stateCode)=1">У1-4. Элемент //addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-4. Элемент //addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">У1-4. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">У1-4. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">У1-4. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="address:stateCode/@nullFlavor">У1-4. Элемент //addr/address:stateCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
  	<!-- У1-5 -->
	<pattern>
		<rule context="//addr[not(@nullFlavor)]">
			<assert test="count(postalCode)=1">У1-5. Элемент //addr должtн иметь 1 элемент postalCode.</assert>
		</rule>
	</pattern>
  	<!-- У1-6 -->
	<pattern>
		<rule context="//addr[not(@nullFlavor)]">
			<assert test="count(fias:Address)=1">У1-6. Элемент //addr должен иметь 1 элемент fias:Address.</assert>
		</rule>
	</pattern>
  	<!-- У1-7 -->
	<pattern>
		<rule context="//addr[fias:Address/fias:AOGUID]">
			<assert test="count(fias:Address/fias:AOGUID)=1">У1-7. Элемент //addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
			<report test="fias:Address/fias:AOGUID/@nullFlavor">У1-7. Элемент //addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor.</report>
		</rule>
	</pattern>
  	<!-- У1-8 -->
	<pattern>
		<rule context="//addr[fias:Address/fias:HOUSEGUID]">
			<assert test="count(fias:Address/fias:HOUSEGUID)=1">У1-8. Элемент //addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
		</rule>
	</pattern>
	<!-- У1-9 -->
	<pattern>
		<rule context="ClinicalDocument/effectiveTime | ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-9. Дата в элементах должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
            <report test="@nullFlavor">У1-9. Элементы ClinicalDocument/effectiveTime, ClinicalDocument/author/time, ClinicalDocument/legalAuthenticator/time не должны иметь атрибут @nullFlavor.</report>
		</rule>
	</pattern>
	<!-- У1-10 -->
	<pattern>
		 <rule context="//telecom">
			<assert test="matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$') or @nullFlavor">У1-10. Все элементы //telecom со схемой "tel:" должны соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра должна остаться в номере телефона после удаления всех разделителей.</assert>
		</rule>
	</pattern>
	<!-- У1-11 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(realmCode)=1">У1-11. Элемент ClinicalDocument должен иметь 1 элемент realmCode.</assert>
		</rule>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">У1-11. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</assert>
        </rule>
	</pattern>
	<!-- У1-12 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(typeId)=1">У1-12. Элемент ClinicalDocument должен иметь 1 элемент typeId.</assert>
		</rule>
        <rule context="ClinicalDocument/typeId">
            <assert test="@extension='POCD_MT000040'">У1-12. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_MT000040'.</assert>
            <assert test="@root='2.16.840.1.113883.1.3'">У1-12. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>
        </rule>
	</pattern>
	<!-- У1-13 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(templateId)=1">У1-13. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
		</rule>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root='1.2.643.5.1.13.2.7.5.1.33.9.4'">У1-13. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.7.5.1.33.9.4'.</assert>
        </rule>
	</pattern>
	<!-- У1-14 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(id)=1">У1-14. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
		</rule>
        <rule context="ClinicalDocument/id">
            <assert test="@extension">У1-14. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
            <assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-14. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
	</pattern>
	<!-- У1-15 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(code)=1">У1-15. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
		</rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code='33'">У1-15. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '33'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.13.99.2.195','1.2.643.5.1.13.2.1.1.646']">У1-15. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195', '1.2.643.5.1.13.2.1.1.646' или '1.2.643.5.1.13.13.11.1522'.</assert>
        </rule>
	</pattern>
	<!-- У1-16 -->	
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(title)=1">У1-16. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
		</rule>
        <rule context="ClinicalDocument/title">
        <assert test="normalize-space(text())!=''">У1-16. Элемент ClinicalDocument/title должен содержать не пустое наполнение.</assert>
        </rule>
    </pattern>
	<!-- У1-17 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(effectiveTime)=1">У1-17. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
		</rule>
        <rule context="ClinicalDocument/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-17. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</assert>
            <report test="@nullFlavor">У1-17. Элемент ClinicalDocument/effectiveTime не должен содержать @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У1-18 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(confidentialityCode)=1">У1-18. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
		</rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1116','1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9']">У1-18. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1116', '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9' или '2.16.840.1.113883.2.35.10.9'.</assert>
            <assert test="@code!=''">У1-18. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-18. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-18. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
	</pattern>
	<!-- У1-19 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(languageCode)=1">У1-19. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
		</rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">У1-19. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное 'ru-RU'.</assert>
        </rule>
    </pattern>
	<!-- У1-20 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(id)=1">У1-20. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
			<assert test="count(setId)=1">У1-20. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
			<assert test="count(versionNumber)=1">У1-20. Элемент ClinicalDocument должен иметь 1 элемент versionNumber.</assert>
	        </rule>
	        <rule context="ClinicalDocument/id">
	            <assert test="@root">У1-20. Элемент ClinicalDocument/id должен иметь атрибут @root.</assert>
	            <assert test="@extension">У1-20. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
	            <assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-20. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
	        </rule>
		<rule context="ClinicalDocument/setId">
			<assert test="@root">У1-20. Элемент ClinicalDocument/setId должен иметь атрибут @root.</assert>
			<assert test="@extension">У1-20. Элемент ClinicalDocument/setId должен иметь атрибут @extension.</assert>
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-20. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument[id/@root][setId/@root]">
			<report test="matches(id/@root,setId/@root)">У1-13. Значения атрибута @root элементов ClinicalDocument/id и ClinicalDocument/setId должны различаться.</report>
		</rule>
		<rule context="ClinicalDocument/versionNumber">
			<assert test="@value!=''">У1-20. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</assert>
		</rule>
	</pattern>
	<!-- У1-21 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget">
			<assert test="count(patientRole)=1">У1-21. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
		</rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент id.</assert>
            <assert test="count(patient)=1">У1-21. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
        </rule>
    </pattern>
	<!-- У1-22 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient">
			<assert test="count(name)=1">У1-22. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
		</rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У1-22. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</assert>
        </rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/name[@nullFlavor]">
			<assert test="@nullFlavor=['ASKU','NA']">У1-22. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь значение атрибута @nullFlavor равное 'ASKU' или 'NA'.</assert>
		</rule>
	</pattern>
	<!-- У1-23 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole">
			<assert test="count(id)=1">У1-23. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент id.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/id">
			<assert test="@root">У1-23. Элемент ClinicalDocument/recordTarget/patientRole/id должен иметь атрибут @root.</assert>
			<assert test="@extension">У1-23. Элемент ClinicalDocument/recordTarget/patientRole/id должен иметь атрибут @extension.</assert>
	 		<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-23. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
            <report test="@nullFlavor">У1-23. Элемент ClinicalDocument/recordTarget/patientRole/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У1-24 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole">
			<assert test="count(patient)=1">У1-24. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
		</rule>
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
			<assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-26. Дата в элементе ClinicalDocument/recordTarget/patientRole/patient/birthTime должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
		</rule>
	</pattern>
	<!-- У1-27 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient">
			<assert test="count(birthplace)=1">У1-27. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthplace.</assert>
		</rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthplace">
            <assert test="count(place)=1">У1-27. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthplace должен иметь 1 элемент place.</assert>
        </rule>
	</pattern>
	<!-- У1-28 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole">
			<assert test="count(providerOrganization)=1">У1-28. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
		</rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=1">У1-28. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-28. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У1-28. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr">
            <assert test="count(address:stateCode)=1">У1-28. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="count(streetAddressLine)=1">У1-28. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr должен иметь 1 элемент streetAddressLine.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id">
            <assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-28. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
	<!-- У1-29 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@nullFlavor)]">
			<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$')">У1-29. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь синтаксически корректное значение атрибута @root, заполненное значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
		</rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-29. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь значение атрибута@nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
	<!-- У1-30 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(author)=1">У1-30. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
		</rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">У1-30. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">У1-30. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor.</assert>
        </rule>
        <rule context="ClinicalDocument/author/time">
            <report test="@nullFlavor">У1-30. Элемент ClinicalDocument/author/time не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <report test="@nullFlavor">У1-30. Элемент ClinicalDocument/author/assignedAuthor не должен иметь атрибут @nullFlavor.</report>
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
			<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-32. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
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
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
			<assert test="count(id)=1">У1-35. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
			<assert test="count(name)=1">У1-35. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
			<assert test="count(addr)=1">У1-35. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент addr.</assert>
		</rule>
	</pattern>
	<!-- У1-36 -->
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@nullFlavor)]">
			<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-36. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
		</rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-36. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
	<!-- У1-37 -->
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian">
			<assert test="count(representedCustodianOrganization)=1">У1-37. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</assert>
		</rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">У1-37. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-37. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)=1">У1-37. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент telecom.</assert>
            <assert test="count(addr)=1">У1-37. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <report test="@nullFlavor">У1-37. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
	<!-- У1-38 -->
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@nullFlavor)]">
	 		<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-38. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
		</rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-38. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
	<!-- У1-39 -->
	<pattern>
		<rule context="ClinicalDocument/informationRecipient/intendedRecipient">
			<assert test="count(receivedOrganization)=1">У1-39. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
		</rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">У1-39. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">У1-39. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id">
            <report test="@nullFlavor">У1-39. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name">
            <report test="@nullFlavor">У1-39. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
	<!-- У1-40 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(legalAuthenticator)=1">У1-40. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
		</rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">У1-40. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">У1-40. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity)=1">У1-40. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=[1,2]">У1-40. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(code)=1">У1-40. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(assignedPerson)=1">У1-40. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент assignedEntity.</assert>
            <assert test="count(addr)&lt;=1">У1-40. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента addr.</assert>
            <assert test="count(representedOrganization)&lt;=1">У1-40. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь не более 1 элемента representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/time">
            <report test="@nullFlavor">У1-40. Элемент ClinicalDocument/legalAuthenticator/time не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/signatureCode">
            <report test="@nullFlavor">У1-40. Элемент ClinicalDocument/legalAuthenticator/signatureCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id">
            <report test="@nullFlavor">У1-40. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <report test="@nullFlavor">У1-40. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
	<!-- У1-41 -->
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/signatureCode">
			<assert test="@code='S'">У1-41. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @code равное 'S'.</assert>
		</rule>
	</pattern>
	<!-- У1-42 -->
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
			<assert test="@extension">У1-42. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь атрибут @extension</assert>
			<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-42. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] должен иметь синтаксически корректное значение атрибута @root, быть сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
		</rule>
	</pattern>
	<!-- У1-43 -->
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
			<assert test="@extension">У1-43. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь атрибут @extension.</assert>
			<assert test="@root='1.2.643.100.3'">У1-43. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
		</rule>
	</pattern>
	<!-- У1-44 -->
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
			<assert test="count(code)=1">У1-44. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь 1 элемент code.</assert>
		</rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-44. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">У1-44. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-44. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-44. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
	</pattern>
	<!-- У1-45 -->
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
			<assert test="count(id)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент id.</assert>
			<assert test="count(name)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент name.</assert>
			<assert test="count(addr)=1">У1-45. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь 1 элемент addr.</assert>
		</rule>
	</pattern>
	<!-- У1-46 -->
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@nullFlavor)]">
	 		<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-46. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен быть заполнен значением из справочника "Реестр медицинских организаций Российской Федерации" (идентификатор справочника 1.2.643.5.1.13.13.11.1461).</assert>
		</rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У1-46. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
	<!-- У1-47 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(participant[@typeCode='IRCP'])">У1-47. Элемент ClinicalDocument должен иметь 1 элемент participant[@typeCode='IRCP'].</assert>
		</rule>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']">
            <assert test="count(time)=1">У1-47. Элемент ClinicalDocument/participant[@typeCode='IRCP'] должен иметь 1 элемент time.</assert>
            <assert test="count(associatedEntity)=1">У1-47. Элемент ClinicalDocument/participant[@typeCode='IRCP'] должен иметь 1 элемент associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/time">
            <report test="@nullFlavor">У1-47. Элемент Элемент ClinicalDocument/participant[@typeCode='IRCP']/time не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity">
            <assert test="@classCode=['PRS','AGNT']">У1-47. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity должен иметь значение атрибута @classCode равное 'PRS' или 'AGNT'.</assert>
        </rule>
    </pattern>
	<!-- У1-48 -->
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity">
			<assert test="count(id)=1">У1-48. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity должен иметь 1 элемент id.</assert>
			<assert test="count(f103:IdentityDoc)=1">У1-48. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity должен иметь 1 элемент f103:IdentityDoc.</assert>
			<assert test="count(code)=1">У1-48. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity должен иметь 1 элемент code.</assert>
			<assert test="count(associatedPerson)=1">У1-48. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity должен иметь 1 элемент associatedPerson.</assert>
		</rule>
	</pattern>
	<!-- У1-49 -->
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id[not(@nullFlavor)]">
			<assert test="@root='1.2.643.100.3'">У1-49. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="matches(@extension, '[0-9]{3}[-\s]{0,1}[0-9]{3}[-\s]{0,1}[0-9]{3}[-\s]{0,1}[0-9]{2}')">У1-49. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id должен иметь атрибут @extension, содержащий СНИЛС.</assert>
        </rule>
    </pattern>
    <!-- У1-50 -->
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity">
            <assert test="count(f103:IdentityDoc)=1">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity должен иметь элемент f103:IdentityDoc.</assert>
		</rule>
    </pattern>
    <pattern>       
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(f103:IdentityDoc/f103:IdentityCardTypeId)=1">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc должен иметь 1 элемент f103:IdentityCardTypeId.</assert>
            <assert test="count(f103:IdentityDoc/f103:Series)=1">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc должен иметь 1 элемент f103:Series.</assert>
            <assert test="count(f103:IdentityDoc/f103:Number)=1">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc должен иметь 1 элемент f103:Number.</assert>
            <assert test="count(f103:IdentityDoc/f103:IssueOrgName)=1">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc должен иметь 1 элемент f103:IssueOrgName.</assert>
            <assert test="count(f103:IdentityDoc/f103:IssueOrgCode)=1">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc должен иметь 1 элемент f103:IssueOrgCode.</assert>
            <assert test="count(f103:IdentityDoc/f103:IssueDate)=1">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc должен иметь 1 элемент f103:IssueDate.</assert>
        </rule>
    </pattern>
    <pattern> 
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]">
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@xsi:type='CD'">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@codeSystem='1.2.643.5.1.13.13.99.2.48'">У1-4. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48'.</assert>
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@code!=''">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь не пустое значение атрибута @code.</assert>
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@codeSystemName!=''">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@displayName!=''">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="f103:IdentityDoc/f103:IdentityCardTypeId/@nullFlavor">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Number]">
            <report test="f103:IdentityDoc/f103:Number/@nullFlavor">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IssueDate]">
            <report test="f103:IdentityDoc/f103:IssueDate/@nullFlavor">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IssueDate не должен иметь атрибут @nullFlavor.</report>
            <assert test="f103:IdentityDoc/f103:IssueDate/@xsi:type='TS'">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="f103:IdentityDoc/f103:IssueDate/@value">У1-50. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IssueDate должен иметь атрибут @value.</assert>
        </rule>
    </pattern>
	<!-- У1-51 -->
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity">
			<assert test="count(code)=1">У1-51. Элемент ClinicalDocument/participant[@typeCode=”IRCP”]/associatedEntity должен иметь 1 элемент code.</assert>
		</rule>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У1-51. Элемент ClinicalDocument/participant[@typeCode=”IRCP”]/associatedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
            <assert test="@code!=''">У1-51. Элемент ClinicalDocument/participant[@typeCode=”IRCP”]/associatedEntity/code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У1-51. Элемент ClinicalDocument/participant[@typeCode=”IRCP”]/associatedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У1-51. Элемент ClinicalDocument/participant[@typeCode=”IRCP”]/associatedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У1-51. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У1-52 -->
	<pattern>
		<rule context="ClinicalDocument/component">
			<assert test="count(structuredBody)=1">У1-52. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
		</rule>
	</pattern>
	<!-- У2-1 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody">
			<assert test="count(component/section/code[@code='DOCINFO'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'DOCINFO'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
			<assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
			<assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
			<assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент text.</assert>
		</rule>
	</pattern>
	<!-- У2-2 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody">
			<assert test="count(component/section/code[@code='MOTHINFO'])=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'MOTHINFO'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
			<assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
			<assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
			<assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент text.</assert>
		</rule>
	</pattern>
	<!-- У2-3 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody">
			<assert test="count(component/section/code[@code='LABODELI'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'LABODELI'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']">
			<assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
			<assert test="count(title)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
			<assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент text.</assert>
		</rule>
	</pattern>
	<!-- У2-4 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody">
			<assert test="count(component/section/code[@code='NBINFO'])=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component со значением атрибута section/code/@code равным 'NBINFO'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']">
			<assert test="code/@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' или '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
			<assert test="count(title)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section должен иметь 1 элемент title.</assert>
			<assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент text.</assert>
		</rule>
	</pattern>
	<!-- У3-1 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='4120'])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '4120'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='4120']">
            <assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4120']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='4120']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='4120'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4120']]/value">
            <assert test="@xsi:type='ST'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4120']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4120']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-2 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry/observation/code[@code='4121'])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '4121'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code/@code='4121']">
            <assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4121']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='4121']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='4121'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4121']]/value">
            <assert test="matches(.,'^[1]{1}[0-9]{9}$')">Согласно НПА для электронного медицинского документа требуется указывать первую цифру номера документа равную '1', а количество знаков в номере должно состоять из десяти разрядов.</assert>
            <assert test="@xsi:type='ST'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4121']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4121']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-3 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(subject/relatedSubject/code[@code='1'])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент code со значением атрибута @code равным '1'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[code/@code='1']">
            <assert test="@classCode='PRS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь значение атрибута @classCode равное 'PRS'.</assert>
            <assert test="count(f103:id)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент f103:id.</assert>
            <assert test="count(f103:IdentityDoc)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[code[@code='1']] должен иметь 1 элемент f103:IdentityDoc.</assert>
            <assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент code.</assert>
            <assert test="count(addr)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент addr.</assert>
            <assert test="count(subject)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент subject.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/code[@code='1']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
        </rule>
	</pattern>
	<!-- У3-4 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject">
			<assert test="count(f103:id)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент f103:id.</assert>
		</rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id[not(@nullFlavor)]]">
            <assert test="matches(f103:id/@extension, '[0-9]{3}[-\s]{0,1}[0-9]{3}[-\s]{0,1}[0-9]{3}[-\s]{0,1}[0-9]{2}')">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:id должен иметь атрибут @extension, содержащий СНИЛС..</assert>
            <assert test="f103:id/@root='1.2.643.100.3'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
        </rule>
    </pattern>
	<!-- У3-5 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject">
			<assert test="count(f103:IdentityDoc)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject должен иметь 1 элемент f103:IdentityDoc.</assert>
		</rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(f103:IdentityDoc/f103:IdentityCardTypeId)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc должен иметь 1 элемент f103:IdentityCardTypeId.</assert>
            <assert test="count(f103:IdentityDoc/f103:Series)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc должен иметь 1 элемент f103:Series.</assert>
            <assert test="count(f103:IdentityDoc/f103:Number)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc должен иметь 1 элемент f103:Number.</assert>
            <assert test="count(f103:IdentityDoc/f103:IssueOrgName)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc должен иметь 1 элемент f103:IssueOrgName.</assert>
            <assert test="count(f103:IdentityDoc/f103:IssueOrgCode)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc должен иметь 1 элемент f103:IssueOrgCode.</assert>
            <assert test="count(f103:IdentityDoc/f103:IssueDate)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc должен иметь 1 элемент f103:IssueDate.</assert>
		</rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]">
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@xsi:type='CD'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@code!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь не пустое значение атрибута @code.</assert>
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@codeSystemName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@displayName!=''">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="f103:IdentityDoc/f103:IdentityCardTypeId/@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Number]">
            <report test="f103:IdentityDoc/f103:Number/@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IssueDate]">
            <assert test="f103:IdentityDoc/f103:IssueDate/@xsi:type='TS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <assert test="f103:IdentityDoc/f103:IssueDate/@value">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь атрибут @value.</assert>
        </rule>
	</pattern>
  	<!-- У3-6 -->
	<pattern>
		<rule context="//subject/relatedSubject">
			<assert test="count(addr)=1">У3-6. Элемент //subject/relatedSubject должен иметь 1 элемент addr.</assert>
		</rule>
		<rule context="//subject/relatedSubject/addr[@nullFlavor]">
			<assert test="@nullFlavor='UNK'">У3-6. Элемент //subject/relatedSubject/addr должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
		</rule>
	</pattern>
	<!-- У3-7 -->
	<pattern>
		<rule context="//subject/relatedSubject/subject">
			<assert test="count(name)=1">У3-7. Элемент //subject/relatedSubject/subject должен иметь 1 элемент name.</assert>
			<assert test="count(birthTime)=1">У3-7. Элемент //subject/relatedSubject/subject должен иметь 1 элемент birthTime.</assert>
		</rule>
        <rule context="//subject/relatedSubject/subject/name[not(@nullFlavor)]">
            <assert test="count(family)=1">У3-7. Элемент //subject/relatedSubject/subject/name должен иметь 1 элемент family.</assert>
            <assert test="count(given)=[1,2]">У3-7. Элемент //subject/relatedSubject/subject/name должен иметь 1 или 2 элемента family.</assert>
        </rule>
        <rule context="//subject/relatedSubject/subject/name[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-7. Элемент //subject/relatedSubject/subject/name должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
        <rule context="//subject/relatedSubject/subject/name/family">
            <report test="@nullFlavor">У3-7. Элемент //subject/relatedSubject/subject/name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="//subject/relatedSubject/subject/name/given">
            <report test="@nullFlavor">У3-7. Элемент //subject/relatedSubject/subject/name/given не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="//subject/relatedSubject/subject/birthTime[not(@nullFlavor)]">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-7. Дата в элементе //subject/relatedSubject/subject/birthTime должна быть указана с точностью до дня.</assert>
        </rule>
        <rule context="//subject/relatedSubject/subject/birthTime[@nullFlavor]">
            <assert test="@nullFlavor='UNK'">У3-7. Элемент //subject/relatedSubject/subject/birthTime должен иметь значение атрибута @nullFlavor равное 'UNK'.</assert>
        </rule>
    </pattern>
	<!-- У3-8 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='250'])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '250'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='250']">
            <assert test="@classCode='OBS'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='250']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='250'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value">
            <assert test="@xsi:type='CD'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="@code!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='250']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-9 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='260'])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '260'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='260']">
            <assert test="@classCode='OBS'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='260']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='260'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']]/value">
            <assert test="@xsi:type='CD'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.15','1.2.643.5.1.13.2.1.1.1504.6201']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.15' или '1.2.643.5.1.13.2.1.1.1504.6201'.</assert>
            <assert test="@code!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='260']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-10 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='270'])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '270'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='270']">
            <assert test="@classCode='OBS'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='270']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='270'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']]/value">
            <assert test="@xsi:type='CD'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.16','1.2.643.5.1.13.2.1.1.1504.62']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.16' или '1.2.643.5.1.13.2.1.1.1504.62'.</assert>
            <assert test="@code!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='270']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-11 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='280'])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '280'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='280']">
            <assert test="@classCode='OBS'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='280']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='280'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']]/value">
            <assert test="@xsi:type='CD'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.17','1.2.643.5.1.13.2.1.1.1504.42']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.17' или '1.2.643.5.1.13.2.1.1.1504.42'.</assert>
            <assert test="@code!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']]/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']]/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='280']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-12 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']">
            <assert test="count(entry/observation/code[@code='5010'])=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '5010'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code/@code='5010']">
            <assert test="@classCode='OBS'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='5010']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='5010']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation/code[@code='5010'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='5010']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='ST'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='5010']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='5010']]/value[@nullFlavor]">
            <assert test="@nullFlavor=['ASKU','NA','UNK']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation[code[@code='5010']]/value должен иметь значение атрибута @nullFlavor равное 'ASKU', 'NA' или 'UNK'.</assert>
        </rule>
    </pattern>
	<!-- У3-13 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']">
            <assert test="count(entry/observation/code[@code='290'])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь не более 1 элемента code со значением атрибута @code равным '290'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code/@code='290']">
            <assert test="@classCode='OBS'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code[@code='290']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/code[@code='290']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation/code[@code='290'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code[@code='290']]/value">
            <assert test="@xsi:type='PQ'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code[@code='290']]/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@unit='нед'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code[@code='290']]/value должен иметь значение атрибута @unit равное 'нед'.</assert>
            <assert test="@value!=''">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code[@code='290']]/value должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/observation[code[@code='290']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-14 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']">
			<assert test="count(entry/act)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI'] должен иметь 1 элемент entry/act.</assert>
		</rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/act">
            <assert test="@classCode='ACT'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/act должен иметь 1 элемент code.</assert>
            <assert test="count(performer/assignedEntity)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/act должен иметь 1 элемент performer/assignedEntity.</assert>
            <assert test="count(participant)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/act должен иметь 1 элемент participant.</assert>
            <assert test="count(entryRelationship)=2">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LABODELI']/entry/act должен иметь 2 элемента entryRelationship.</assert>
        </rule>
	</pattern>
	<!-- У3-15 -->
	<pattern>
		<rule context="//act/code">
			<assert test="@code=['B01.001.009','B02.001.002','B01.001.006']">У3-15. Элемент //act/code должен иметь значение атрибута @code равное 'B01.001.009', 'B02.001.002' или 'B01.001.006'.</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1070'">У3-15. Элемент //act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070'.</assert>
			<assert test="@codeSystemName!=''">У3-15. Элемент //act/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="@displayName!=''">У3-15. Элемент //act/code должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
	</pattern>
	<!-- У3-16 -->
	<pattern>
		<rule context="//act/performer/assignedEntity">
			<assert test="count(id)=1">У3-16. Элемент //act/performer/assignedEntity должен иметь 1 элемент id.</assert>
			<assert test="count(code)=1">У3-16. Элемент //act/performer/assignedEntity должен иметь 1 элемент code.</assert>
			<assert test="count(assignedPerson)=1">У3-16. Элемент //act/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
		</rule>
	</pattern>
	<!-- У3-17 -->
	<pattern>
		<rule context="//act/performer/assignedEntity/id">
			<assert test="@extension">У3-16. Элемент //act/performer/assignedEntity/id должен иметь атрибут @extension.</assert>
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У3-17. Элемент //act/performer/assignedEntity/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+', сформированным по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70.</assert>
		</rule>
	</pattern>
	<!-- У3-18 -->
	<pattern>
		<rule context="//act/performer/assignedEntity/code">
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.32','1.2.643.5.1.13.2.1.1.1504.45']">У3-18. Элемент //act/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '“1.2.643.5.1.13.13.99.2.32' или '1.2.643.5.1.13.2.1.1.1504.45'.</assert>
			<assert test="@code!=''">У3-18. Элемент //act/performer/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@codeSystemName!=''">У3-18. Элемент //act/performer/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="@displayName!=''">У3-18. Элемент //act/performer/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
	</pattern>
	<!-- У3-19 -->
	<pattern>
		<rule context="//act/participant">
			<assert test="@typeCode='LOC'">У3-19. Элемент //act/participant должен иметь значение атрибута @typeCode равное 'LOC'.</assert>
			<assert test="count(participantRole)=1">У3-19. Элемент //act/participant должен иметь 1 элемент participantRole.</assert>
		</rule>
        <rule context="//act/participant/participantRole">
            <assert test="count(code)=1">У3-19. Элемент //act/participant/participantRole должен иметь 1 элемент code.</assert>
        </rule>
	</pattern>
	<!-- У3-20 -->
	<pattern>
		<rule context="//act/participant/participantRole/code">
			<assert test="@code!=''">У3-20. Элемент //act/participant/participantRole/code должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.30','1.2.643.5.1.13.2.1.1.1504.43']">У3-20. Элемент //act/participant/participantRole/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.30' или '1.2.643.5.1.13.2.1.1.1504.43'.</assert>
			<assert test="@codeSystemName!=''">У3-20. Элемент //act/participantparticipantRole/participantRole/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="@displayName!=''">У3-20. Элемент //act/participant/participantRole/code должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
	</pattern>
	<!-- У3-21 -->
	<pattern>
		<rule context="//act/entryRelationship[1]">
            <assert test="count(observation/code[@code='300'])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '260'.</assert>
            <assert test="@typeCode='COMP'">У3-21. Элемент act/entryRelationship[1] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
			<assert test="count(observation)=1">У3-21. Элемент act/entryRelationship[1] должен иметь 1 элемент observation.</assert>
		</rule>
        <rule context="//act/entryRelationship[1]/observation[code/@code='300']">
            <assert test="count(code)=1">У3-21. Элемент act/entryRelationship[1]/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-21. Элемент act/entryRelationship[1]/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="//act/entryRelationship[1]/observation/code[@code='300']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-21. Элемент act/entryRelationship[1]/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-21. Элемент act/entryRelationship[1]/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="//act/entryRelationship[1]/observation[code/@code='300']/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.31','1.2.643.5.1.13.2.1.1.1504.44']">У3-21. Элемент act/entryRelationship[1]/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.31' или '1.2.643.5.1.13.2.1.1.1504.44'.</assert>
            <assert test="@xsi:type='CD'">У3-21. Элемент act/entryRelationship[1]/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-21. Элемент act/entryRelationship[1]/observation/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-21. Элемент act/entryRelationship[1]/observation/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-21. Элемент act/entryRelationship[1]/observation/value должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-21. Элемент act/entryRelationship[1]/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-22 -->
	<pattern>
		<rule context="//act/entryRelationship[2]">
            <assert test="count(observation/code[@code='310'])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '260'.</assert>
            <assert test="@typeCode='COMP'">У3-22. Элемент act/entryRelationship[2] должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
			<assert test="count(observation)=1">У3-22. Элемент act/entryRelationship[2] должен иметь 1 элемент observation.</assert>
		</rule>
        <rule context="//act/entryRelationship[2]/observation[code/@code='310']">
            <assert test="count(code)=1">У3-22. Элемент act/entryRelationship[2]/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-22. Элемент act/entryRelationship[2]/observation должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="//act/entryRelationship[2]/observation/code[@code='310']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-22. Элемент act/entryRelationship[2]/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-22. Элемент act/entryRelationship[2]/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
            <rule context="//act/entryRelationship[2]/observation[code/@code='310']/value">
           <assert test="@xsi:type='INT'">У3-22. Элемент act/entryRelationship[2]/observation/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
           <assert test="@value!=''">У3-22. Элемент act/entryRelationship[2]/observation/value должен иметь не пустое значение атрибута @value.</assert>
           <report test="@nullFlavor">У3-22. Элемент act/entryRelationship[2]/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-23 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']">
            <assert test="count(entry/observation/code[@code='370'])=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '370'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code/@code='370']">
            <assert test="@classCode='OBS'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='370']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='370']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='370'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='370']]/value">
            <assert test="@xsi:type='INT'">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='370']]/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <assert test="@value!=''">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='370']]/value должен иметь значение не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-23. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='370']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-24 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']">
            <assert test="count(entry/observation/code[@code='380'])=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '380'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code/@code='380']">
            <assert test="@classCode='OBS'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='380']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='380']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='380'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='380']]/value">
            <assert test="@xsi:type='INT'">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='380']]/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <assert test="@value!=''">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='380']]/value должен иметь значение не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">У3-24. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='380']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-25 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']">
            <assert test="count(entry/observation/code[@code='350'])=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '350'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code/@code='350']">
            <assert test="@classCode='OBS'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='350']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='350']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='350'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='350']]/value">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='350']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="@xsi:type='CD'">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='350']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@code!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='350']]/value должен иметь значение не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='350']]/value должен иметь значение не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='350']]/value должен иметь значение не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">У3-25. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='350']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-26 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']">
            <assert test="count(entry/observation/code[@code='410'])=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '410'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code/@code='410']">
            <assert test="@classCode='OBS'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='410']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='410']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='410'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='410']]/value">
            <assert test="@xsi:type='PQ'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='410']]/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='410']]/value должен иметь значение не пустое значение атрибута @value.</assert>
            <assert test="@unit='г'">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='410']]/value должен иметь значение атрибута @unit равное 'г'.</assert>
            <report test="@nullFlavor">У3-26. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='410']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
	<!-- У3-27 -->
	<pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']">
            <assert test="count(entry/observation/code[@code='420'])=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code со значением атрибута @code равным '420'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code/@code='420']">
            <assert test="@classCode='OBS'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='420']] должен иметь 1 элемент value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='420']">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
            <report test="@nullFlavor">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation/code[@code='420'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='420']]/value">
            <assert test="@xsi:type='PQ'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='420']]/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="@value!=''">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='420']]/value должен иметь значение не пустое значение атрибута @value.</assert>
            <assert test="@unit='см'">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='420']]/value должен иметь значение атрибута @unit равное 'см'.</assert>
            <report test="@nullFlavor">У3-27. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='NBINFO']/entry/observation[code[@code='420']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
	</pattern>
</schema>
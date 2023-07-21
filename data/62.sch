<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
<ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
<ns prefix="identity" uri="urn:hl7-ru:identity"/>
<ns prefix="fias" uri="urn:hl7-ru:fias"/>
	<!-- У1-1 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient | //assignedPerson">
			<assert test="count(name)=1">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient и //assignedPerson должны иметь один элемент name.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/name | //assignedPerson/name">
			<assert test="count(family)=1">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient/name и //assignedPerson/name должны иметь один элемент family.</assert>
			<assert test="count(given)=1 or count(given)=2">У1-1. Элементы ClinicalDocument/recordTarget/patientRole/patient/name и //assignedPerson/name должны иметь один или два элемента given.</assert>
		</rule>
	</pattern>
	<!-- У1-2 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient | //assignedPerson">
			<assert test="count(name)=1">У1-2. Элементы ClinicalDocument/recordTarget/patientRole/patient и //assignedPerson должны иметь один элемент name.</assert>
		</rule>
		<rule context="//assignedAuthor | //assignedPerson/name">
			<assert test="count(addr)&lt;=1">У1-2. Элементы //assignedAuthor и //assignedPerson/name должны иметь не более одного элемента addr.</assert>
			<assert test="count(telecom)>=0">У1-2. Элементы //assignedAuthor и //assignedPerson/name должны иметь не менее одного элемента telecom.</assert>
		</rule>
	</pattern>
	<!-- У1-3 -->
	<pattern>
		<rule context="//providerOrganization | //assignedCustodian/representedCustodianOrganization | //scopingOrganization">
			<assert test="count(name)=1">У1-3. Элементы //providerOrganization, //assignedCustodian/representedCustodianOrganization и //scopingOrganization должны иметь один элемент name.</assert>
			<assert test="count(addr)=1">У1-3. Элементы //providerOrganization, //assignedCustodian/representedCustodianOrganization и //scopingOrganization должны иметь один элемент addr.</assert>
			<assert test="count(telecom)>=1">У1-3. Элементы //providerOrganization, //assignedCustodian/representedCustodianOrganization и //scopingOrganization должны иметь не менее одного элемента telecom.</assert>
		</rule>
	</pattern>
	<!-- У1-4 -->
	<pattern>
		<rule context="//addr[not(@nullFlavor)]">
			<assert test="count(streetAddressLine)=1">У1-4. Элемент //addr должен иметь 1 элемент streetAddressLine.</assert>
			<assert test="count(state)=1">У1-4. Элемент //addr должен иметь 1 элемент state.</assert>
			<assert test="count(fias:Address)=1">У1-4. Элемент //addr должен иметь 1 элемент fias:Address.</assert>
			<assert test="fias:Address/@nullFlavor or count(fias:Address/fias:AOGUID)=1">У1-4. Элемент //addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
			<report test="fias:Address/fias:AOGUID/@nullFlavor">У1-4. Элемент //addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor.</report>
			<assert test="fias:Address/@nullFlavor or count(fias:Address/fias:HOUSEGUID)=1">У1-4. Элемент //addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
		</rule>
	</pattern>
	<!-- У1-5 -->
	<pattern>
		<rule context="ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time | ClinicalDocument/effectiveTime">
			<assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У1-5. Дата в элементах ClinicalDocument/author/time, ClinicalDocument/legalAuthenticator/time, ClinicalDocument/effectiveTime должна быть указана с точностью до дня, можно указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
		</rule>
	</pattern>
	<!-- У1-6 -->
	<pattern>
		 <rule context="//telecom">
			<assert test="@nullFlavor or matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')">У1-6. Все элементы //telecom со схемой "tel:" должны соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра ДОЛЖНА остаться в номере телефона после удаления всех разделителей.</assert>
		</rule>
	</pattern>
	<!-- У1-7 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(realmCode)=1">У1-7. Элемент ClinicalDocument должен иметь один элемент realmCode.</assert>
			<assert test="realmCode/@code='RU'">У1-7. Элемент ClinicalDocument/realmCode должен значение атрибута @code равное 'RU'.</assert>
		</rule>
	</pattern>
	<!-- У1-8 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(typeId)=1">У1-8. Элемент ClinicalDocument должен иметь один элемент typeId.</assert>
			<assert test="typeId/@extension='POCD_MT000040'">У1-8. Элемент ClinicalDocument/typeId должен значение атрибута @extension равное 'POCD_MT000040'.</assert>
			<assert test="typeId/@root='2.16.840.1.113883.1.3'">У1-8. Элемент ClinicalDocument/typeId должен значение атрибута @extension равное '2.16.840.1.113883.1.3'.</assert>
		</rule>
	</pattern>
	<!-- У1-9 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(templateId)=1">У1-9. Элемент ClinicalDocument должен иметь один элемент templateId.</assert>
			<assert test="templateId/@root='1.2.643.5.1.13.13.14.86.3'">У1-9. Элемент ClinicalDocument/templateId должен значение атрибута @root равное '1.2.643.5.1.13.13.14.86.3'.</assert>
		</rule>
	</pattern>
	<!-- У1-10 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(id)=1">У1-10. Элемент ClinicalDocument должен иметь один элемент id.</assert>
		</rule>
		<rule context="ClinicalDocument/id">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-10. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
			<assert test="@extension">У1-10. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
		</rule>
	</pattern>
	<!-- У1-11 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(code)=1">У1-11. Элемент ClinicalDocument должен иметь один элемент code.</assert>
		</rule>
		<rule context="ClinicalDocument/code">
			<assert test="@code='86'">У1-11. Элемент ClinicalDocument/code должен значение атрибута @code равное '86'.</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1522'">У1-11. Элемент ClinicalDocument/code должен значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522'.</assert>
		</rule>
	</pattern>
	<!-- У1-12 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(title)=1">У1-12. Элемент ClinicalDocument должен иметь один элемент title.</assert>
			<assert test="title!=''">У1-12. Элемент ClinicalDocument/title должен иметь не пустое наполнение.</assert>
		</rule>
	</pattern>
	<!-- У1-13 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(effectiveTime)=1">У1-13. Элемент ClinicalDocument должен иметь один элемент effectiveTime.</assert>
			<report test="effectiveTime/@nullFlavor">У1-13. Элемент ClinicalDocument/effectiveTime не должен иметь атрибут @nullFlavor.</report>
		</rule>
	</pattern>
	<!-- У1-14 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(confidentialityCode)=1">У1-14. Элемент ClinicalDocument должен иметь один элемент confidentialityCode.</assert>
			<assert test="confidentialityCode/@codeSystem='1.2.643.5.1.13.13.99.2.285'">У1-14. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285'.</assert>
			<assert test="confidentialityCode/@code!=''">У1-14. Элемент ClinicalDocument/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="confidentialityCode/@codeSystemName!=''">У1-14. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="confidentialityCode/@displayName!=''">У1-14. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
	</pattern>
	<!-- У1-15 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(languageCode)=1">У1-15. Элемент ClinicalDocument должен иметь один элемент languageCode.</assert>
			<assert test="languageCode/@code='ru-RU'">У1-15. Элемент ClinicalDocument/languageCode должен значение атрибута @code равное 'ru-RU'.</assert>
		</rule>
	</pattern>
	<!-- У1-16 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(id)=1 and setId and versionNumber">У1-16. Элемент ClinicalDocument должен иметь один элемент id, представленный вместе с элементами setId и versionNumber.</assert>
		</rule>
		<rule context="ClinicalDocument/id">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-14. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
			<assert test="@extension">У1-16. Элемент ClinicalDocument/id должен иметь атрибут @extension.</assert>
		</rule>
	</pattern>
	<!-- У1-17 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(setId)=1 and id and versionNumber">У1-17. Элемент ClinicalDocument должен иметь один элемент setId, представленный вместе с элементами id и versionNumber.</assert>
			<assert test="id/@root!=setId/@root">У1-17. Элементы ClinicalDocument/id и ClinicalDocument/setId должны иметь различные значения атрибута @root.</assert>
		</rule>
		<rule context="ClinicalDocument/setId">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-14. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
			<assert test="@extension">У1-17. Элемент ClinicalDocument/setId должен иметь атрибут @extension.</assert>
		</rule>
	</pattern>
	<!-- У1-18 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(versionNumber)=1 and setId and id">У1-18. Элемент ClinicalDocument должен иметь один элемент versionNumber, представленный вместе с элементами setId и id.</assert>
			<assert test="versionNumber/@value!=''">У1-18. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</assert>
		</rule>
	</pattern>
	<!-- У1-19 -->
	<pattern>
		<rule context="ClinicalDocument/recordTarget">
			<assert test="count(patientRole)=1">У1-19. Элемент ClinicalDocument/recordTarget должен иметь один элемент patientRole.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole">
			<assert test="count(id)=2">У1-19. Элемент ClinicalDocument/recordTarget/patientRole должен иметь два элемента id.</assert>
			<assert test="count(identity:IdentityDoc)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole должен иметь один элемент identity:IdentityDoc.</assert>
			<assert test="count(addr)&lt;=2">У1-19. Элемент ClinicalDocument/recordTarget/patientRole должен иметь до двух элементов addr.</assert>
			<assert test="count(patient)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole должен иметь один элемент patient.</assert>
			<assert test="count(providerOrganization)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole должен иметь один элемент providerOrganization.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.10$')">У1-19. Первый элемент ClinicalDocument/recordTarget/patientRole/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+', и сформирован по правилу формирования идентификаторов пациентов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10.</assert>
			<assert test="@extension">У1-19. Первый элемент ClinicalDocument/recordTarget/patientRole/id должен иметь атрибут @extension.</assert>
			<report test="@nullFlavor">У1-19. Первый элемент ClinicalDocument/recordTarget/patientRole/id не должен иметь атрибут @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/id[2]">
			<assert test="@root='1.2.643.100.3'">У1-19. Второй элемент ClinicalDocument/recordTarget/patientRole/id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
			<assert test="@extension">У1-19. Второй элемент ClinicalDocument/recordTarget/patientRole/id должен иметь атрибут @extension.</assert>
			<report test="@nullFlavor">У1-19. Второй элемент ClinicalDocument/recordTarget/patientRole/id не должен иметь атрибут @nullFlavor.</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole">
			<assert test="count(identity:IdentityDoc)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole должен иметь один элемент identity:IdentityDoc.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or count(identity:IdentityDoc/identity:IdentityCardTypeId)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь один элемент identity:IdentityCardTypeId.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IdentityCardTypeId/@xsi:type='CD'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystem='1.2.643.5.1.13.13.99.2.48'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48'.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IdentityCardTypeId/@code!=''">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @code.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IdentityCardTypeId/@codeSystemName!=''">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IdentityCardTypeId/@displayName!=''">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId должен иметь не пустое значение атрибута @displayName.</assert>
			<report test="identity:IdentityDoc/identity:IdentityCardTypeId/@nullFlavor">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId не должен иметь атрибут @nullFlavor.</report>
			<assert test="identity:IdentityDoc/@nullFlavor or count(identity:IdentityDoc/identity:Series)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь один элемент identity:Series.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:Series/@xsi:type='ST'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or count(identity:IdentityDoc/identity:Number)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь один элемент identity:Number.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:Number/@xsi:type='ST'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
			<report test="identity:IdentityDoc/identity:Number/@nullFlavor">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number не должен иметь атрибут @nullFlavor.</report>
			<assert test="identity:IdentityDoc/@nullFlavor or count(identity:IdentityDoc/identity:IssueOrgName)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь один элемент identity:IssueOrgName.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or count(identity:IdentityDoc/identity:IssueOrgCode)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь один элемент identity:IssueOrgCode.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or count(identity:IdentityDoc/identity:IssueDate)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc должен иметь один элемент identity:IssueDate.</assert>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
			<report test="identity:IdentityDoc/identity:IssueDate/@nullFlavor">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor.</report>
			<assert test="identity:IdentityDoc/@nullFlavor or identity:IdentityDoc/identity:IssueDate/@value">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate должен иметь атрибут @value.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr[1]">
			<assert test="@nullFlavor or @use='H' or (not(../addr[2]) and @use='HP')">У1-19. Первый элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь значение атрибута @use равное 'H' или, при отсутствии второго элемента, равное 'HP'.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr[2]">
			<assert test="@nullFlavor or @use='HP'">У1-19. Второй элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь значение атрибута @use равное 'HP'.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient">
			<assert test="count(name)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь один элемент name.</assert>
			<assert test="count(administrativeGenderCode)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь один элемент administrativeGenderCode.</assert>
			<assert test="count(birthTime)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь один элемент birthTime.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1040'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040'.</assert>
			<assert test="@code!=''">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="@codeSystemName!=''">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="@displayName!=''">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
			<assert test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У1-19. Дата в элементе ClinicalDocument/recordTarget/patientRole/patient/birthTime должна быть указана с точностью до года, можно указывать с точностью до дня.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
			<report test="@nullFlavor">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization не должен иметь атрибут @nullFlavor.</report>
			<assert test="count(id)=2">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь два элемента id.</assert>
			<assert test="count(identity:Ogrn)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь один элемент identity:Ogrn.</assert>
			<assert test="count(identity:Ogrnip)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь один элемент identity:Ogrnip.</assert>
			<assert test="count(identity:Okpo)&lt;=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь не более одного элемента identity:Okpo.</assert>
			<assert test="count(name)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь один элемент name.</assert>
			<assert test="count(telecom)>=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь не менее 1 элемента telecom.</assert>
			<assert test="count(addr)=1">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь один элемент addr.</assert>
			<assert test="not(identity:Okpo) or identity:Okpo/@nullFlavor or identity:Okpo/@xsi:type='ST'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Okpo должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Ogrnip!='']">
			<assert test="identity:Ogrn/@nullFlavor='NA'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn должен иметь значение атрибута @nullFlavor равное 'NA' если элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/providerOrganization/identity:Ogrnip имеет не пустое значение.</assert>
			<assert test="identity:Ogrnip/@xsi:type='ST'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Ogrn!='']">
			<assert test="identity:Ogrnip/@nullFlavor='NA'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip должен иметь значение атрибута @nullFlavor равное 'NA' если элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/providerOrganization/identity:Ogrn имеет не пустое значение.</assert>
			<assert test="identity:Ogrn/@xsi:type='ST'">У1-19. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-19. Первый элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2][not(@nullFlavor)]">
			<assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">У1-19. Второй элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
			<assert test="@extension">У1-19. Второй элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь атрибут @extension.</assert>
		</rule>
	</pattern>
	<!-- У1-20 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(author)=1">У1-20. Элемент ClinicalDocument должен иметь один элемент author.</assert>
		</rule>
		<rule context="ClinicalDocument/author">
			<assert test="count(time)=1">У1-20. Элемент ClinicalDocument/author должен иметь один элемент time.</assert>
			<report test="time/@nullFlavor">У1-20. Элемент ClinicalDocument/author/time не должен иметь атрибут @nullFlavor.</report>
			<assert test="time/@value!=''">У1-20. Элемент ClinicalDocument/author/time должен иметь не пустое значние атрибута @value.</assert>
			<assert test="count(assignedAuthor)=1">У1-20. Элемент ClinicalDocument/author должен иметь один элемент assignedAuthor.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor">
			<assert test="count(id)=2">У1-20. Элемент ClinicalDocument/author/assignedAuthor должен иметь два элемента id.</assert>
			<assert test="count(code)=1">У1-20. Элемент ClinicalDocument/author/assignedAuthor должен иметь один элемент code.</assert>
			<assert test="count(assignedPerson)=1">У1-20. Элемент ClinicalDocument/author/assignedAuthor должен иметь один элемент assignedPerson.</assert>
			<assert test="count(addr)&lt;=1">У1-20. Элемент ClinicalDocument/author/assignedAuthor должен иметь до одного элемента addr.</assert>
			<assert test="count(representedOrganization)=1">У1-20. Элемент ClinicalDocument/author/assignedAuthor должен иметь один элемент representedOrganization.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/id[1]">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-20. Первый элемент ClinicalDocument/author/assignedAuthor/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+', и сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70.</assert>
			<assert test="@extension">У1-20. Первый элемент ClinicalDocument/author/assignedAuthor/id должен иметь атрибут @extension.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/id[2]">
			<assert test="@root='1.2.643.100.3'">У1-20. Второй элемент ClinicalDocument/author/assignedAuthor/id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
			<assert test="@extension">У1-20. Второй элемент ClinicalDocument/author/assignedAuthor/id должен иметь атрибут @extension.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1002'">У1-20. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002'.</assert>
			<assert test="@code!=''">У1-20. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@codeSystemName!=''">У1-20. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="@displayName!=''">У1-20. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
			<assert test="count(name)=1">У1-20. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь один элемент name.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization[not(@nullFlavor)]">
			<assert test="count(id)=1">У1-20. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь один элемент id.</assert>
			<assert test="count(name)=1">У1-20. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь один элемент name.</assert>
			<report test="name/@nullFlavor">У1-20. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
			<assert test="count(addr)=1">У1-20. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь один элемент addr.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@nullFlavor)]">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-20. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
		</rule>
	</pattern>
	<!-- У1-21 -->
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian">
			<assert test="count(representedCustodianOrganization)=1">У1-21. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь один элемент representedCustodianOrganization.</assert>
		</rule>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
			<assert test="count(id)=1">У1-21. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь один элемент id.</assert>
			<assert test="count(name)=1">У1-21. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь один элемент name.</assert>
			<assert test="count(telecom)&lt;=1">У1-21. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь не более одного элемента telecom.</assert>
			<assert test="count(addr)=1">У1-21. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь один элемент addr.</assert>
		</rule>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@nullFlavor)]">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-21. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
		</rule>
	</pattern>
	<!-- У1-22 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(informationRecipient/intendedRecipient)=1">У1-22. Элемент ClinicalDocument должен иметь один элемент informationRecipient/intendedRecipient.</assert>
		</rule>
		<rule context="ClinicalDocument/informationRecipient/intendedRecipient">
			<assert test="count(receivedOrganization)=1">У1-22. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь один элемент receivedOrganization.</assert>
		</rule>
		<rule context="ClinicalDocument/informationRecipient/receivedOrganization">
			<assert test="count(id)=1">У1-2. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь один элемент id.</assert>
			<assert test="count(name)=1">У1-22. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь один элемент name.</assert>
		</rule>
	</pattern>
	<!-- У1-23 -->
	<pattern>
		<rule context="ClinicalDocument">
			<assert test="count(legalAuthenticator)=1">У1-23. Элемент ClinicalDocument должен иметь один элемент legalAuthenticator.</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator">
			<assert test="count(time)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator должен иметь один элемент time.</assert>
			<assert test="count(signatureCode)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator должен иметь один элемент signatureCode.</assert>
			<assert test="count(assignedEntity)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator должен иметь один элемент assignedEntity.</assert>
			<assert test="count(assignedEntity/id)=2">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь два элемента id.</assert>
			<assert test="count(assignedEntity/code)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь один элемент code.</assert>
			<assert test="count(assignedEntity/assignedPerson)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь один элемент assignedPerson.</assert>
			<assert test="count(assignedEntity/addr)&lt;=1">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь до одного элемента addr.</assert>
			<assert test="count(assignedEntity/representedOrganization)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity должен иметь один элемент representedOrganization.</assert>
			<report test="time/@nullFlavor">У1-23. Элемент ClinicalDocument/legalAuthenticator/time не должен иметь атрибут @nullFlavor.</report>
			<report test="signatureCode/@nullFlavor">У1-23. Элемент ClinicalDocument/legalAuthenticator/signatureCode не должен иметь атрибут @nullFlavor.</report>
			<report test="assignedEntity/code/@nullFlavor">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь атрибут @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/signatureCode">
			<assert test="@code='S'">У1-23. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @code равное 'S'.</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">У1-23. Первый элемент ClinicalDocument/legalAuthenticator/assignedEntity/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+', и сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70.</assert>
			<assert test="@extension">У1-23. Первый элемент ClinicalDocument/legalAuthenticator/assignedEntity/id должен иметь атрибут @extension.</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
			<assert test="@root='1.2.643.100.3'">У1-23. Второй элемент ClinicalDocument/legalAuthenticator/assignedEntity/id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
			<assert test="@extension">У1-23. Второй элемент ClinicalDocument/legalAuthenticator/assignedEntity/id должен иметь атрибут @extension.</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1002'">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002'.</assert>
			<assert test="@code!=''">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@codeSystemName!=''">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="@displayName!=''">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization[not(@nullFlavor)]">
			<assert test="@classCode='ORG'">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
			<assert test="count(id)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь один элемент id.</assert>
			<assert test="count(name)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь один элемент name.</assert>
			<assert test="count(addr)=1">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization должен иметь один элемент addr.</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@nullFlavor)]">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">У1-23. Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
		</rule>
	</pattern>
	<!-- У1-24 -->
	<pattern>
		<rule context="ClinicalDocument/component">
			<assert test="count(structuredBody)=1">У1-24. Элемент ClinicalDocument/component должен иметь один элемент structuredBody.</assert>
		</rule>
	</pattern>
	<!-- У2-1 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody">
			<assert test="count(component/section[code[@code='DOCINFO']])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь один элемент component/section[code[@code='DOCINFO']].</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]">
			<assert test="code/@codeSystem='1.2.643.5.1.13.13.99.2.197'">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
			<assert test="count(title)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']] должен иметь один элемент title.</assert>
			<assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']] должен иметь один элемент text.</assert>
		</rule>
	</pattern>
	<!-- У2-2 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody">
			<assert test="count(component/section[code[@code='RECIPE']])=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь один элемент component/section[code[@code='RECIPE']].</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]">
			<assert test="code/@codeSystem='1.2.643.5.1.13.13.99.2.197'">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197'.</assert>
			<assert test="count(title)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']] должен иметь один элемент title.</assert>
			<assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']] должен иметь один элемент text.</assert>
		</rule>
	</pattern>
	<!-- У3-1 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]">
			<assert test="count(entry/observation[code[@code='6000']])&lt;=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']] должен иметь не более одного элемента entry/observation[code[@code='6000']].</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6000']]">
			<assert test="@classCode='OBS'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6000']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
			<assert test="@moodCode='EVN'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6000']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
			<assert test="count(code)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6000']] должен иметь один элемент code.</assert>
			<assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6000']] должен иметь один элемент value.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6000']">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6000'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6000']]/value">
			<assert test="@xsi:type='CD'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6000']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.609'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6000']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.609'.</assert>
		</rule>
	</pattern>
	<!-- У3-2 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]">
			<assert test="count(entry/observation[code[@code='4059']])&lt;=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']] должен иметь не более одного элемента entry/observation[code[@code='4059']].</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]">
			<assert test="@classCode='OBS'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
			<assert test="@moodCode='EVN'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
			<assert test="count(code)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']] должен иметь один элемент code.</assert>
			<assert test="count(effectiveTime)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']] должен иметь один элемент effectiveTime.</assert>
			<assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']] должен иметь один элемент value.</assert>
			<assert test="count(externalDocument)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']] должен иметь один элемент externalDocument.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='4059']">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='4059'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/effectiveTime">
			<assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">У3-2. Дата в элементе ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/effectiveTime должна быть указана с точностью до дня, следует указывать с точностью до минут. Если указано с точностью до минут, то должна быть указана временная зона.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/value">
			<assert test="@xsi:type='ST'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
			<assert test=".!=''">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/value должен быть представлен не пустым значением.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/externalDocument">
			<assert test="count(id)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/externalDocument должен иметь один элемент id.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/externalDocument">
			<assert test="matches(@root,'^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.51$')">У1-23. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/externalDocument/id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+', и сформирован по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51.</assert>
			<assert test="@extension">У1-23. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='4059']]/externalDocument/id должен иметь атрибут @extension.</assert>
		</rule>
	</pattern>
	<!-- У3-3 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]">
			<assert test="count(entry/observation[code[@code='6004']])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']] должен иметь один элемент entry/observation[code[@code='6004']].</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']]">
			<assert test="@classCode='OBS'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
			<assert test="@moodCode='EVN'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
			<assert test="count(code)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']] должен иметь один элемент code.</assert>
			<assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']] должен иметь один элемент value.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6004']">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6004'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
			<report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6004'] не должен иметь атрибут @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']]/value">
			<assert test="@xsi:type='CD'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.608'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.609'.</assert>
			<assert test="@code=['3','5']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6004']]/value должен иметь значение атрибута @code равное '3' или '5'.</assert>
		</rule>
	</pattern>
	<!-- У3-4 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]">
			<assert test="count(entry/observation[code[@code='6005']])=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']] должен иметь один элемент entry/observation[code[@code='6005']].</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6005']]">
			<assert test="@classCode='OBS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6005']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
			<assert test="@moodCode='EVN'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6005']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
			<assert test="count(code)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6005']] должен иметь один элемент code.</assert>
			<assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6005']] должен иметь один элемент value.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6005']">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6005'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6005']]/value">
			<assert test="@xsi:type='TS'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6005']]/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
		</rule>
	</pattern>
	<!-- У3-5 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]">
			<assert test="count(entry/observation[code[@code='6006']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']] должен иметь один элемент entry/observation[code[@code='6006']].</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6006']]">
			<assert test="@classCode='OBS'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6006']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
			<assert test="@moodCode='EVN'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6006']] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
			<assert test="count(code)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6006']] должен иметь один элемент code.</assert>
			<assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6006']] должен иметь один элемент value.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6006']">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation/code[@code='6006'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6006']]/value">
			<assert test="@xsi:type='BL'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6006']]/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
			<assert test="@value='true' or 'false'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='DOCINFO']]/entry/observation[code[@code='6006']]/value должен иметь значение атрибута @value равное 'true' или 'false'. Значение 'true' может быть только при назначении медицинского изделия.</assert>
		</rule>
	</pattern>
	<!-- У3-6 -->
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]">
			<assert test="count(entry)>=1 and count(entry)&lt;=3">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']] должен иметь от одного до трех элементов entry.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry">
			<assert test="count(substanceAdministration)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']] должен иметь один элемент substanceAdministration.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration">
			<assert test="@classCode='SBADM'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
			<assert test="@moodCode='RQO'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
			<assert test="count(effectiveTime)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration должен иметь один элемент effectiveTime.</assert>
			<assert test="count(routeCode)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration должен иметь один элемент routeCode.</assert>
			<assert test="count(consumable)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration должен иметь один элемент consumable.</assert>
			<assert test="count(entryRelationship[observation[code[@code='6011']]])=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration должен иметь один элемент entryRelationship[observation[code[@code='6011']]].</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime[not(@nullFlavor)]">
			<assert test="@xsi:type='IVL_TS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime должен иметь значение атрибута @xsi:type равное 'IVL_TS'.</assert>
			<assert test="count(width)=1 or count(low)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime должен иметь один элемент width или один элемент low.</assert>
			<assert test="count(width)=1 or count(high)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime должен иметь один элемент width или один элемент high.</assert>
			<assert test="not(low) or low/@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime/low должен иметь не пустое значение атрибута @value.</assert>
			<assert test="not(high) or high/@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime/high должен иметь не пустое значение атрибута @value.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime[not(@nullFlavor)]/width">
			<assert test="@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime/width должен иметь не пустое значение атрибута @value.</assert>
			<assert test="@unit!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime/width должен иметь не пустое значение атрибута @unit.</assert>
			<assert test="count(translation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime/width должен иметь один элемент translation.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime[not(@nullFlavor)]/width/translation">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1358'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358'.</assert>
			<assert test="@code=['22','23','24','520','521','522']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @codeSystem равное '22', '23', '24', '520', '521' или '522'.</assert>
			<assert test="@displayName=['мин','ч','сут','нед','мес','год']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/effectiveTime/width/translation должен иметь значение атрибута @displayName равное 'мин', 'ч', 'сут', 'нед', 'мес' или 'год'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/routeCode[not(@nullFlavor)]">
			<assert test="@code!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/routeCode должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1468'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/routeCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1468'.</assert>
			<assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/routeCode должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable">
			<assert test="@typeCode='CSM'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable должен иметь значение атрибута @typeCode равное 'CSM'.</assert>
			<assert test="count(manufacturedProduct)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable должен иметь один элемент manufacturedProduct.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct">
			<assert test="@classCode='MANU'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута @classCode равное 'MANU'.</assert>
			<assert test="count(manufacturedMaterial)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct должен иметь один элемент manufacturedMaterial.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
			<assert test="@classCode='MMAT'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @classCode равное 'MMAT'.</assert>
			<assert test="@determinerCode='KIND'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @determinerCode равное 'KIND'.</assert>
			<assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь один элемент code.</assert>
			<assert test="count(name)&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь не более одного элемента name.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code[not(@nullFlavor)]">
			<assert test="@code!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь не пустое значение атрибута @displayName.</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.611'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.611'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code[@nullFlavor]">
			<assert test="@nullFlavor='OTH'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]">
			<assert test="count(substanceAdministration)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])] должен иметь один элемент substanceAdministration.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration">
			<assert test="count(effectiveTime)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration должен иметь один элемент effectiveTime.</assert>
			<assert test="count(doseQuantity)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration должен иметь один элемент doseQuantity.</assert>
			<assert test="count(consumable)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration должен иметь один элемент consumable.</assert>
			<assert test="@classCode='SBADM'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
			<assert test="@moodCode='RQO'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
			<report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration не должен иметь атрибут @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]">
			<assert test="@xsi:type='PIVL_TS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime должен иметь значение атрибута @xsi:type равное 'PIVL_TS'.</assert>
			<assert test="@institutionSpecified='true' or @institutionSpecified='false'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime должен иметь значение атрибута @institutionSpecified равное 'true' или 'false'.</assert>
			<assert test="count(period)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime должен иметь один элемент period.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period">
			<assert test="@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period должен иметь не пустое значение атрибута @value.</assert>
			<assert test="@unit=['min','h','d','wk','mo','a']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period должен иметь значение атрибута @unit равное 'min', 'h', 'd', 'wk', 'mo' или 'a'.</assert>
			<assert test="count(translation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period должен иметь один элемент translation.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period/translation">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1358'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358'.</assert>
			<assert test="@code=['22','23','24','520','521','522']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period/translation должен иметь значение атрибута @codeSystem равное '22', '23', '24', '520', '521' или '522'.</assert>
			<assert test="@displayName=['мин','ч','сут','нед','мес','год']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period/translation должен иметь значение атрибута @displayName равное 'мин', 'ч', 'сут', 'нед', 'мес' или 'год'.</assert>
			<report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/effectiveTime[not(@nullFlavor)]/period/translation не должен иметь атрибут @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity">
			<assert test="@xsi:type='IVL_PQ'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity должен иметь значение атрибута @xsi:type равное 'IVL_PQ'.</assert>
			<assert test="@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity должен иметь не пустое значение атрибута @value.</assert>
			<assert test="@unit!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity должен иметь не пустое значение атрибута @unit.</assert>
			<report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity не должен иметь атрибут @nullFlavor.</report>
			<assert test="count(translation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity должен иметь один элемент translation.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity/translation">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.612'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.612'.</assert>
			<assert test="@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity/translation должен иметь не пустое значение атрибута @value.</assert>
			<assert test="@code!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity/translation должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity/translation должен иметь не пустое значение атрибута @displayName.</assert>
			<report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/doseQuantity/translation не должен иметь атрибут @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/consumable">
			<assert test="count(manufacturedProduct)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/consumable должен иметь один элемент manufacturedProduct.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/consumable/manufacturedProduct">
			<assert test="count(manufacturedMaterial)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/consumable/manufacturedProduct должен иметь один элемент manufacturedMaterial.</assert>
			<assert test="manufacturedMaterial/@nullFlavor='NA'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[not(observation[code[@code='6011']])]/substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута manufacturedMaterial/@nullFlavor равное 'NA'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[observation[code[@code='6011']]]">
			<assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship[observation[code[@code='6011']]] должен иметь один элемент observation.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]">
			<assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
			<assert test="@moodCode=['RQO','EVN']">У3-62. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь значение атрибута @moodCode равное 'RQO' или 'EVN'.</assert>
			<assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь один элемент code.</assert>
			<assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь один элемент value.</assert>
			<assert test="count(entryRelationship)&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь до одного элемента entryRelationship.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation/code[@code='6011']">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation/code[@code='6011'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
			<assert test="@code='6011'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation/code[@code='6011'] должен иметь значение атрибута @code равное '6011'.</assert>
			<report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation/code[@code='6011'] не должен иметь атрибут @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value">
			<assert test="@xsi:type='PQ'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
			<assert test="@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value должен иметь не пустое значение атрибута @value.</assert>
			<assert test="@unit='U'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value должен иметь значение атрибута @unit равное 'U'.</assert>
			<assert test="count(translation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value должен иметь один элемент translation.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value/translation">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1358'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358'.</assert>
			<assert test="@code='128'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value/translation должен иметь значение атрибута @code равное '128'.</assert>
			<assert test="@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value/translation должен иметь не пустое значение атрибута @value.</assert>
			<assert test="@displayName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/value/translation должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship">
			<assert test="count(observation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship должен иметь один элемент observation.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation">
			<assert test="@classCode='OBS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь значение атрибута @classCode равное 'OBS'.</assert>
			<assert test="@moodCode='RQO'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
			<assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь один элемент code.</assert>
			<assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь один элемент value.</assert>
			<assert test="count(entryRelationship)>=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']] должен иметь не менее одного элемента entryRelationship.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166'.</assert>
			<assert test="@code='6017'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation/code должен иметь значение атрибута @code равное '6017'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/value">
			<assert test="@xsi:type='CD'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.687'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.687'.</assert>
			<assert test="@code!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/value должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@codeSystem!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/value должен иметь не пустое значение атрибута @codeSystem.</assert>
			<assert test="@codeSystemVersion!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
			<assert test="@codeSystemName!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship">
			<assert test="@typeCode='COMP'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship должен иметь значение атрибута @classCode равное 'SPLY'.</assert>
			<assert test="count(supply)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship должен иметь один элемент supply.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply">
			<assert test="@classCode='SPLY'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply должен иметь значение атрибута @classCode равное 'SPLY'.</assert>
			<assert test="@moodCode='RQO'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
			<assert test="count(effectiveTime)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply должен иметь один элемент effectiveTime.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]">
			<assert test="@xsi:type='PIVL_TS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime должен иметь значение атрибута @xsi:type равное 'PIVL_TS'.</assert>
			<assert test="@institutionSpecified='true' or @institutionSpecified='false'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime должен иметь значение атрибута @institutionSpecified равное 'true' или 'false'.</assert>
			<assert test="count(period)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime должен иметь один элемент period.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]/period">
			<assert test="@value!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]/period должен иметь не пустое значение атрибута @value.</assert>
			<assert test="@unit!=''">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]/period должен иметь не пустое значение атрибута @unit.</assert>
			<assert test="count(translation)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]/period должен иметь один элемент translation.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]/period/translation">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1358'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]/period/translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358'.</assert>
			<assert test="@code=['22','23','24','520','521','522']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]/period/translation должен иметь значение атрибута @codeSystem равное '22', '23', '24', '520', '521' или '522'.</assert>
			<assert test="@displayName=['мин','ч','сут','нед','мес','год']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/entryRelationship/observation[code[@code='6011']]/entryRelationship/observation[code[@code='6017']]/entryRelationship/supply/effectiveTime[not(@nullFlavor)]/period/translation должен иметь значение атрибута @displayName равное 'мин', 'ч', 'сут', 'нед', 'мес' или 'год'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition">
			<assert test="@typeCode='PRCN'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition должен иметь значение атрибута @typeCode равное 'PRCN'.</assert>
			<assert test="count(criterion)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition должен иметь один элемент criterion.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition/criterion">
			<assert test="count(code)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition/criterion должен иметь один элемент code.</assert>
			<assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition/criterion должен иметь один элемент value.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition/criterion/code">
			<assert test="@code='ASSERTION'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition/criterion/code должен иметь значение атрибута @code равное 'ASSERTION'.</assert>
			<assert test="@codeSystem='2.16.840.1.113883.5.4'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition/criterion/code должен иметь значение атрибута @codeSystem равное '2.16.840.1.113883.5.4'.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition/criterion/value">
			<assert test="@xsi:type='ST'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code[@code='RECIPE']]/entry/substanceAdministration/precondition/criterion/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
		</rule>
	</pattern>
</schema>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
	<ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
	<ns prefix="identity" uri="urn:hl7-ru:identity"/>
	<ns prefix="address" uri="urn:hl7-ru:address"/>
	<ns prefix="medService" uri="urn:hl7-ru:medService"/>
	<ns prefix="fias" uri="urn:hl7-ru:fias"/>
	<pattern>
		<rule context="ClinicalDocument">
			<report test="@nullFlavor">Элемент ClinicalDocument не должен иметь атрибут @nullFlavor</report>
			<assert test="count(realmCode)=1">У1-1: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент realmCode</assert>
			<assert test="count(typeId)=1">У1-2: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент typeId</assert>
			<assert test="count(templateId)=1">У1-3: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент templateId</assert>
			<assert test="count(id[substring(@root, string-length(@root) - 2)='.51'])=1">У1-4: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент id (Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51)</assert>
			<assert test="count(code)=1">У1-5: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У1-6: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(effectiveTime)=1">У1-7: Элемент ClinicalDocument ДОЛЖЕН содержать один [1..1] элемент effectiveTime</assert>
			<assert test="count(confidentialityCode)=1">У1-8: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент confidentialityCode</assert>
			<assert test="count(languageCode)=1">У1-9: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент languageCode</assert>
			<assert test="count(setId)=1">У1-10: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент setId (Элемент setId обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50)</assert>
			<assert test="count(versionNumber)=1">У1-11: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент versionNumber</assert>
			<assert test="count(recordTarget)=1">У1-12: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент recordTarget</assert>
			<assert test="count(author)=1">У1-13: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент author</assert>
			<assert test="count(custodian)=1">У1-14: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент custodian</assert>
			<assert test="count(informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13'])=1">У1-15: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент informationRecipient</assert>
			<assert test="count(informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')])>=0">У1-16: Элемент ClinicalDocument МОЖЕТ содержать произвольное количество [0..*] элементов informationRecipient</assert>
			<assert test="count(legalAuthenticator)=1">У1-17: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент legalAuthenticator</assert>
			<assert test="count(participant[@typeCode='IND'])=[0,1]">У1-18: Элемент ClinicalDocument МОЖЕТ содержать не более одного [0..1] элемента participant</assert>
			<assert test="count(documentationOf)=1">У1-19: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент documentationOf</assert>
			<assert test="count(componentOf)=1">У1-20: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент componentOf</assert>
			<assert test="count(component)=1">У1-21: Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент component</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/realmCode">
			<report test="@nullFlavor">У1-1: Элемент ClinicalDocument/realmCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='RU'">У1-1: Элемент realmCode обязан содержать один атрибут @code со значением "RU"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/typeId">
			<report test="@nullFlavor">У1-2: Элемент ClinicalDocument/typeId не должен иметь атрибут @nullFlavor</report>
			<assert test="@root='2.16.840.1.113883.1.3'">У1-2: Элемент typeId обязан содержать один атрибут @root со значением "2.16.840.1.113883.1.3"</assert>
			<assert test="@extension='POCD_MT000040'">У1-2: Элемент typeId обязан содержать один атрибут @extension со значением "POCD_MT000040"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/templateId">
			<report test="@nullFlavor">У1-3: Элемент ClinicalDocument/templateId не должен иметь атрибут @nullFlavor</report>
			<assert test="@root='1.2.643.5.1.13.13.15.86.1'">У1-3: Элемент templateId обязан содержать один атрибут @root со значением "1.2.643.5.1.13.13.15.86.1"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/id[substring(@root, string-length(@root) - 2)='.51']">
			<report test="@nullFlavor">У1-4: Элемент ClinicalDocument/id[substring(@root, string-length(@root) - 2)='.51'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-4: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.51$')">У1-4: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
			<assert test="@extension!=''">У1-4: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/code">
			<report test="@nullFlavor">У1-5: Элемент ClinicalDocument/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='86'">У1-5: Элемент code обязан содержать один атрибут @code со значением "86"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.1079'">У1-5: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.1079"</assert>
			<assert test="@codeSystemName!=''">У1-5: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У1-5: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-5: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="count(translation)=1">У1-5.1: Элемент code ОБЯЗАН содержать один [1..1] элемент translation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/code/translation">
			<report test="@nullFlavor">У1-5.1: Элемент ClinicalDocument/code/translation не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='198'">У1-5.1: Элемент translation обязан содержать один атрибут @code со значением "198"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41']">У1-5.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1520"</assert>
			<assert test="@codeSystemName!=''">У1-5.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У1-5.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-5.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/title">
			<report test="@nullFlavor">У1-6: Элемент ClinicalDocument/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-6: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/effectiveTime[not(@nullFlavor)]">
			<assert test="@value!=''">У1-7: Элемент effectiveTime должен содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/effectiveTime[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
			<report test="@nullFlavor != 'NA'">У1-7: Допустимые значения для атрибута  nullFlavor: 'NA'</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/confidentialityCode">
			<report test="@nullFlavor">У1-8: Элемент ClinicalDocument/confidentialityCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">У1-8: Элемент confidentialityCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.285"</assert>
			<assert test="@codeSystemName!=''">У1-8: Элемент confidentialityCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-8: Элемент confidentialityCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-8: Элемент confidentialityCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-8: Элемент confidentialityCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/languageCode">
			<report test="@nullFlavor">У1-9: Элемент ClinicalDocument/languageCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='ru-RU'">У1-9: Элемент languageCode обязан содержать один атрибут @code со значением "ru-RU"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/setId">
			<report test="@nullFlavor">У1-10: Элемент ClinicalDocument/setId не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-10: Элемент setId обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.50$')">У1-10: Элемент setId обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50</assert>
			<assert test="@extension!=''">У1-10: Элемент setId обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/versionNumber">
			<report test="@nullFlavor">У1-11: Элемент ClinicalDocument/versionNumber не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-11: Элемент versionNumber обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget">
			<report test="@nullFlavor">У1-12: Элемент ClinicalDocument/recordTarget не должен иметь атрибут @nullFlavor</report>
			<assert test="count(patientRole)=1">У1-12.1: Элемент recordTarget ОБЯЗАН содержать один [1..1] элемент patientRole</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole">
			<report test="@nullFlavor">У1-12.1: Элемент ClinicalDocument/recordTarget/patientRole не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[substring(@root, string-length(@root) - 2)='.10'])=1">У1-12.1.1: Элемент patientRole ОБЯЗАН содержать один [1..1] элемент id (Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10)</assert>
			<assert test="count(id[2])=1">У1-12.1.2: Элемент patientRole ДОЛЖЕН содержать один [1..1] элемент id (СНИЛС пациента)</assert>
			<assert test="count(identity:IdentityDoc)=1">У1-12.1.3: Элемент patientRole ДОЛЖЕН содержать один [1..1] элемент identity:IdentityDoc</assert>
			<assert test="count(identity:InsurancePolicy)=1">У1-12.1.4: Элемент patientRole ДОЛЖЕН содержать один [1..1] элемент identity:InsurancePolicy</assert>
			<assert test="count(addr)=[1,2]">У1-12.1.5: Элемент patientRole ДОЛЖЕН содержать от одного до двух [1..2] элементов addr</assert>
			<assert test="count(telecom)>=0">У1-12.1.6: Элемент patientRole МОЖЕТ содержать произвольное количество [0..*] элементов telecom</assert>
			<assert test="count(patient)=1">У1-12.1.7: Элемент patientRole ОБЯЗАН содержать один [1..1] элемент patient</assert>
			<assert test="count(providerOrganization)=1">У1-12.1.8: Элемент patientRole ОБЯЗАН содержать один [1..1] элемент providerOrganization</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) - 2)='.10']">
			<report test="@nullFlavor">У1-12.1.1: Элемент ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) - 2)='.10'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-12.1.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.10$')">У1-12.1.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10</assert>
			<assert test="@extension!=''">У1-12.1.1: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]">
			<assert test="@root='1.2.643.100.3'">У1-12.1.2: Элемент id должен содержать один атрибут @root со значением "1.2.643.100.3"</assert>
			<assert test="@extension!=''">У1-12.1.2: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/id[2][@nullFlavor]">
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc[not(@nullFlavor)]">
			<assert test="count(identity:IdentityCardType)=1">У1-12.1.3.1: Элемент identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:IdentityCardType</assert>
			<assert test="count(identity:Series)=1">У1-12.1.3.2: Элемент identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:Series</assert>
			<assert test="count(identity:Number)=1">У1-12.1.3.3: Элемент identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:Number</assert>
			<assert test="count(identity:IssueOrgName)=1">У1-12.1.3.4: Элемент identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgName</assert>
			<assert test="count(identity:IssueOrgCode)=1">У1-12.1.3.5: Элемент identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgCode</assert>
			<assert test="count(identity:IssueDate)=1">У1-12.1.3.6: Элемент identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:IssueDate</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType">
			<report test="@nullFlavor">У1-12.1.3.1: Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-12.1.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.48"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.3.2: Элемент identity:Series должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number">
			<report test="@nullFlavor">У1-12.1.3.3: Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.3.3: Элемент identity:Number должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.3.4: Элемент identity:IssueOrgName должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.3.5: Элемент identity:IssueOrgCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate">
			<report test="@nullFlavor">У1-12.1.3.6: Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-12.1.3.6: Элемент identity:IssueDate обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy[not(@nullFlavor)]">
			<assert test="count(identity:InsurancePolicyType)=1">У1-12.1.4.1: Элемент identity:InsurancePolicy ОБЯЗАН содержать один [1..1] элемент identity:InsurancePolicyType</assert>
			<assert test="count(identity:Series)=[0,1]">У1-12.1.4.2: Элемент identity:InsurancePolicy МОЖЕТ содержать не более одного [0..1] элемента identity:Series</assert>
			<assert test="count(identity:Number)=1">У1-12.1.4.3: Элемент identity:InsurancePolicy ОБЯЗАН содержать один [1..1] элемент identity:Number</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType">
			<report test="@nullFlavor">У1-12.1.4.1: Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-12.1.4.1: Элемент identity:InsurancePolicyType обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1035"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.4.1: Элемент identity:InsurancePolicyType обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.4.1: Элемент identity:InsurancePolicyType обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.4.1: Элемент identity:InsurancePolicyType обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.4.1: Элемент identity:InsurancePolicyType обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series">
			<report test="@nullFlavor">У1-12.1.4.2: Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.4.2: Элемент identity:Series должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number">
			<report test="@nullFlavor">У1-12.1.4.3: Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.4.3: Элемент identity:Number должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]">
			<assert test="count(@use!='')=[0,1]">У1-12.1.5: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-12.1.5: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(address:Type)=1">У1-12.1.5.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:Type</assert>
			<assert test="count(streetAddressLine)=1">У1-12.1.5.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-12.1.5.3: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(address:residentCode)=1">У1-12.1.5.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент address:residentCode</assert>
			<assert test="count(postalCode)=1">У1-12.1.5.5: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-12.1.5.6: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/address:Type">
			<report test="@nullFlavor">У1-12.1.5.1: Элемент ClinicalDocument/recordTarget/patientRole/addr/address:Type не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">У1-12.1.5.1: Элемент address:Type обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1504"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.5.1: Элемент address:Type обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.5.1: Элемент address:Type обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.5.1: Элемент address:Type обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.5.1: Элемент address:Type обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine">
			<report test="@nullFlavor">У1-12.1.5.2: Элемент ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.5.2: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/address:stateCode">
			<report test="@nullFlavor">У1-12.1.5.3: Элемент ClinicalDocument/recordTarget/patientRole/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-12.1.5.3: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.5.3: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.5.3: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.5.3: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.5.3: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/address:residentCode[not(@nullFlavor)]">
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">У1-12.1.5.4: Элемент address:residentCode должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1042"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.5.4: Элемент address:residentCode должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.5.4: Элемент address:residentCode должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.5.4: Элемент address:residentCode должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.5.4: Элемент address:residentCode должен содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/address:residentCode[@nullFlavor]">
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.5.5: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-12.1.5.6.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-12.1.5.6.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-12.1.5.6.1: Элемент ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.5.6.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.5.6.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/telecom">
			<report test="@nullFlavor">У1-12.1.6: Элемент ClinicalDocument/recordTarget/patientRole/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-12.1.6: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-12.1.6: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-12.1.6: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient">
			<report test="@nullFlavor">У1-12.1.7: Элемент ClinicalDocument/recordTarget/patientRole/patient не должен иметь атрибут @nullFlavor</report>
			<assert test="count(name)=1">У1-12.1.7.1: Элемент patient ОБЯЗАН содержать один [1..1] элемент name</assert>
			<assert test="count(administrativeGenderCode)=1">У1-12.1.7.2: Элемент patient ДОЛЖЕН содержать один [1..1] элемент administrativeGenderCode</assert>
			<assert test="count(birthTime)=1">У1-12.1.7.3: Элемент patient ДОЛЖЕН содержать один [1..1] элемент birthTime</assert>
			<assert test="count(guardian)=[0,1]">У1-12.1.7.4: Элемент patient МОЖЕТ содержать не более одного [0..1] элемента guardian</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/name">
			<report test="@nullFlavor">У1-12.1.7.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/name не должен иметь атрибут @nullFlavor</report>
			<assert test="count(family)=1">У1-12.1.7.1.1: Элемент name ОБЯЗАН содержать один [1..1] элемент family</assert>
			<assert test="count(given)=1">У1-12.1.7.1.2: Элемент name ОБЯЗАН содержать один [1..1] элемент given</assert>
			<assert test="count(identity:Patronymic)=[0,1]">У1-12.1.7.1.3: Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/name/family">
			<report test="@nullFlavor">У1-12.1.7.1.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/name/family не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.1.1: Элемент family должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/name/given">
			<report test="@nullFlavor">У1-12.1.7.1.2: Элемент ClinicalDocument/recordTarget/patientRole/patient/name/given не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.1.2: Элемент given должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic">
			<report test="@nullFlavor">У1-12.1.7.1.3: Элемент ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.1.3: Элемент identity:Patronymic должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]">
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">У1-12.1.7.2: Элемент administrativeGenderCode должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1040"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.7.2: Элемент administrativeGenderCode должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.7.2: Элемент administrativeGenderCode должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.7.2: Элемент administrativeGenderCode должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.7.2: Элемент administrativeGenderCode должен содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[@nullFlavor]">
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]">
			<assert test="@value!=''">У1-12.1.7.3: Элемент birthTime должен содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian">
			<report test="@nullFlavor">У1-12.1.7.4: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='GUARD'">У1-12.1.7.4: Элемент guardian обязан содержать один атрибут @classCode со значением "GUARD"</assert>
			<assert test="count(id[@root='1.2.643.100.3'])=[0,1]">У1-12.1.7.4.1: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента id</assert>
			<assert test="count(identity:IdentityDoc)=[0,1]">У1-12.1.7.4.2: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента identity:IdentityDoc</assert>
			<assert test="count(identity:AuthorityDoc)=[0,1]">У1-12.1.7.4.3: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента identity:AuthorityDoc</assert>
			<assert test="count(code)=[0,1]">У1-12.1.7.4.4: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента code</assert>
			<assert test="count(addr)=[0,1]">У1-12.1.7.4.5: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента addr</assert>
			<assert test="count(telecom)>=0">У1-12.1.7.4.6: Элемент guardian МОЖЕТ содержать произвольное количество [0..*] элементов telecom</assert>
			<assert test="count(guardianPerson)=[0,1]">У1-12.1.7.4.7: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента guardianPerson</assert>
			<assert test="count(guardianOrganization)=[0,1]">У1-12.1.7.4.8: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента guardianOrganization</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[guardianPerson]">
			<assert test="count(guardianOrganization)=0">У1-12.1.7.4.8: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента guardianOrganization; элемент не может быть представлен одновременно со сведениями о законном представителе (физическом лице)</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[guardianOrganization]">
			<assert test="count(guardianPerson)=0">У1-12.1.7.4.7: Элемент guardian МОЖЕТ содержать не более одного [0..1] элемента guardianPerson; элемент не может быть представлен одновременно со сведениями о законном представителе (юридическом лице)</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/id[@root='1.2.643.100.3']">
			<report test="@nullFlavor">У1-12.1.7.4.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/id[@root='1.2.643.100.3'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root='1.2.643.100.3'">У1-12.1.7.4.1: Элемент id обязан содержать один атрибут @root со значением "1.2.643.100.3"</assert>
			<assert test="@extension!=''">У1-12.1.7.4.1: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc">
			<report test="@nullFlavor">У1-12.1.7.4.2: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc не должен иметь атрибут @nullFlavor</report>
			<assert test="count(identity:IdentityCardType)=1">У1-12.1.7.4.2.1: Элемент identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:IdentityCardType</assert>
			<assert test="count(identity:Series)=1">У1-12.1.7.4.2.2: Элемент identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:Series</assert>
			<assert test="count(identity:Number)=1">У1-12.1.7.4.2.3: Элемент identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:Number</assert>
			<assert test="count(identity:IssueOrgName)=1">У1-12.1.7.4.2.4: Элемент identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgName</assert>
			<assert test="count(identity:IssueOrgCode)=1">У1-12.1.7.4.2.5: Элемент identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgCode</assert>
			<assert test="count(identity:IssueDate)=1">У1-12.1.7.4.2.6: Элемент identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:IssueDate</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType">
			<report test="@nullFlavor">У1-12.1.7.4.2.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">У1-12.1.7.4.2.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.48"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.7.4.2.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.7.4.2.1: Элемент identity:IdentityCardType обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.7.4.2.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.7.4.2.1: Элемент identity:IdentityCardType обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Series[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.2.2: Элемент identity:Series должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Number">
			<report test="@nullFlavor">У1-12.1.7.4.2.3: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Number не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.2.3: Элемент identity:Number должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.2.4: Элемент identity:IssueOrgName должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.2.5: Элемент identity:IssueOrgCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueDate">
			<report test="@nullFlavor">У1-12.1.7.4.2.6: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-12.1.7.4.2.6: Элемент identity:IssueDate обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc">
			<report test="@nullFlavor">У1-12.1.7.4.3: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc не должен иметь атрибут @nullFlavor</report>
			<assert test="count(identity:IdentityCardType)=1">У1-12.1.7.4.3.1: Элемент identity:AuthorityDoc ОБЯЗАН содержать один [1..1] элемент identity:IdentityCardType</assert>
			<assert test="count(identity:Series)=1">У1-12.1.7.4.3.2: Элемент identity:AuthorityDoc ДОЛЖЕН содержать один [1..1] элемент identity:Series</assert>
			<assert test="count(identity:Number)=1">У1-12.1.7.4.3.3: Элемент identity:AuthorityDoc ОБЯЗАН содержать один [1..1] элемент identity:Number</assert>
			<assert test="count(identity:IssueOrgName)=1">У1-12.1.7.4.3.4: Элемент identity:AuthorityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgName</assert>
			<assert test="count(identity:IssueDate)=1">У1-12.1.7.4.3.5: Элемент identity:AuthorityDoc ОБЯЗАН содержать один [1..1] элемент identity:IssueDate</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType">
			<report test="@nullFlavor">У1-12.1.7.4.3.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.313'">У1-12.1.7.4.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.313"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.7.4.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.7.4.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.7.4.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.7.4.3.1: Элемент identity:IdentityCardType обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Series[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.3.2: Элемент identity:Series должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Number">
			<report test="@nullFlavor">У1-12.1.7.4.3.3: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Number не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.3.3: Элемент identity:Number должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueOrgName[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.3.4: Элемент identity:IssueOrgName должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate">
			<report test="@nullFlavor">У1-12.1.7.4.3.5: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-12.1.7.4.3.5: Элемент identity:IssueDate обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/code">
			<report test="@nullFlavor">У1-12.1.7.4.4: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">У1-12.1.7.4.4: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.14"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.7.4.4: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.7.4.4: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.7.4.4: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.7.4.4: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr">
			<report test="@nullFlavor">У1-12.1.7.4.5: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-12.1.7.4.5: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-12.1.7.4.5: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-12.1.7.4.5.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-12.1.7.4.5.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-12.1.7.4.5.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-12.1.7.4.5.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/streetAddressLine">
			<report test="@nullFlavor">У1-12.1.7.4.5.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.5.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode">
			<report test="@nullFlavor">У1-12.1.7.4.5.2: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-12.1.7.4.5.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.7.4.5.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.7.4.5.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.7.4.5.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.7.4.5.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.5.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-12.1.7.4.5.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-12.1.7.4.5.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-12.1.7.4.5.4.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.5.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.5.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/telecom">
			<report test="@nullFlavor">У1-12.1.7.4.6: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-12.1.7.4.6: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-12.1.7.4.6: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-12.1.7.4.6: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson">
			<report test="@nullFlavor">У1-12.1.7.4.7: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson не должен иметь атрибут @nullFlavor</report>
			<assert test="count(name)=1">У1-12.1.7.4.7.1: Элемент guardianPerson ОБЯЗАН содержать один [1..1] элемент name</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name">
			<report test="@nullFlavor">У1-12.1.7.4.7.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name не должен иметь атрибут @nullFlavor</report>
			<assert test="count(family)=1">У1-12.1.7.4.7.1.1: Элемент name ОБЯЗАН содержать один [1..1] элемент family</assert>
			<assert test="count(given)=1">У1-12.1.7.4.7.1.2: Элемент name ОБЯЗАН содержать один [1..1] элемент given</assert>
			<assert test="count(identity:Patronymic)=[0,1]">У1-12.1.7.4.7.1.3: Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/family">
			<report test="@nullFlavor">У1-12.1.7.4.7.1.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/family не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.7.1.1: Элемент family должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/given">
			<report test="@nullFlavor">У1-12.1.7.4.7.1.2: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/given не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.7.1.2: Элемент given должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/identity:Patronymic">
			<report test="@nullFlavor">У1-12.1.7.4.7.1.3: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/identity:Patronymic не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.7.1.3: Элемент identity:Patronymic должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization">
			<report test="@nullFlavor">У1-12.1.7.4.8: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')])=[0,1]">У1-12.1.7.4.8.1: Элемент guardianOrganization МОЖЕТ содержать не более одного [0..1] элемента id</assert>
			<assert test="count(identity:Props)=1">У1-12.1.7.4.8.2: Элемент guardianOrganization ДОЛЖЕН содержать один [1..1] элемент identity:Props</assert>
			<assert test="count(name)=1">У1-12.1.7.4.8.3: Элемент guardianOrganization ОБЯЗАН содержать один [1..1] элемент name</assert>
			<assert test="count(addr)=[0,1]">У1-12.1.7.4.8.4: Элемент guardianOrganization МОЖЕТ содержать не более одного [0..1] элемента addr</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]">
			<report test="@nullFlavor">У1-12.1.7.4.8.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-12.1.7.4.8.1: Элемент id обязан содержать один атрибут @root с не пустым значением</assert>
			<assert test="count(@extension!='')=[0,1]">У1-12.1.7.4.8.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
			<assert test="if (@extension) then @extension!='' else(not(@extension))">У1-12.1.7.4.8.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props[not(@nullFlavor)]">
			<assert test="count(identity:Ogrn)=[0,1]">У1-12.1.7.4.8.2.1: Элемент identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Ogrn</assert>
			<assert test="count(identity:Ogrnip)=[0,1]">У1-12.1.7.4.8.2.2: Элемент identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Ogrnip</assert>
			<assert test="count(identity:Okpo)=[0,1]">У1-12.1.7.4.8.2.3: Элемент identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Okpo</assert>
			<assert test="count(identity:Okato)=[0,1]">У1-12.1.7.4.8.2.4: Элемент identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Okato</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrn">
			<report test="@nullFlavor">У1-12.1.7.4.8.2.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrn не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.8.2.1: Элемент identity:Ogrn должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrnip">
			<report test="@nullFlavor">У1-12.1.7.4.8.2.2: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrnip не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.8.2.2: Элемент identity:Ogrnip должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okpo">
			<report test="@nullFlavor">У1-12.1.7.4.8.2.3: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okpo не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.8.2.3: Элемент identity:Okpo должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okato">
			<report test="@nullFlavor">У1-12.1.7.4.8.2.4: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okato не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.8.2.4: Элемент identity:Okato должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/name">
			<report test="@nullFlavor">У1-12.1.7.4.8.3: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/name не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.8.3: Элемент name должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr">
			<report test="@nullFlavor">У1-12.1.7.4.8.4: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-12.1.7.4.8.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-12.1.7.4.8.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-12.1.7.4.8.4.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-12.1.7.4.8.4.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-12.1.7.4.8.4.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-12.1.7.4.8.4.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/streetAddressLine">
			<report test="@nullFlavor">У1-12.1.7.4.8.4.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.8.4.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode">
			<report test="@nullFlavor">У1-12.1.7.4.8.4.2: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-12.1.7.4.8.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.7.4.8.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.7.4.8.4.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.7.4.8.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.7.4.8.4.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.8.4.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-12.1.7.4.8.4.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-12.1.7.4.8.4.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-12.1.7.4.8.4.4.1: Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.7.4.8.4.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.7.4.8.4.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
			<report test="@nullFlavor">У1-12.1.8: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')])=1">У1-12.1.8.1: Элемент providerOrganization ОБЯЗАН содержать один [1..1] элемент id</assert>
			<assert test="count(id[@root='1.2.643.5.1.13.2.1.1.1504.101'])=[0,1]">У1-12.1.8.2: Элемент providerOrganization МОЖЕТ содержать не более одного [0..1] элемента id</assert>
			<assert test="count(identity:Props)=1">У1-12.1.8.3: Элемент providerOrganization ОБЯЗАН содержать один [1..1] элемент identity:Props</assert>
			<assert test="count(name)=1">У1-12.1.8.4: Элемент providerOrganization ОБЯЗАН содержать один [1..1] элемент name</assert>
			<assert test="count(telecom)>=0">У1-12.1.8.5: Элемент providerOrganization МОЖЕТ содержать произвольное количество [0..*] элементов telecom</assert>
			<assert test="count(addr)=1">У1-12.1.8.6: Элемент providerOrganization ОБЯЗАН содержать один [1..1] элемент addr</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]">
			<report test="@nullFlavor">У1-12.1.8.1: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-12.1.8.1: Элемент id обязан содержать один атрибут @root с не пустым значением</assert>
			<assert test="count(@extension!='')=[0,1]">У1-12.1.8.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
			<assert test="if (@extension) then @extension!='' else(not(@extension))">У1-12.1.8.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root='1.2.643.5.1.13.2.1.1.1504.101']">
			<report test="@nullFlavor">У1-12.1.8.2: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root='1.2.643.5.1.13.2.1.1.1504.101'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">У1-12.1.8.2: Элемент id обязан содержать один атрибут @root со значением "1.2.643.5.1.13.2.1.1.1504.101"</assert>
			<assert test="@extension!=''">У1-12.1.8.2: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
			<assert test="@assigningAuthorityName!=''">У1-12.1.8.2: Элемент id обязан содержать один атрибут @assigningAuthorityName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props">
			<report test="@nullFlavor">У1-12.1.8.3: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props не должен иметь атрибут @nullFlavor</report>
			<assert test="count(identity:Ogrn)=1">У1-12.1.8.3.1: Элемент identity:Props ДОЛЖЕН содержать один [1..1] элемент identity:Ogrn</assert>
			<assert test="count(identity:Ogrnip)=1">У1-12.1.8.3.2: Элемент identity:Props ДОЛЖЕН содержать один [1..1] элемент identity:Ogrnip</assert>
			<assert test="count(identity:Okpo)=[0,1]">У1-12.1.8.3.3: Элемент identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Okpo</assert>
			<assert test="count(identity:Okato)=[0,1]">У1-12.1.8.3.4: Элемент identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Okato</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.8.3.1: Элемент identity:Ogrn должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.8.3.2: Элемент identity:Ogrnip должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo">
			<report test="@nullFlavor">У1-12.1.8.3.3: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.8.3.3: Элемент identity:Okpo должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato">
			<report test="@nullFlavor">У1-12.1.8.3.4: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.8.3.4: Элемент identity:Okato должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/name">
			<report test="@nullFlavor">У1-12.1.8.4: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/name не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.8.4: Элемент name должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom">
			<report test="@nullFlavor">У1-12.1.8.5: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-12.1.8.5: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-12.1.8.5: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-12.1.8.5: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr">
			<report test="@nullFlavor">У1-12.1.8.6: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-12.1.8.6: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-12.1.8.6: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-12.1.8.6.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-12.1.8.6.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-12.1.8.6.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-12.1.8.6.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine">
			<report test="@nullFlavor">У1-12.1.8.6.1: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.8.6.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode">
			<report test="@nullFlavor">У1-12.1.8.6.2: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-12.1.8.6.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-12.1.8.6.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-12.1.8.6.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-12.1.8.6.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-12.1.8.6.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.8.6.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-12.1.8.6.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-12.1.8.6.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-12.1.8.6.4.1: Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-12.1.8.6.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-12.1.8.6.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author">
			<report test="@nullFlavor">У1-13: Элемент ClinicalDocument/author не должен иметь атрибут @nullFlavor</report>
			<assert test="count(time)=1">У1-13.1: Элемент author ДОЛЖЕН содержать один [1..1] элемент time</assert>
			<assert test="count(assignedAuthor)=1">У1-13.2: Элемент author ОБЯЗАН содержать один [1..1] элемент assignedAuthor</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/time">
			<assert test="@nullFlavor='NI'">У1-13.1: Элемент time обязан содержать один атрибут @nullFlavor со значением "NI"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor">
			<report test="@nullFlavor">У1-13.2: Элемент ClinicalDocument/author/assignedAuthor не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[substring(@root, string-length(@root) - 2)='.70'])=1">У1-13.2.1: Элемент assignedAuthor ОБЯЗАН содержать один [1..1] элемент id (Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70)</assert>
			<assert test="count(id[@root='1.2.643.100.3'])=1">У1-13.2.2: Элемент assignedAuthor ОБЯЗАН содержать один [1..1] элемент id</assert>
			<assert test="count(code)=1">У1-13.2.3: Элемент assignedAuthor ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(addr)=[0,1]">У1-13.2.4: Элемент assignedAuthor МОЖЕТ содержать не более одного [0..1] элемента addr</assert>
			<assert test="count(telecom)>=0">У1-13.2.5: Элемент assignedAuthor МОЖЕТ содержать произвольное количество [0..*] элементов telecom</assert>
			<assert test="count(assignedPerson)=1">У1-13.2.6: Элемент assignedAuthor ОБЯЗАН содержать один [1..1] элемент assignedPerson</assert>
			<assert test="count(representedOrganization)=[0,1]">У1-13.2.7: Элемент assignedAuthor МОЖЕТ содержать не более одного [0..1] элемента representedOrganization</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) - 2)='.70']">
			<report test="@nullFlavor">У1-13.2.1: Элемент ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-13.2.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.70$')">У1-13.2.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
			<assert test="@extension!=''">У1-13.2.1: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/id[@root='1.2.643.100.3']">
			<report test="@nullFlavor">У1-13.2.2: Элемент ClinicalDocument/author/assignedAuthor/id[@root='1.2.643.100.3'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root='1.2.643.100.3'">У1-13.2.2: Элемент id обязан содержать один атрибут @root со значением "1.2.643.100.3"</assert>
			<assert test="@extension!=''">У1-13.2.2: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/code">
			<report test="@nullFlavor">У1-13.2.3: Элемент ClinicalDocument/author/assignedAuthor/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-13.2.3: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1002"</assert>
			<assert test="@codeSystemName!=''">У1-13.2.3: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-13.2.3: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-13.2.3: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-13.2.3: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/addr">
			<report test="@nullFlavor">У1-13.2.4: Элемент ClinicalDocument/author/assignedAuthor/addr не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-13.2.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-13.2.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-13.2.4.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-13.2.4.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-13.2.4.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-13.2.4.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/addr/streetAddressLine">
			<report test="@nullFlavor">У1-13.2.4.1: Элемент ClinicalDocument/author/assignedAuthor/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-13.2.4.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/addr/address:stateCode">
			<report test="@nullFlavor">У1-13.2.4.2: Элемент ClinicalDocument/author/assignedAuthor/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-13.2.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-13.2.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-13.2.4.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-13.2.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-13.2.4.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-13.2.4.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-13.2.4.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-13.2.4.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-13.2.4.4.1: Элемент ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-13.2.4.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-13.2.4.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/telecom">
			<report test="@nullFlavor">У1-13.2.5: Элемент ClinicalDocument/author/assignedAuthor/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-13.2.5: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-13.2.5: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-13.2.5: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
			<report test="@nullFlavor">У1-13.2.6: Элемент ClinicalDocument/author/assignedAuthor/assignedPerson не должен иметь атрибут @nullFlavor</report>
			<assert test="count(name)=1">У1-13.2.6.1: Элемент assignedPerson ОБЯЗАН содержать один [1..1] элемент name</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name">
			<report test="@nullFlavor">У1-13.2.6.1: Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name не должен иметь атрибут @nullFlavor</report>
			<assert test="count(family)=1">У1-13.2.6.1.1: Элемент name ОБЯЗАН содержать один [1..1] элемент family</assert>
			<assert test="count(given)=1">У1-13.2.6.1.2: Элемент name ОБЯЗАН содержать один [1..1] элемент given</assert>
			<assert test="count(identity:Patronymic)=[0,1]">У1-13.2.6.1.3: Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/family">
			<report test="@nullFlavor">У1-13.2.6.1.1: Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/family не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-13.2.6.1.1: Элемент family должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/given">
			<report test="@nullFlavor">У1-13.2.6.1.2: Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/given не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-13.2.6.1.2: Элемент given должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic">
			<report test="@nullFlavor">У1-13.2.6.1.3: Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-13.2.6.1.3: Элемент identity:Patronymic должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
			<report test="@nullFlavor">У1-13.2.7: Элемент ClinicalDocument/author/assignedAuthor/representedOrganization не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='ORG'">У1-13.2.7: Элемент representedOrganization обязан содержать один атрибут @classCode со значением "ORG"</assert>
			<assert test="count(id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')])=1">У1-13.2.7.1: Элемент representedOrganization ОБЯЗАН содержать один [1..1] элемент id</assert>
			<assert test="count(name)=1">У1-13.2.7.2: Элемент representedOrganization ОБЯЗАН содержать один [1..1] элемент name</assert>
			<assert test="count(telecom)>=0">У1-13.2.7.3: Элемент representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов telecom</assert>
			<assert test="count(addr)=[0,1]">У1-13.2.7.4: Элемент representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]">
			<report test="@nullFlavor">У1-13.2.7.1: Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-13.2.7.1: Элемент id обязан содержать один атрибут @root с не пустым значением</assert>
			<assert test="count(@extension!='')=[0,1]">У1-13.2.7.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
			<assert test="if (@extension) then @extension!='' else(not(@extension))">У1-13.2.7.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/name">
			<report test="@nullFlavor">У1-13.2.7.2: Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/name не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-13.2.7.2: Элемент name должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/telecom">
			<report test="@nullFlavor">У1-13.2.7.3: Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-13.2.7.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-13.2.7.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-13.2.7.3: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr">
			<report test="@nullFlavor">У1-13.2.7.4: Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-13.2.7.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-13.2.7.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-13.2.7.4.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-13.2.7.4.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-13.2.7.4.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-13.2.7.4.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine">
			<report test="@nullFlavor">У1-13.2.7.4.1: Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-13.2.7.4.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode">
			<report test="@nullFlavor">У1-13.2.7.4.2: Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-13.2.7.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-13.2.7.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-13.2.7.4.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-13.2.7.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-13.2.7.4.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-13.2.7.4.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-13.2.7.4.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-13.2.7.4.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-13.2.7.4.4.1: Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-13.2.7.4.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-13.2.7.4.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian">
			<report test="@nullFlavor">У1-14: Элемент ClinicalDocument/custodian не должен иметь атрибут @nullFlavor</report>
			<assert test="count(assignedCustodian)=1">У1-14.1: Элемент custodian ОБЯЗАН содержать один [1..1] элемент assignedCustodian</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian">
			<report test="@nullFlavor">У1-14.1: Элемент ClinicalDocument/custodian/assignedCustodian не должен иметь атрибут @nullFlavor</report>
			<assert test="count(representedCustodianOrganization)=1">У1-14.1.1: Элемент assignedCustodian ОБЯЗАН содержать один [1..1] элемент representedCustodianOrganization</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
			<report test="@nullFlavor">У1-14.1.1: Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='ORG'">У1-14.1.1: Элемент representedCustodianOrganization обязан содержать один атрибут @classCode со значением "ORG"</assert>
			<assert test="count(id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')])=1">У1-14.1.1.1: Элемент representedCustodianOrganization ОБЯЗАН содержать один [1..1] элемент id</assert>
			<assert test="count(name)=1">У1-14.1.1.2: Элемент representedCustodianOrganization ОБЯЗАН содержать один [1..1] элемент name</assert>
			<assert test="count(telecom)=[0,1]">У1-14.1.1.3: Элемент representedCustodianOrganization МОЖЕТ содержать не более одного [0..1] элемента telecom</assert>
			<assert test="count(addr)=1">У1-14.1.1.4: Элемент representedCustodianOrganization ОБЯЗАН содержать один [1..1] элемент addr</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]">
			<report test="@nullFlavor">У1-14.1.1.1: Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-14.1.1.1: Элемент id обязан содержать один атрибут @root с не пустым значением</assert>
			<assert test="count(@extension!='')=[0,1]">У1-14.1.1.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
			<assert test="if (@extension) then @extension!='' else(not(@extension))">У1-14.1.1.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
			<report test="@nullFlavor">У1-14.1.1.2: Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-14.1.1.2: Элемент name должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom">
			<report test="@nullFlavor">У1-14.1.1.3: Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-14.1.1.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-14.1.1.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-14.1.1.3: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr">
			<report test="@nullFlavor">У1-14.1.1.4: Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-14.1.1.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-14.1.1.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-14.1.1.4.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-14.1.1.4.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-14.1.1.4.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-14.1.1.4.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine">
			<report test="@nullFlavor">У1-14.1.1.4.1: Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-14.1.1.4.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode">
			<report test="@nullFlavor">У1-14.1.1.4.2: Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-14.1.1.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-14.1.1.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-14.1.1.4.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-14.1.1.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-14.1.1.4.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-14.1.1.4.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-14.1.1.4.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-14.1.1.4.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-14.1.1.4.4.1: Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-14.1.1.4.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-14.1.1.4.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']">
			<report test="@nullFlavor">У1-15: Элемент ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(intendedRecipient)=1">У1-15.1: Элемент informationRecipient ОБЯЗАН содержать один [1..1] элемент intendedRecipient</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient">
			<report test="@nullFlavor">У1-15.1: Элемент ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient не должен иметь атрибут @nullFlavor</report>
			<assert test="count(receivedOrganization)=1">У1-15.1.1: Элемент intendedRecipient ОБЯЗАН содержать один [1..1] элемент receivedOrganization</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization">
			<report test="@nullFlavor">У1-15.1.1: Элемент ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[@root='1.2.643.5.1.13'])=1">У1-15.1.1.1: Элемент receivedOrganization ОБЯЗАН содержать один [1..1] элемент id</assert>
			<assert test="count(name)=1">У1-15.1.1.2: Элемент receivedOrganization ОБЯЗАН содержать один [1..1] элемент name</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']">
			<report test="@nullFlavor">У1-15.1.1.1: Элемент ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root='1.2.643.5.1.13'">У1-15.1.1.1: Элемент id обязан содержать один атрибут @root со значением "1.2.643.5.1.13"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name">
			<report test="@nullFlavor">У1-15.1.1.2: Элемент ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-15.1.1.2: Элемент name должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]">
			<report test="@nullFlavor">У1-16: Элемент ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(intendedRecipient)=1">У1-16.1: Элемент informationRecipient ОБЯЗАН содержать один [1..1] элемент intendedRecipient</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient">
			<report test="@nullFlavor">У1-16.1: Элемент ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient не должен иметь атрибут @nullFlavor</report>
			<assert test="count(receivedOrganization)=1">У1-16.1.1: Элемент intendedRecipient ОБЯЗАН содержать один [1..1] элемент receivedOrganization</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization">
			<report test="@nullFlavor">У1-16.1.1: Элемент ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[1])=1">У1-16.1.1.1: Элемент receivedOrganization ДОЛЖЕН содержать один [1..1] элемент id (Уникальный идентификатор получающей организации и (при наличии) уникальный идентификатор структурного подразделения)</assert>
			<assert test="count(name)=1">У1-16.1.1.2: Элемент receivedOrganization ОБЯЗАН содержать один [1..1] элемент name</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][not(@nullFlavor)]">
			<assert test="@root!=''">У1-16.1.1.1: Элемент id должен содержать один атрибут @root с не пустым значением</assert>
			<assert test="count(@extension!='')=[0,1]">У1-16.1.1.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
			<assert test="if (@extension) then @extension!='' else(not(@extension))">У1-16.1.1.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][@nullFlavor]">
			<report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @root</report>
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name">
			<report test="@nullFlavor">У1-16.1.1.2: Элемент ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-16.1.1.2: Элемент name должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator">
			<report test="@nullFlavor">У1-17: Элемент ClinicalDocument/legalAuthenticator не должен иметь атрибут @nullFlavor</report>
			<assert test="count(time)=1">У1-17.1: Элемент legalAuthenticator ДОЛЖЕН содержать один [1..1] элемент time</assert>
			<assert test="count(signatureCode)=1">У1-17.2: Элемент legalAuthenticator ДОЛЖЕН содержать один [1..1] элемент signatureCode</assert>
			<assert test="count(assignedEntity)=1">У1-17.3: Элемент legalAuthenticator ОБЯЗАН содержать один [1..1] элемент assignedEntity</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/time">
			<assert test="@nullFlavor='NI'">У1-17.1: Элемент time обязан содержать один атрибут @nullFlavor со значением "NI"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/signatureCode">
			<assert test="@nullFlavor='NI'">У1-17.2: Элемент signatureCode обязан содержать один атрибут @nullFlavor со значением "NI"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
			<report test="@nullFlavor">У1-17.3: Элемент ClinicalDocument/legalAuthenticator/assignedEntity не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[substring(@root, string-length(@root) - 2)='.70'])=1">У1-17.3.1: Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент id (Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70)</assert>
			<assert test="count(id[@root='1.2.643.100.3'])=1">У1-17.3.2: Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент id</assert>
			<assert test="count(code)=1">У1-17.3.3: Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(addr)=[0,1]">У1-17.3.4: Элемент assignedEntity МОЖЕТ содержать не более одного [0..1] элемента addr</assert>
			<assert test="count(telecom)>=0">У1-17.3.5: Элемент assignedEntity МОЖЕТ содержать произвольное количество [0..*] элементов telecom</assert>
			<assert test="count(assignedPerson)=1">У1-17.3.6: Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент assignedPerson</assert>
			<assert test="count(representedOrganization)=[0,1]">У1-17.3.7: Элемент assignedEntity МОЖЕТ содержать не более одного [0..1] элемента representedOrganization</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root, string-length(@root) - 2)='.70']">
			<report test="@nullFlavor">У1-17.3.1: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root, string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-17.3.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.70$')">У1-17.3.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
			<assert test="@extension!=''">У1-17.3.1: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[@root='1.2.643.100.3']">
			<report test="@nullFlavor">У1-17.3.2: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[@root='1.2.643.100.3'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root='1.2.643.100.3'">У1-17.3.2: Элемент id обязан содержать один атрибут @root со значением "1.2.643.100.3"</assert>
			<assert test="@extension!=''">У1-17.3.2: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
			<report test="@nullFlavor">У1-17.3.3: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-17.3.3: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1002"</assert>
			<assert test="@codeSystemName!=''">У1-17.3.3: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-17.3.3: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-17.3.3: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-17.3.3: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr">
			<report test="@nullFlavor">У1-17.3.4: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-17.3.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-17.3.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-17.3.4.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-17.3.4.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-17.3.4.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-17.3.4.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine">
			<report test="@nullFlavor">У1-17.3.4.1: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-17.3.4.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode">
			<report test="@nullFlavor">У1-17.3.4.2: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-17.3.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-17.3.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-17.3.4.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-17.3.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-17.3.4.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-17.3.4.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-17.3.4.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-17.3.4.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-17.3.4.4.1: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-17.3.4.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-17.3.4.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/telecom">
			<report test="@nullFlavor">У1-17.3.5: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-17.3.5: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-17.3.5: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-17.3.5: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
			<report test="@nullFlavor">У1-17.3.6: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor</report>
			<assert test="count(name)=1">У1-17.3.6.1: Элемент assignedPerson ОБЯЗАН содержать один [1..1] элемент name</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name">
			<report test="@nullFlavor">У1-17.3.6.1: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor</report>
			<assert test="count(family)=1">У1-17.3.6.1.1: Элемент name ОБЯЗАН содержать один [1..1] элемент family</assert>
			<assert test="count(given)=1">У1-17.3.6.1.2: Элемент name ОБЯЗАН содержать один [1..1] элемент given</assert>
			<assert test="count(identity:Patronymic)=[0,1]">У1-17.3.6.1.3: Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family">
			<report test="@nullFlavor">У1-17.3.6.1.1: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-17.3.6.1.1: Элемент family должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given">
			<report test="@nullFlavor">У1-17.3.6.1.2: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-17.3.6.1.2: Элемент given должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic">
			<report test="@nullFlavor">У1-17.3.6.1.3: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-17.3.6.1.3: Элемент identity:Patronymic должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
			<report test="@nullFlavor">У1-17.3.7: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='ORG'">У1-17.3.7: Элемент representedOrganization обязан содержать один атрибут @classCode со значением "ORG"</assert>
			<assert test="count(id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')])=1">У1-17.3.7.1: Элемент representedOrganization ОБЯЗАН содержать один [1..1] элемент id</assert>
			<assert test="count(name)=1">У1-17.3.7.2: Элемент representedOrganization ОБЯЗАН содержать один [1..1] элемент name</assert>
			<assert test="count(telecom)>=0">У1-17.3.7.3: Элемент representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов telecom</assert>
			<assert test="count(addr)=[0,1]">У1-17.3.7.4: Элемент representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]">
			<report test="@nullFlavor">У1-17.3.7.1: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-17.3.7.1: Элемент id обязан содержать один атрибут @root с не пустым значением</assert>
			<assert test="count(@extension!='')=[0,1]">У1-17.3.7.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
			<assert test="if (@extension) then @extension!='' else(not(@extension))">У1-17.3.7.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name">
			<report test="@nullFlavor">У1-17.3.7.2: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-17.3.7.2: Элемент name должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom">
			<report test="@nullFlavor">У1-17.3.7.3: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-17.3.7.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-17.3.7.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-17.3.7.3: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr">
			<report test="@nullFlavor">У1-17.3.7.4: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-17.3.7.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-17.3.7.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-17.3.7.4.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-17.3.7.4.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-17.3.7.4.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-17.3.7.4.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine">
			<report test="@nullFlavor">У1-17.3.7.4.1: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-17.3.7.4.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode">
			<report test="@nullFlavor">У1-17.3.7.4.2: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-17.3.7.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-17.3.7.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-17.3.7.4.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-17.3.7.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-17.3.7.4.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-17.3.7.4.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-17.3.7.4.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-17.3.7.4.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-17.3.7.4.4.1: Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-17.3.7.4.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-17.3.7.4.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']">
			<report test="@nullFlavor">У1-18: Элемент ClinicalDocument/participant[@typeCode='IND'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='IND'">У1-18: Элемент participant обязан содержать один атрибут @typeCode со значением "IND"</assert>
			<assert test="count(associatedEntity)=1">У1-18.1: Элемент participant ОБЯЗАН содержать один [1..1] элемент associatedEntity</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity">
			<report test="@nullFlavor">У1-18.1: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='GUAR'">У1-18.1: Элемент associatedEntity обязан содержать один атрибут @classCode со значением "GUAR"</assert>
			<assert test="count(code)=1">У1-18.1.1: Элемент associatedEntity ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(identity:DocInfo)=1">У1-18.1.2: Элемент associatedEntity ДОЛЖЕН содержать один [1..1] элемент identity:DocInfo</assert>
			<assert test="count(scopingOrganization)=[0,1]">У1-18.1.3: Элемент associatedEntity МОЖЕТ содержать не более одного [0..1] элемента scopingOrganization</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/code">
			<report test="@nullFlavor">У1-18.1.1: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1039'">У1-18.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1039"</assert>
			<assert test="@codeSystemName!=''">У1-18.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-18.1.1: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-18.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-18.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo[not(@nullFlavor)]">
			<assert test="count(identity:IdentityDocType)=1">У1-18.1.2.1: Элемент identity:DocInfo ОБЯЗАН содержать один [1..1] элемент identity:IdentityDocType</assert>
			<assert test="count(identity:InsurancePolicyType)=1">У1-18.1.2.2: Элемент identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:InsurancePolicyType</assert>
			<assert test="count(identity:Series)=1">У1-18.1.2.3: Элемент identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:Series</assert>
			<assert test="count(identity:Number)=1">У1-18.1.2.4: Элемент identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:Number</assert>
			<assert test="count(identity:INN)=1">У1-18.1.2.5: Элемент identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:INN</assert>
			<assert test="count(identity:effectiveTime)=1">У1-18.1.2.6: Элемент identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:effectiveTime</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType">
			<report test="@nullFlavor">У1-18.1.2.1: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.724'">У1-18.1.2.1: Элемент identity:IdentityDocType обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.724"</assert>
			<assert test="@codeSystemName!=''">У1-18.1.2.1: Элемент identity:IdentityDocType обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-18.1.2.1: Элемент identity:IdentityDocType обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-18.1.2.1: Элемент identity:IdentityDocType обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-18.1.2.1: Элемент identity:IdentityDocType обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1035'">У1-18.1.2.2: Элемент identity:InsurancePolicyType должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1035"</assert>
			<assert test="@codeSystemName!=''">У1-18.1.2.2: Элемент identity:InsurancePolicyType должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-18.1.2.2: Элемент identity:InsurancePolicyType должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-18.1.2.2: Элемент identity:InsurancePolicyType должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-18.1.2.2: Элемент identity:InsurancePolicyType должен содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[@nullFlavor]">
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:Series[not(@nullFlavor)]">
			<assert test=".!=''">У1-18.1.2.3: Элемент identity:Series должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:Number[not(@nullFlavor)]">
			<assert test=".!=''">У1-18.1.2.4: Элемент identity:Number должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:INN[not(@nullFlavor)]">
			<assert test=".!=''">У1-18.1.2.5: Элемент identity:INN должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]">
			<assert test="count(identity:low)=1">У1-18.1.2.6.1: Элемент identity:effectiveTime ОБЯЗАН содержать один [1..1] элемент identity:low</assert>
			<assert test="count(identity:high)=1">У1-18.1.2.6.2: Элемент identity:effectiveTime ДОЛЖЕН содержать один [1..1] элемент identity:high</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low">
			<report test="@nullFlavor">У1-18.1.2.6.1: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-18.1.2.6.1: Элемент identity:low обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]">
			<assert test="@value!=''">У1-18.1.2.6.2: Элемент identity:high должен содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization">
			<report test="@nullFlavor">У1-18.1.3: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[1])=1">У1-18.1.3.1: Элемент scopingOrganization ДОЛЖЕН содержать один [1..1] элемент id (Уникальный идентификатор страховой компании)</assert>
			<assert test="count(name)=1">У1-18.1.3.2: Элемент scopingOrganization ОБЯЗАН содержать один [1..1] элемент name</assert>
			<assert test="count(telecom)>=1">У1-18.1.3.3: Элемент scopingOrganization ДОЛЖЕН содержать не менее одного [1..*] элемента telecom</assert>
			<assert test="count(addr)=1">У1-18.1.3.4: Элемент scopingOrganization ДОЛЖЕН содержать один [1..1] элемент addr</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/id[1][not(@nullFlavor)]">
			<assert test="@root='1.2.643.5.1.13.13.99.2.183'">У1-18.1.3.1: Элемент id должен содержать один атрибут @root со значением "1.2.643.5.1.13.13.99.2.183"</assert>
			<assert test="@extension!=''">У1-18.1.3.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/id[1][@nullFlavor]">
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/name">
			<report test="@nullFlavor">У1-18.1.3.2: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/name не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-18.1.3.2: Элемент name должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/telecom[not(@nullFlavor)]">
			<assert test="count(@use!='')=[0,1]">У1-18.1.3.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-18.1.3.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-18.1.3.3: Элемент telecom должен содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/telecom[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr[not(@nullFlavor)]">
			<assert test="count(@use!='')=[0,1]">У1-18.1.3.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-18.1.3.4: Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="count(streetAddressLine)=1">У1-18.1.3.4.1: Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine</assert>
			<assert test="count(address:stateCode)=1">У1-18.1.3.4.2: Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode</assert>
			<assert test="count(postalCode)=1">У1-18.1.3.4.3: Элемент addr ДОЛЖЕН содержать один [1..1] элемент postalCode</assert>
			<assert test="count(fias:Address)=1">У1-18.1.3.4.4: Элемент addr ДОЛЖЕН содержать один [1..1] элемент fias:Address</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/streetAddressLine">
			<report test="@nullFlavor">У1-18.1.3.4.1: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/streetAddressLine не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-18.1.3.4.1: Элемент streetAddressLine должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/address:stateCode">
			<report test="@nullFlavor">У1-18.1.3.4.2: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/address:stateCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">У1-18.1.3.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
			<assert test="@codeSystemName!=''">У1-18.1.3.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-18.1.3.4.2: Элемент address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-18.1.3.4.2: Элемент address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-18.1.3.4.2: Элемент address:stateCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/postalCode[not(@nullFlavor)]">
			<assert test=".!=''">У1-18.1.3.4.3: Элемент postalCode должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address[not(@nullFlavor)]">
			<assert test="count(fias:AOGUID)=1">У1-18.1.3.4.4.1: Элемент fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID</assert>
			<assert test="count(fias:HOUSEGUID)=1">У1-18.1.3.4.4.2: Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID">
			<report test="@nullFlavor">У1-18.1.3.4.4.1: Элемент ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-18.1.3.4.4.1: Элемент fias:AOGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
			<assert test=".!=''">У1-18.1.3.4.4.2: Элемент fias:HOUSEGUID должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf">
			<report test="@nullFlavor">У1-19: Элемент ClinicalDocument/documentationOf не должен иметь атрибут @nullFlavor</report>
			<assert test="count(serviceEvent)=1">У1-19.1: Элемент documentationOf ОБЯЗАН содержать один [1..1] элемент serviceEvent</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent">
			<report test="@nullFlavor">У1-19.1: Элемент ClinicalDocument/documentationOf/serviceEvent не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У1-19.1.1: Элемент serviceEvent ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(effectiveTime)=1">У1-19.1.2: Элемент serviceEvent ОБЯЗАН содержать один [1..1] элемент effectiveTime</assert>
			<assert test="count(medService:serviceForm)=[0,1]">У1-19.1.3: Элемент serviceEvent МОЖЕТ содержать не более одного [0..1] элемента medService:serviceForm</assert>
			<assert test="count(medService:serviceType)=[0,1]">У1-19.1.4: Элемент serviceEvent МОЖЕТ содержать не более одного [0..1] элемента medService:serviceType</assert>
			<assert test="count(medService:serviceCond)=[0,1]">У1-19.1.5: Элемент serviceEvent МОЖЕТ содержать не более одного [0..1] элемента medService:serviceCond</assert>
			<assert test="count(performer)>=1">У1-19.1.6: Элемент serviceEvent ОБЯЗАН содержать не менее одного [1..*] элемента performer</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/code">
			<report test="@nullFlavor">У1-19.1.1: Элемент ClinicalDocument/documentationOf/serviceEvent/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='64'">У1-19.1.1: Элемент code обязан содержать один атрибут @code со значением "64"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.726'">У1-19.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.726"</assert>
			<assert test="@codeSystemName!=''">У1-19.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У1-19.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-19.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
			<report test="@nullFlavor">У1-19.1.2: Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="count(low)=1">У1-19.1.2.1: Элемент effectiveTime ОБЯЗАН содержать один [1..1] элемент low</assert>
			<assert test="count(high)=[0,1]">У1-19.1.2.2: Элемент effectiveTime МОЖЕТ содержать не более одного [0..1] элемента high</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low">
			<report test="@nullFlavor">У1-19.1.2.1: Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-19.1.2.1: Элемент low обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high">
			<report test="@nullFlavor">У1-19.1.2.2: Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-19.1.2.2: Элемент high обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm">
			<report test="@nullFlavor">У1-19.1.3: Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1551','1.2.643.5.1.13.2.1.1.568','1.2.643.5.1.13.13.99.2.377']">У1-19.1.3: Элемент medService:serviceForm обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1551"</assert>
			<assert test="@codeSystemName!=''">У1-19.1.3: Элемент medService:serviceForm обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-19.1.3: Элемент medService:serviceForm обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-19.1.3: Элемент medService:serviceForm обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-19.1.3: Элемент medService:serviceForm обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceType">
			<report test="@nullFlavor">У1-19.1.4: Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1034'">У1-19.1.4: Элемент medService:serviceType обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1034"</assert>
			<assert test="@codeSystemName!=''">У1-19.1.4: Элемент medService:serviceType обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-19.1.4: Элемент medService:serviceType обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-19.1.4: Элемент medService:serviceType обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-19.1.4: Элемент medService:serviceType обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond">
			<report test="@nullFlavor">У1-19.1.5: Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.322','1.2.643.5.1.13.2.1.1.103']">У1-19.1.5: Элемент medService:serviceCond обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.322"</assert>
			<assert test="@codeSystemName!=''">У1-19.1.5: Элемент medService:serviceCond обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-19.1.5: Элемент medService:serviceCond обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-19.1.5: Элемент medService:serviceCond обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-19.1.5: Элемент medService:serviceCond обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
			<report test="@nullFlavor">У1-19.1.6: Элемент ClinicalDocument/documentationOf/serviceEvent/performer не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode!=''">У1-19.1.6: Элемент performer обязан содержать один атрибут @typeCode с не пустым значением</assert>
			<assert test="@typeCode=['PPRF','SPRF']">У1-19.1.6: Элемент performer обязан содержать один атрибут @typeCode с не пустым значением; допустимые значения: 'PPRF','SPRF'</assert>
			<assert test="count(functionCode)=1">У1-19.1.6.1: Элемент performer ОБЯЗАН содержать один [1..1] элемент functionCode</assert>
			<assert test="count(assignedEntity)=1">У1-19.1.6.2: Элемент performer ОБЯЗАН содержать один [1..1] элемент assignedEntity</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/functionCode">
			<report test="@nullFlavor">У1-19.1.6.1: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.368','1.2.643.5.1.13.2.1.1.734']">У1-19.1.6.1: Элемент functionCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.368"</assert>
			<assert test="@codeSystemName!=''">У1-19.1.6.1: Элемент functionCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-19.1.6.1: Элемент functionCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-19.1.6.1: Элемент functionCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-19.1.6.1: Элемент functionCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
			<report test="@nullFlavor">У1-19.1.6.2: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[1])=1">У1-19.1.6.2.1: Элемент assignedEntity ДОЛЖЕН содержать один [1..1] элемент id (Уникальный идентификатор участника документируемого события в МИС)</assert>
			<assert test="count(code)=1">У1-19.1.6.2.2: Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(telecom)=[0,1]">У1-19.1.6.2.3: Элемент assignedEntity МОЖЕТ содержать не более одного [0..1] элемента telecom</assert>
			<assert test="count(assignedPerson)=1">У1-19.1.6.2.4: Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент assignedPerson</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1][not(@nullFlavor)]">
			<assert test="@root!=''">У1-19.1.6.2.1: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.70$')">У1-19.1.6.2.1: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
			<assert test="@extension!=''">У1-19.1.6.2.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1][@nullFlavor]">
			<report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @root</report>
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code">
			<report test="@nullFlavor">У1-19.1.6.2.2: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У1-19.1.6.2.2: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1002"</assert>
			<assert test="@codeSystemName!=''">У1-19.1.6.2.2: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-19.1.6.2.2: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-19.1.6.2.2: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-19.1.6.2.2: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/telecom">
			<report test="@nullFlavor">У1-19.1.6.2.3: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У1-19.1.6.2.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У1-19.1.6.2.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У1-19.1.6.2.3: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
			<report test="@nullFlavor">У1-19.1.6.2.4: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor</report>
			<assert test="count(name)=1">У1-19.1.6.2.4.1: Элемент assignedPerson ОБЯЗАН содержать один [1..1] элемент name</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name">
			<report test="@nullFlavor">У1-19.1.6.2.4.1: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor</report>
			<assert test="count(family)=1">У1-19.1.6.2.4.1.1: Элемент name ОБЯЗАН содержать один [1..1] элемент family</assert>
			<assert test="count(given)=1">У1-19.1.6.2.4.1.2: Элемент name ОБЯЗАН содержать один [1..1] элемент given</assert>
			<assert test="count(identity:Patronymic)=[0,1]">У1-19.1.6.2.4.1.3: Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/family">
			<report test="@nullFlavor">У1-19.1.6.2.4.1.1: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/family не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-19.1.6.2.4.1.1: Элемент family должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/given">
			<report test="@nullFlavor">У1-19.1.6.2.4.1.2: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/given не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-19.1.6.2.4.1.2: Элемент given должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/identity:Patronymic">
			<report test="@nullFlavor">У1-19.1.6.2.4.1.3: Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/identity:Patronymic не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У1-19.1.6.2.4.1.3: Элемент identity:Patronymic должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf">
			<report test="@nullFlavor">У1-20: Элемент ClinicalDocument/componentOf не должен иметь атрибут @nullFlavor</report>
			<assert test="count(encompassingEncounter)=1">У1-20.1: Элемент componentOf ОБЯЗАН содержать один [1..1] элемент encompassingEncounter</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter">
			<report test="@nullFlavor">У1-20.1: Элемент ClinicalDocument/componentOf/encompassingEncounter не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[substring(@root, string-length(@root) - 2)='.15'])=1">У1-20.1.1: Элемент encompassingEncounter ОБЯЗАН содержать один [1..1] элемент id (Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15)</assert>
			<assert test="count(id[2])=1">У1-20.1.2: Элемент encompassingEncounter ДОЛЖЕН содержать один [1..1] элемент id (Уникальный идентификатор случая оказания медицинской помощи (номер истории болезни, амбулаторной карты))</assert>
			<assert test="count(code)=1">У1-20.1.3: Элемент encompassingEncounter ДОЛЖЕН содержать один [1..1] элемент code</assert>
			<assert test="count(medService:DocType)=[0,1]">У1-20.1.4: Элемент encompassingEncounter МОЖЕТ содержать не более одного [0..1] элемента medService:DocType</assert>
			<assert test="count(effectiveTime)=[0,1]">У1-20.1.5: Элемент encompassingEncounter МОЖЕТ содержать не более одного [0..1] элемента effectiveTime</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter[code/@code='3']">
			<assert test="count(medService:DocType)=1">У1-20.1.4: Элемент encompassingEncounter МОЖЕТ содержать не более одного [0..1] элемента medService:DocType; Если атрибут ClinicalDocument/componentOf/encompassingEncounter/code/@code представлен со значением "3", то элемент обязан быть представлен</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter[code/@code!='3']">
			<assert test="count(medService:DocType)=0">У1-20.1.4: Элемент encompassingEncounter МОЖЕТ содержать не более одного [0..1] элемента medService:DocType; Если атрибут ClinicalDocument/componentOf/encompassingEncounter/code/@code представлен со значением "3", то элемент обязан быть представлен; иначе: должен отсутствовать</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root, string-length(@root) - 2)='.15']">
			<report test="@nullFlavor">У1-20.1.1: Элемент ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root, string-length(@root) - 2)='.15'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У1-20.1.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.15$')">У1-20.1.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15</assert>
			<assert test="@extension!=''">У1-20.1.1: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/id[2][not(@nullFlavor)]">
			<assert test="@root!=''">У1-20.1.2: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.(16|17)$')">У1-20.1.2: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17</assert>
			<assert test="@extension!=''">У1-20.1.2: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/id[2][@nullFlavor]">
			<report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @root</report>
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/code[not(@nullFlavor)]">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.723'">У1-20.1.3: Элемент code должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.723"</assert>
			<assert test="@codeSystemName!=''">У1-20.1.3: Элемент code должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-20.1.3: Элемент code должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-20.1.3: Элемент code должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-20.1.3: Элемент code должен содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/code[@nullFlavor]">
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/medService:DocType">
			<report test="@nullFlavor">У1-20.1.4: Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У1-20.1.4: Элемент medService:DocType обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1522"</assert>
			<assert test="@codeSystemName!=''">У1-20.1.4: Элемент medService:DocType обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У1-20.1.4: Элемент medService:DocType обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У1-20.1.4: Элемент medService:DocType обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У1-20.1.4: Элемент medService:DocType обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
			<report test="@nullFlavor">У1-20.1.5: Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="count(low)=1">У1-20.1.5.1: Элемент effectiveTime ОБЯЗАН содержать один [1..1] элемент low</assert>
			<assert test="count(high)=[0,1]">У1-20.1.5.2: Элемент effectiveTime МОЖЕТ содержать не более одного [0..1] элемента high</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low">
			<report test="@nullFlavor">У1-20.1.5.1: Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-20.1.5.1: Элемент low обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high">
			<report test="@nullFlavor">У1-20.1.5.2: Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У1-20.1.5.2: Элемент high обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component">
			<report test="@nullFlavor">У1-21: Элемент ClinicalDocument/component не должен иметь атрибут @nullFlavor</report>
			<assert test="count(structuredBody)=1">У1-21.1: Элемент component ОБЯЗАН содержать один [1..1] элемент structuredBody</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody">
			<report test="@nullFlavor">У1-21.1: Элемент ClinicalDocument/component/structuredBody не должен иметь атрибут @nullFlavor</report>
			<assert test="count(component[section/code/@code='PATINFO'])=[0,1]">У2-1: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='COMPLNTS'])=[0,1]">У2-2: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='ANAM'])=[0,1]">У2-3: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='LANAM'])=[0,1]">У2-4: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='EXAMINFO'])=1">У2-5: Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component</assert>
			<assert test="count(component[section/code/@code='VITALPARAM'])=[0,1]">У2-6: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='SCORES'])=[0,1]">У2-7: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='DGN'])=1">У2-8: Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component</assert>
			<assert test="count(component[section/code/@code='MEDINTERVENTIONS'])=[0,1]">У2-9: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='PLANACTIVE'])=[0,1]">У2-10: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='PRESCRIBE'])=[0,1]">У2-11: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='SERVICES'])=[0,1]">У2-12: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='LINKDOCS'])=[0,1]">У2-13: Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']">
			<report test="@nullFlavor">У2-1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-1.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section">
			<report test="@nullFlavor">У2-1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-1.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-1.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-1.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='6042'])=[0,1]">У3-1: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8083'])=[0,1]">У3-2: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='12158'])=[0,1]">У3-3: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='9069'])=[0,1]">У3-4: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='11034'])=[0,1]">У3-5: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='12524'])=[0,1]">У3-6: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='12088'])=[0,1]">У3-7: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='12159'])=[0,1]">У3-8: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='4080'])=[0,1]">У3-9: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8047'])=[0,1]">У3-10: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='12523'])=[0,1]">У3-11: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8075'])=[0,1]">У3-12: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='12140'])=[0,1]">У3-13: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/code">
			<report test="@nullFlavor">У2-1.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='PATINFO'">У2-1.1.1: Элемент code обязан содержать один атрибут @code со значением "PATINFO"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-1.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-1.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-1.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-1.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/title">
			<report test="@nullFlavor">У2-1.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-1.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/text">
			<report test="@nullFlavor">У2-1.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-1.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']">
			<report test="@nullFlavor">У3-1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-1.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation">
			<report test="@nullFlavor">У3-1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-1.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-1.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-1.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-1.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation/code">
			<report test="@nullFlavor">У3-1.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='6042'">У3-1.1.1: Элемент code обязан содержать один атрибут @code со значением "6042"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-1.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-1.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-1.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation/value">
			<report test="@nullFlavor">У3-1.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-1.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.1057'">У3-1.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.1057"</assert>
			<assert test="@codeSystemName!=''">У3-1.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-1.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-1.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-1.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="count(originalText)=[0,1]">У3-1.1.2.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента originalText</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation/value[@code='5']">
			<assert test="count(originalText)=1">У3-1.1.2.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента originalText; Если атрибут value/@code представлен со значением '5', то элемент обязан быть представлен</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation/value/originalText">
			<report test="@nullFlavor">У3-1.1.2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='6042']/observation/value/originalText не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-1.1.2.1: Элемент originalText должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']">
			<report test="@nullFlavor">У3-2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-2.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']/observation">
			<report test="@nullFlavor">У3-2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-2.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-2.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-2.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(text)=[0,1]">У3-2.1.2: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента text</assert>
			<assert test="count(value)=1">У3-2.1.3: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']/observation/code">
			<report test="@nullFlavor">У3-2.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8083'">У3-2.1.1: Элемент code обязан содержать один атрибут @code со значением "8083"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-2.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-2.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-2.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']/observation/text">
			<report test="@nullFlavor">У3-2.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']/observation/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-2.1.2: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']/observation/value">
			<report test="@nullFlavor">У3-2.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8083']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='BL'">У3-2.1.3: Элемент value обязан содержать один атрибут @xsi:type со значением "BL"</assert>
			<assert test="@value!=''">У3-2.1.3: Элемент value обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12158']">
			<report test="@nullFlavor">У3-3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12158'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-3.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12158']/observation">
			<report test="@nullFlavor">У3-3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12158']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-3.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-3.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-3.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-3.1.2: Элемент observation ДОЛЖЕН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12158']/observation/code">
			<report test="@nullFlavor">У3-3.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12158']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12158'">У3-3.1.1: Элемент code обязан содержать один атрибут @code со значением "12158"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-3.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-3.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-3.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12158']/observation/value[not(@nullFlavor)]">
			<assert test="@xsi:type='CD'">У3-3.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.545'">У3-3.1.2: Элемент value должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.545"</assert>
			<assert test="@codeSystemName!=''">У3-3.1.2: Элемент value должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-3.1.2: Элемент value должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-3.1.2: Элемент value должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-3.1.2: Элемент value должен содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12158']/observation/value[@nullFlavor]">
			<assert test="@xsi:type='CD'">У3-3.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
			<assert test="@nullFlavor=['UNK','NA']">Атрибут nullFlavor должен быть представлен со значениями 'UNK','NA'</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='9069']">
			<report test="@nullFlavor">У3-4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='9069'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-4.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='9069']/observation">
			<report test="@nullFlavor">У3-4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='9069']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-4.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-4.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-4.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-4.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='9069']/observation/code">
			<report test="@nullFlavor">У3-4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='9069']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='9069'">У3-4.1.1: Элемент code обязан содержать один атрибут @code со значением "9069"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='9069']/observation/value">
			<report test="@nullFlavor">У3-4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='9069']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-4.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.15','1.2.643.5.1.13.2.1.1.1504.6201']">У3-4.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.15"</assert>
			<assert test="@codeSystemName!=''">У3-4.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-4.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-4.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-4.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='11034']">
			<report test="@nullFlavor">У3-5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='11034'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-5.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='11034']/observation">
			<report test="@nullFlavor">У3-5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='11034']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-5.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-5.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-5.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-5.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='11034']/observation/code">
			<report test="@nullFlavor">У3-5.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='11034']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='11034'">У3-5.1.1: Элемент code обязан содержать один атрибут @code со значением "11034"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-5.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-5.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-5.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='11034']/observation/value">
			<report test="@nullFlavor">У3-5.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='11034']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-5.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.16','1.2.643.5.1.13.2.1.1.1504.62']">У3-5.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.16"</assert>
			<assert test="@codeSystemName!=''">У3-5.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-5.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-5.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-5.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']">
			<report test="@nullFlavor">У3-6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-6.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation">
			<report test="@nullFlavor">У3-6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-6.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-6.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-6.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-6.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation/code">
			<report test="@nullFlavor">У3-6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12524'">У3-6.1.1: Элемент code обязан содержать один атрибут @code со значением "12524"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-6.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-6.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-6.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation/value">
			<report test="@nullFlavor">У3-6.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-6.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1038'">У3-6.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1038"</assert>
			<assert test="@codeSystemName!=''">У3-6.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-6.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@code!=['24','25','34']">У3-6.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением; элемент не может быть заполнен значениями: '24','25','34'</assert>
			<assert test="@codeSystemVersion!=''">У3-6.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-6.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="count(originalText)=[0,1]">У3-6.1.2.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента originalText</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation/value[@code='10']">
			<assert test="count(originalText)=0">У3-6.1.2.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента originalText; Если атрибут value/@code представлен со значением "10", то элемент не должен быть представлен</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation/value/originalText">
			<report test="@nullFlavor">У3-6.1.2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12524']/observation/value/originalText не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-6.1.2.1: Элемент originalText должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12088']">
			<report test="@nullFlavor">У3-7: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12088'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-7.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12088']/observation">
			<report test="@nullFlavor">У3-7.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12088']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-7.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-7.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-7.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-7.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12088']/observation/code">
			<report test="@nullFlavor">У3-7.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12088']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12088'">У3-7.1.1: Элемент code обязан содержать один атрибут @code со значением "12088"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-7.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-7.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-7.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12088']/observation/value">
			<report test="@nullFlavor">У3-7.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12088']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-7.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1038'">У3-7.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1038"</assert>
			<assert test="@codeSystemName!=''">У3-7.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-7.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением; допустимые значения: "24", "25", "34"</assert>
			<assert test="@code=['24','25','34']">У3-7.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением; допустимые значения: "24", "25", "34"</assert>
			<assert test="@codeSystemVersion!=''">У3-7.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-7.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12159']">
			<report test="@nullFlavor">У3-8: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12159'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-8.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12159']/observation">
			<report test="@nullFlavor">У3-8.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12159']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-8.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-8.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-8.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-8.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12159']/observation/code">
			<report test="@nullFlavor">У3-8.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12159']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12159'">У3-8.1.1: Элемент code обязан содержать один атрибут @code со значением "12159"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-8.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-8.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-8.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12159']/observation/value">
			<report test="@nullFlavor">У3-8.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12159']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-8.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-8.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='4080']">
			<report test="@nullFlavor">У3-9: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='4080'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-9.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='4080']/observation">
			<report test="@nullFlavor">У3-9.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='4080']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-9.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-9.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-9.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-9.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='4080']/observation/code">
			<report test="@nullFlavor">У3-9.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='4080']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='4080'">У3-9.1.1: Элемент code обязан содержать один атрибут @code со значением "4080"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-9.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-9.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-9.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='4080']/observation/value">
			<report test="@nullFlavor">У3-9.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='4080']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-9.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-9.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8047']">
			<report test="@nullFlavor">У3-10: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8047'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-10.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8047']/observation">
			<report test="@nullFlavor">У3-10.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8047']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-10.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-10.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-10.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-10.1.2: Элемент observation ДОЛЖЕН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8047']/observation/code">
			<report test="@nullFlavor">У3-10.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8047']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8047'">У3-10.1.1: Элемент code обязан содержать один атрибут @code со значением "8047"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-10.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-10.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-10.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8047']/observation/value[not(@nullFlavor)]">
			<assert test="@xsi:type='BL'">У3-10.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "BL"</assert>
			<assert test="@value!=''">У3-10.1.2: Элемент value должен содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8047']/observation/value[@nullFlavor]">
			<assert test="@xsi:type='BL'">У3-10.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "BL"</assert>
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
			<report test="@nullFlavor != 'UNK'">У1-7: Допустимые значения для атрибута  nullFlavor: 'UNK'</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12523']">
			<report test="@nullFlavor">У3-11: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12523'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-11.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12523']/observation">
			<report test="@nullFlavor">У3-11.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12523']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-11.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-11.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-11.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-11.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12523']/observation/code">
			<report test="@nullFlavor">У3-11.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12523']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12523'">У3-11.1.1: Элемент code обязан содержать один атрибут @code со значением "12523"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-11.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-11.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-11.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12523']/observation/value">
			<report test="@nullFlavor">У3-11.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12523']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-11.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']">У3-11.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1053"</assert>
			<assert test="@codeSystemName!=''">У3-11.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-11.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-11.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-11.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8075']">
			<report test="@nullFlavor">У3-12: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8075'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-12.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8075']/observation">
			<report test="@nullFlavor">У3-12.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8075']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-12.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-12.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-12.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-12.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8075']/observation/code">
			<report test="@nullFlavor">У3-12.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8075']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8075'">У3-12.1.1: Элемент code обязан содержать один атрибут @code со значением "8075"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-12.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-12.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-12.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8075']/observation/value">
			<report test="@nullFlavor">У3-12.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='8075']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-12.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-12.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']">
			<report test="@nullFlavor">У3-13: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-13.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation">
			<report test="@nullFlavor">У3-13.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-13.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-13.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-13.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-13.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation/code">
			<report test="@nullFlavor">У3-13.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12140'">У3-13.1.1: Элемент code обязан содержать один атрибут @code со значением "12140"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-13.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-13.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-13.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation/value">
			<report test="@nullFlavor">У3-13.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-13.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1497'">У3-13.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1497"</assert>
			<assert test="@codeSystemName!=''">У3-13.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-13.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-13.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-13.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="count(originalText)=[0,1]">У3-13.1.2.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента originalText</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation/value[@code='5']">
			<assert test="count(originalText)=1">У3-13.1.2.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента originalText; Если атрибут value/@code представлен со значением "5", то элемент обязан быть представлен</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation/value/originalText">
			<report test="@nullFlavor">У3-13.1.2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PATINFO']/section/entry[observation/code/@code='12140']/observation/value/originalText не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-13.1.2.1: Элемент originalText должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']">
			<report test="@nullFlavor">У2-2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-2.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']/section">
			<report test="@nullFlavor">У2-2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-2.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-2.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-2.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']/section/code">
			<report test="@nullFlavor">У2-2.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='COMPLNTS'">У2-2.1.1: Элемент code обязан содержать один атрибут @code со значением "COMPLNTS"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-2.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-2.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-2.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-2.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']/section/title">
			<report test="@nullFlavor">У2-2.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-2.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']/section/text">
			<report test="@nullFlavor">У2-2.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='COMPLNTS']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-2.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']">
			<report test="@nullFlavor">У2-3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-3.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']/section">
			<report test="@nullFlavor">У2-3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-3.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-3.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-3.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']/section/code">
			<report test="@nullFlavor">У2-3.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='ANAM'">У2-3.1.1: Элемент code обязан содержать один атрибут @code со значением "ANAM"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-3.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-3.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-3.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-3.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']/section/title">
			<report test="@nullFlavor">У2-3.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-3.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']/section/text">
			<report test="@nullFlavor">У2-3.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='ANAM']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-3.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']">
			<report test="@nullFlavor">У2-4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-4.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']/section">
			<report test="@nullFlavor">У2-4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-4.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-4.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-4.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']/section/code">
			<report test="@nullFlavor">У2-4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='LANAM'">У2-4.1.1: Элемент code обязан содержать один атрибут @code со значением "LANAM"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']/section/title">
			<report test="@nullFlavor">У2-4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-4.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']/section/text">
			<report test="@nullFlavor">У2-4.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LANAM']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-4.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']">
			<report test="@nullFlavor">У2-5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section">
			<report test="@nullFlavor">У2-5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='804'])=1">У3-14: Элемент section ОБЯЗАН содержать один [1..1] элемент entry</assert>
			<assert test="count(entry[observation/code/@code='12193'])=1">У3-15: Элемент section ОБЯЗАН содержать один [1..1] элемент entry</assert>
			<assert test="count(entry[observation/code/@code='8076'])=[0,1]">У3-16: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8069'])=[0,1]">У3-17: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8070'])=[0,1]">У3-18: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='12084'])=[0,1]">У3-19: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='808'])>=0">У3-20: Элемент section МОЖЕТ содержать произвольное количество [0..*] элементов entry</assert>
			<assert test="count(component[section/code/@code='PSYCH'])=[0,1]">У2-5.1.3: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='NERVOUS'])=[0,1]">У2-5.1.4: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='SKIN'])=[0,1]">У2-5.1.5: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='MUSCULOSKELETAL'])=[0,1]">У2-5.1.6: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='RESPIRATORY'])=[0,1]">У2-5.1.7: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='CARDIOVASCULAR'])=[0,1]">У2-5.1.8: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='DIGESTION'])=[0,1]">У2-5.1.9: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='UROGENITAL'])=[0,1]">У2-5.1.10: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='LOCALIS'])=[0,1]">У2-5.1.11: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/code">
			<report test="@nullFlavor">У2-5.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='EXAMINFO'">У2-5.1.1: Элемент code обязан содержать один атрибут @code со значением "EXAMINFO"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/title">
			<report test="@nullFlavor">У2-5.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/text">
			<report test="@nullFlavor">У2-5.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='804']">
			<report test="@nullFlavor">У3-14: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='804'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-14.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='804']/observation">
			<report test="@nullFlavor">У3-14.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='804']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-14.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-14.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-14.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-14.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='804']/observation/code">
			<report test="@nullFlavor">У3-14.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='804']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='804'">У3-14.1.1: Элемент code обязан содержать один атрибут @code со значением "804"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-14.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-14.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-14.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='804']/observation/value">
			<report test="@nullFlavor">У3-14.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='804']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-14.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']">У3-14.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1006"</assert>
			<assert test="@codeSystemName!=''">У3-14.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-14.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-14.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-14.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12193']">
			<report test="@nullFlavor">У3-15: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12193'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-15.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12193']/observation">
			<report test="@nullFlavor">У3-15.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12193']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-15.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-15.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-15.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-15.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12193']/observation/code">
			<report test="@nullFlavor">У3-15.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12193']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12193'">У3-15.1.1: Элемент code обязан содержать один атрибут @code со значением "12193"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-15.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-15.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-15.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12193']/observation/value">
			<report test="@nullFlavor">У3-15.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12193']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-15.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-15.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8076']">
			<report test="@nullFlavor">У3-16: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8076'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-16.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8076']/observation">
			<report test="@nullFlavor">У3-16.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8076']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-16.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-16.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-16.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-16.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8076']/observation/code">
			<report test="@nullFlavor">У3-16.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8076']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8076'">У3-16.1.1: Элемент code обязан содержать один атрибут @code со значением "8076"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-16.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-16.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-16.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8076']/observation/value">
			<report test="@nullFlavor">У3-16.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8076']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-16.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-16.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8069']">
			<report test="@nullFlavor">У3-17: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8069'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-17.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8069']/observation">
			<report test="@nullFlavor">У3-17.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8069']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-17.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-17.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-17.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-17.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8069']/observation/code">
			<report test="@nullFlavor">У3-17.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8069']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8069'">У3-17.1.1: Элемент code обязан содержать один атрибут @code со значением "8069"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-17.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-17.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-17.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-17.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8069']/observation/value">
			<report test="@nullFlavor">У3-17.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8069']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-17.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-17.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8070']">
			<report test="@nullFlavor">У3-18: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8070'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-18.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8070']/observation">
			<report test="@nullFlavor">У3-18.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8070']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-18.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-18.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-18.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-18.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8070']/observation/code">
			<report test="@nullFlavor">У3-18.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8070']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8070'">У3-18.1.1: Элемент code обязан содержать один атрибут @code со значением "8070"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-18.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-18.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-18.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-18.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8070']/observation/value">
			<report test="@nullFlavor">У3-18.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='8070']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-18.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-18.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12084']">
			<report test="@nullFlavor">У3-19: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12084'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-19.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12084']/observation">
			<report test="@nullFlavor">У3-19.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12084']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-19.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-19.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-19.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-19.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12084']/observation/code">
			<report test="@nullFlavor">У3-19.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12084']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12084'">У3-19.1.1: Элемент code обязан содержать один атрибут @code со значением "12084"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-19.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-19.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-19.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-19.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12084']/observation/value">
			<report test="@nullFlavor">У3-19.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='12084']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-19.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-19.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']">
			<report test="@nullFlavor">У3-20: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-20.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']/observation">
			<report test="@nullFlavor">У3-20.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-20.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-20.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-20.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-20.1.2: Элемент observation ДОЛЖЕН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']/observation/code">
			<report test="@nullFlavor">У3-20.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='808'">У3-20.1.1: Элемент code обязан содержать один атрибут @code со значением "808"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-20.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-20.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-20.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-20.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']/observation/value[not(@nullFlavor)]">
			<assert test="@xsi:type='CD'">У3-20.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1473'">У3-20.1.2: Элемент value должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1473"</assert>
			<assert test="@codeSystemName!=''">У3-20.1.2: Элемент value должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-20.1.2: Элемент value должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-20.1.2: Элемент value должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-20.1.2: Элемент value должен содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="count(originalText)=[0,1]">У3-20.1.2.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента originalText</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']/observation/value[@nullFlavor]">
			<assert test="@xsi:type='CD'">У3-20.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
			<report test="@nullFlavor != 'OTH'">У1-7: Допустимые значения для атрибута  nullFlavor: 'OTH'</report>
			<assert test="count(originalText)=1">У3-20.1.2.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента originalText; Если атрибут value/@nullFlavor представлен со значением 'OTH', то элемент обязан быть представлен</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']/observation/value/originalText">
			<report test="@nullFlavor">У3-20.1.2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/entry[observation/code/@code='808']/observation/value/originalText не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-20.1.2.1: Элемент originalText должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']">
			<report test="@nullFlavor">У2-5.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.3.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']/section">
			<report test="@nullFlavor">У2-5.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.3.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.3.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.3.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']/section/code">
			<report test="@nullFlavor">У2-5.1.3.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='PSYCH'">У2-5.1.3.1.1: Элемент code обязан содержать один атрибут @code со значением "PSYCH"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.3.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']/section/title">
			<report test="@nullFlavor">У2-5.1.3.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.3.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']/section/text">
			<report test="@nullFlavor">У2-5.1.3.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='PSYCH']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.3.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']">
			<report test="@nullFlavor">У2-5.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.4.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section">
			<report test="@nullFlavor">У2-5.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.4.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.4.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.4.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='8081'])=[0,1]">У3-21: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/code">
			<report test="@nullFlavor">У2-5.1.4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='NERVOUS'">У2-5.1.4.1.1: Элемент code обязан содержать один атрибут @code со значением "NERVOUS"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/title">
			<report test="@nullFlavor">У2-5.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.4.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/text">
			<report test="@nullFlavor">У2-5.1.4.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.4.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/entry[observation/code/@code='8081']">
			<report test="@nullFlavor">У3-21: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/entry[observation/code/@code='8081'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-21.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/entry[observation/code/@code='8081']/observation">
			<report test="@nullFlavor">У3-21.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/entry[observation/code/@code='8081']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-21.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-21.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-21.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-21.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/entry[observation/code/@code='8081']/observation/code">
			<report test="@nullFlavor">У3-21.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/entry[observation/code/@code='8081']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8081'">У3-21.1.1: Элемент code обязан содержать один атрибут @code со значением "8081"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-21.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-21.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-21.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-21.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/entry[observation/code/@code='8081']/observation/value">
			<report test="@nullFlavor">У3-21.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='NERVOUS']/section/entry[observation/code/@code='8081']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-21.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-21.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']">
			<report test="@nullFlavor">У2-5.1.5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.5.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section">
			<report test="@nullFlavor">У2-5.1.5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.5.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.5.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.5.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='8077'])=[0,1]">У3-22: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8078'])=[0,1]">У3-23: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/code">
			<report test="@nullFlavor">У2-5.1.5.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='SKIN'">У2-5.1.5.1.1: Элемент code обязан содержать один атрибут @code со значением "SKIN"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.5.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/title">
			<report test="@nullFlavor">У2-5.1.5.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.5.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/text">
			<report test="@nullFlavor">У2-5.1.5.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.5.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8077']">
			<report test="@nullFlavor">У3-22: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8077'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-22.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8077']/observation">
			<report test="@nullFlavor">У3-22.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8077']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-22.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-22.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-22.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-22.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8077']/observation/code">
			<report test="@nullFlavor">У3-22.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8077']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8077'">У3-22.1.1: Элемент code обязан содержать один атрибут @code со значением "8077"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-22.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-22.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-22.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-22.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8077']/observation/value">
			<report test="@nullFlavor">У3-22.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8077']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-22.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-22.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8078']">
			<report test="@nullFlavor">У3-23: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8078'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-23.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8078']/observation">
			<report test="@nullFlavor">У3-23.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8078']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-23.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-23.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-23.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-23.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8078']/observation/code">
			<report test="@nullFlavor">У3-23.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8078']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8078'">У3-23.1.1: Элемент code обязан содержать один атрибут @code со значением "8078"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-23.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-23.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-23.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-23.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8078']/observation/value">
			<report test="@nullFlavor">У3-23.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='SKIN']/section/entry[observation/code/@code='8078']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-23.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-23.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']">
			<report test="@nullFlavor">У2-5.1.6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.6.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section">
			<report test="@nullFlavor">У2-5.1.6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.6.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.6.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.6.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='8079'])=[0,1]">У3-24: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/code">
			<report test="@nullFlavor">У2-5.1.6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='MUSCULOSKELETAL'">У2-5.1.6.1.1: Элемент code обязан содержать один атрибут @code со значением "MUSCULOSKELETAL"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.6.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/title">
			<report test="@nullFlavor">У2-5.1.6.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.6.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/text">
			<report test="@nullFlavor">У2-5.1.6.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.6.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/entry[observation/code/@code='8079']">
			<report test="@nullFlavor">У3-24: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/entry[observation/code/@code='8079'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-24.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/entry[observation/code/@code='8079']/observation">
			<report test="@nullFlavor">У3-24.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/entry[observation/code/@code='8079']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-24.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-24.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-24.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-24.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/entry[observation/code/@code='8079']/observation/code">
			<report test="@nullFlavor">У3-24.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/entry[observation/code/@code='8079']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8079'">У3-24.1.1: Элемент code обязан содержать один атрибут @code со значением "8079"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-24.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-24.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-24.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-24.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/entry[observation/code/@code='8079']/observation/value">
			<report test="@nullFlavor">У3-24.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='MUSCULOSKELETAL']/section/entry[observation/code/@code='8079']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-24.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-24.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']">
			<report test="@nullFlavor">У2-5.1.7: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.7.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section">
			<report test="@nullFlavor">У2-5.1.7.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.7.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.7.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.7.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='8068'])=[0,1]">У3-25: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/code">
			<report test="@nullFlavor">У2-5.1.7.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='RESPIRATORY'">У2-5.1.7.1.1: Элемент code обязан содержать один атрибут @code со значением "RESPIRATORY"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.7.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.7.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.7.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.7.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/title">
			<report test="@nullFlavor">У2-5.1.7.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.7.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/text">
			<report test="@nullFlavor">У2-5.1.7.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.7.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/entry[observation/code/@code='8068']">
			<report test="@nullFlavor">У3-25: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/entry[observation/code/@code='8068'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-25.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/entry[observation/code/@code='8068']/observation">
			<report test="@nullFlavor">У3-25.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/entry[observation/code/@code='8068']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-25.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-25.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-25.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-25.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/entry[observation/code/@code='8068']/observation/code">
			<report test="@nullFlavor">У3-25.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/entry[observation/code/@code='8068']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8068'">У3-25.1.1: Элемент code обязан содержать один атрибут @code со значением "8068"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-25.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-25.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-25.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-25.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/entry[observation/code/@code='8068']/observation/value">
			<report test="@nullFlavor">У3-25.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='RESPIRATORY']/section/entry[observation/code/@code='8068']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-25.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-25.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']">
			<report test="@nullFlavor">У2-5.1.8: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.8.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section">
			<report test="@nullFlavor">У2-5.1.8.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.8.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.8.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.8.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='8071'])=[0,1]">У3-26: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8072'])=[0,1]">У3-27: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/code">
			<report test="@nullFlavor">У2-5.1.8.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='CARDIOVASCULAR'">У2-5.1.8.1.1: Элемент code обязан содержать один атрибут @code со значением "CARDIOVASCULAR"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.8.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.8.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.8.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.8.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/title">
			<report test="@nullFlavor">У2-5.1.8.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.8.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/text">
			<report test="@nullFlavor">У2-5.1.8.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.8.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8071']">
			<report test="@nullFlavor">У3-26: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8071'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-26.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8071']/observation">
			<report test="@nullFlavor">У3-26.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8071']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-26.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-26.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-26.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-26.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8071']/observation/code">
			<report test="@nullFlavor">У3-26.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8071']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8071'">У3-26.1.1: Элемент code обязан содержать один атрибут @code со значением "8071"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-26.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-26.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-26.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-26.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8071']/observation/value">
			<report test="@nullFlavor">У3-26.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8071']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-26.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-26.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8072']">
			<report test="@nullFlavor">У3-27: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8072'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-27.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8072']/observation">
			<report test="@nullFlavor">У3-27.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8072']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-27.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-27.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-27.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-27.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8072']/observation/code">
			<report test="@nullFlavor">У3-27.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8072']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8072'">У3-27.1.1: Элемент code обязан содержать один атрибут @code со значением "8072"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-27.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-27.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-27.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-27.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8072']/observation/value">
			<report test="@nullFlavor">У3-27.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='CARDIOVASCULAR']/section/entry[observation/code/@code='8072']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-27.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-27.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']">
			<report test="@nullFlavor">У2-5.1.9: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.9.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section">
			<report test="@nullFlavor">У2-5.1.9.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.9.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.9.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.9.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='8084'])=[0,1]">У3-28: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8073'])=[0,1]">У3-29: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/code">
			<report test="@nullFlavor">У2-5.1.9.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='DIGESTION'">У2-5.1.9.1.1: Элемент code обязан содержать один атрибут @code со значением "DIGESTION"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.9.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.9.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.9.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.9.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/title">
			<report test="@nullFlavor">У2-5.1.9.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.9.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/text">
			<report test="@nullFlavor">У2-5.1.9.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.9.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8084']">
			<report test="@nullFlavor">У3-28: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8084'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-28.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8084']/observation">
			<report test="@nullFlavor">У3-28.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8084']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-28.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-28.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-28.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-28.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8084']/observation/code">
			<report test="@nullFlavor">У3-28.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8084']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8084'">У3-28.1.1: Элемент code обязан содержать один атрибут @code со значением "8084"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-28.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-28.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-28.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-28.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8084']/observation/value">
			<report test="@nullFlavor">У3-28.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8084']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-28.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-28.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8073']">
			<report test="@nullFlavor">У3-29: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8073'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-29.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8073']/observation">
			<report test="@nullFlavor">У3-29.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8073']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-29.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-29.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-29.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-29.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8073']/observation/code">
			<report test="@nullFlavor">У3-29.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8073']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8073'">У3-29.1.1: Элемент code обязан содержать один атрибут @code со значением "8073"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-29.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-29.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-29.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-29.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8073']/observation/value">
			<report test="@nullFlavor">У3-29.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='DIGESTION']/section/entry[observation/code/@code='8073']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-29.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-29.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']">
			<report test="@nullFlavor">У2-5.1.10: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.10.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section">
			<report test="@nullFlavor">У2-5.1.10.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.10.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.10.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.10.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@code='8117'])=[0,1]">У3-30: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8082'])=[0,1]">У3-31: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
			<assert test="count(entry[observation/code/@code='8074'])=[0,1]">У3-32: Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/code">
			<report test="@nullFlavor">У2-5.1.10.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='UROGENITAL'">У2-5.1.10.1.1: Элемент code обязан содержать один атрибут @code со значением "UROGENITAL"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.10.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.10.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.10.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.10.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/title">
			<report test="@nullFlavor">У2-5.1.10.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.10.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/text">
			<report test="@nullFlavor">У2-5.1.10.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.10.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8117']">
			<report test="@nullFlavor">У3-30: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8117'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-30.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8117']/observation">
			<report test="@nullFlavor">У3-30.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8117']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-30.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-30.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-30.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-30.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8117']/observation/code">
			<report test="@nullFlavor">У3-30.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8117']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8117'">У3-30.1.1: Элемент code обязан содержать один атрибут @code со значением "8117"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-30.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-30.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-30.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-30.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8117']/observation/value">
			<report test="@nullFlavor">У3-30.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8117']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-30.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-30.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8082']">
			<report test="@nullFlavor">У3-31: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8082'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-31.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8082']/observation">
			<report test="@nullFlavor">У3-31.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8082']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-31.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-31.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-31.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-31.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8082']/observation/code">
			<report test="@nullFlavor">У3-31.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8082']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8082'">У3-31.1.1: Элемент code обязан содержать один атрибут @code со значением "8082"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-31.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-31.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-31.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-31.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8082']/observation/value">
			<report test="@nullFlavor">У3-31.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8082']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-31.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-31.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8074']">
			<report test="@nullFlavor">У3-32: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8074'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-32.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8074']/observation">
			<report test="@nullFlavor">У3-32.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8074']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-32.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-32.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-32.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-32.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8074']/observation/code">
			<report test="@nullFlavor">У3-32.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8074']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8074'">У3-32.1.1: Элемент code обязан содержать один атрибут @code со значением "8074"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-32.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-32.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-32.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-32.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8074']/observation/value">
			<report test="@nullFlavor">У3-32.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='UROGENITAL']/section/entry[observation/code/@code='8074']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-32.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-32.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']">
			<report test="@nullFlavor">У2-5.1.11: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-5.1.11.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']/section">
			<report test="@nullFlavor">У2-5.1.11.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-5.1.11.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-5.1.11.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-5.1.11.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']/section/code">
			<report test="@nullFlavor">У2-5.1.11.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='LOCALIS'">У2-5.1.11.1.1: Элемент code обязан содержать один атрибут @code со значением "LOCALIS"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-5.1.11.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-5.1.11.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-5.1.11.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-5.1.11.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']/section/title">
			<report test="@nullFlavor">У2-5.1.11.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.11.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']/section/text">
			<report test="@nullFlavor">У2-5.1.11.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='EXAMINFO']/section/component[section/code/@code='LOCALIS']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-5.1.11.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']">
			<report test="@nullFlavor">У2-6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-6.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section">
			<report test="@nullFlavor">У2-6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-6.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-6.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-6.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'])>=1">У3-33: Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/code">
			<report test="@nullFlavor">У2-6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='VITALPARAM'">У2-6.1.1: Элемент code обязан содержать один атрибут @code со значением "VITALPARAM"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-6.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-6.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-6.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-6.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/title">
			<report test="@nullFlavor">У2-6.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-6.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/text">
			<report test="@nullFlavor">У2-6.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-6.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']">
			<report test="@nullFlavor">У3-33: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'])=1">У3-33.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент organizer</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']">
			<report test="@nullFlavor">У3-33.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='CLUSTER'">У3-33.1: Элемент organizer обязан содержать один атрибут @classCode со значением "CLUSTER"</assert>
			<assert test="@moodCode='EVN'">У3-33.1: Элемент organizer обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(statusCode)=1">У3-33.1.1: Элемент organizer ОБЯЗАН содержать один [1..1] элемент statusCode</assert>
			<assert test="count(effectiveTime)=1">У3-33.1.2: Элемент organizer ОБЯЗАН содержать один [1..1] элемент effectiveTime</assert>
			<assert test="count(precondition)=[0,1]">У3-33.1.3: Элемент organizer МОЖЕТ содержать не более одного [0..1] элемента precondition</assert>
			<assert test="count(component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'])=[1,2]">У3-33.1.4: Элемент organizer ОБЯЗАН содержать от одного до двух [1..2] элементов component</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/statusCode">
			<report test="@nullFlavor">У3-33.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/statusCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='completed'">У3-33.1.1: Элемент statusCode обязан содержать один атрибут @code со значением "completed"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/effectiveTime">
			<report test="@nullFlavor">У3-33.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-33.1.2: Элемент effectiveTime обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition">
			<report test="@nullFlavor">У3-33.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='PRCN'">У3-33.1.3: Элемент precondition обязан содержать один атрибут @typeCode со значением "PRCN"</assert>
			<assert test="count(criterion)=1">У3-33.1.3.1: Элемент precondition ОБЯЗАН содержать один [1..1] элемент criterion</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion">
			<report test="@nullFlavor">У3-33.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У3-33.1.3.1.1: Элемент criterion ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-33.1.3.1.2: Элемент criterion ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion/code">
			<report test="@nullFlavor">У3-33.1.3.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='ASSERTION'">У3-33.1.3.1.1: Элемент code обязан содержать один атрибут @code со значением "ASSERTION"</assert>
			<assert test="@codeSystem='2.16.840.1.113883.5.4'">У3-33.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "2.16.840.1.113883.5.4"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion/value">
			<report test="@nullFlavor">У3-33.1.3.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-33.1.3.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-33.1.3.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']">
			<report test="@nullFlavor">У3-33.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-33.1.4: Элемент component обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-33.1.4.1: Элемент component ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation">
			<report test="@nullFlavor">У3-33.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-33.1.4.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-33.1.4.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(id[1])=1">У3-33.1.4.1.1: Элемент observation ДОЛЖЕН содержать один [1..1] элемент id (Уникальный идентификатор параметра внутри документа)</assert>
			<assert test="count(code)=1">У3-33.1.4.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-33.1.4.1.3: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
			<assert test="count(entryRelationship[observation/code/@code='6034'])=[0,1]">У3-33.1.4.1.4: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='8034'])=[0,1]">У3-33.1.4.1.5: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(referenceRange)=[0,1]">У3-33.1.4.1.6: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента referenceRange</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/id[1][not(@nullFlavor)]">
			<assert test="@root!=''">У3-33.1.4.1.1: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.52$')">У3-33.1.4.1.1: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52</assert>
			<assert test="@extension!=''">У3-33.1.4.1.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/id[1][@nullFlavor]">
			<report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @root</report>
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/code">
			<report test="@nullFlavor">У3-33.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.262','1.2.643.5.1.13.13.11.1010']">У3-33.1.4.1.2: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.262"</assert>
			<assert test="@codeSystemName!=''">У3-33.1.4.1.2: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-33.1.4.1.2: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-33.1.4.1.2: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-33.1.4.1.2: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/value">
			<report test="@nullFlavor">У3-33.1.4.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type!=''">У3-33.1.4.1.3: Элемент value обязан содержать один атрибут @xsi:type с не пустым значением</assert>
			<assert test="count(translation)=[0,1]">У3-33.1.4.1.3.1: Элемент value МОЖЕТ содержать не более одного [0..1] элемента translation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/value/translation">
			<report test="@nullFlavor">У3-33.1.4.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/value/translation не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-33.1.4.1.3.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
			<assert test="@codeSystemName!=''">У3-33.1.4.1.3.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@value!=''">У3-33.1.4.1.3.1: Элемент translation обязан содержать один атрибут @value с не пустым значением</assert>
			<assert test="@code!=''">У3-33.1.4.1.3.1: Элемент translation обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@displayName!=''">У3-33.1.4.1.3.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-33.1.4.1.3.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']">
			<report test="@nullFlavor">У3-33.1.4.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-33.1.4.1.4: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-33.1.4.1.4.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation">
			<report test="@nullFlavor">У3-33.1.4.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-33.1.4.1.4.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-33.1.4.1.4.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-33.1.4.1.4.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-33.1.4.1.4.1.2: Элемент observation ДОЛЖЕН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation/code">
			<report test="@nullFlavor">У3-33.1.4.1.4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='6034'">У3-33.1.4.1.4.1.1: Элемент code обязан содержать один атрибут @code со значением "6034"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-33.1.4.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-33.1.4.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-33.1.4.1.4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-33.1.4.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation/value[not(@nullFlavor)]">
			<assert test="@xsi:type='CD'">У3-33.1.4.1.4.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.778'">У3-33.1.4.1.4.1.2: Элемент value должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.778"</assert>
			<assert test="@codeSystemName!=''">У3-33.1.4.1.4.1.2: Элемент value должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-33.1.4.1.4.1.2: Элемент value должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-33.1.4.1.4.1.2: Элемент value должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-33.1.4.1.4.1.2: Элемент value должен содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation/value[@nullFlavor]">
			<assert test="@xsi:type='CD'">У3-33.1.4.1.4.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']">
			<report test="@nullFlavor">У3-33.1.4.1.5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-33.1.4.1.5: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-33.1.4.1.5.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation">
			<report test="@nullFlavor">У3-33.1.4.1.5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-33.1.4.1.5.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-33.1.4.1.5.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-33.1.4.1.5.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-33.1.4.1.5.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation/code">
			<report test="@nullFlavor">У3-33.1.4.1.5.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8034'">У3-33.1.4.1.5.1.1: Элемент code обязан содержать один атрибут @code со значением "8034"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-33.1.4.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-33.1.4.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-33.1.4.1.5.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-33.1.4.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation/value">
			<report test="@nullFlavor">У3-33.1.4.1.5.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='INT'">У3-33.1.4.1.5.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "INT"</assert>
			<assert test="@value!=''">У3-33.1.4.1.5.1.2: Элемент value обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange">
			<report test="@nullFlavor">У3-33.1.4.1.6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observationRange)=1">У3-33.1.4.1.6.1: Элемент referenceRange ОБЯЗАН содержать один [1..1] элемент observationRange</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange">
			<report test="@nullFlavor">У3-33.1.4.1.6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange не должен иметь атрибут @nullFlavor</report>
			<assert test="count(text)=1">У3-33.1.4.1.6.1.1: Элемент observationRange ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(value)=1">У3-33.1.4.1.6.1.2: Элемент observationRange ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/text">
			<report test="@nullFlavor">У3-33.1.4.1.6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-33.1.4.1.6.1.1: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value">
			<report test="@nullFlavor">У3-33.1.4.1.6.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='IVL_PQ'">У3-33.1.4.1.6.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "IVL_PQ"</assert>
			<assert test="count(low)=1">У3-33.1.4.1.6.1.2.1: Элемент value ДОЛЖЕН содержать один [1..1] элемент low</assert>
			<assert test="count(high)=1">У3-33.1.4.1.6.1.2.2: Элемент value ДОЛЖЕН содержать один [1..1] элемент high</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low[not(@nullFlavor)]">
			<assert test="@value!=''">У3-33.1.4.1.6.1.2.1: Элемент low должен содержать один атрибут @value с не пустым значением</assert>
			<assert test="@unit!=''">У3-33.1.4.1.6.1.2.1: Элемент low должен содержать один атрибут @unit с не пустым значением</assert>
			<assert test="count(translation)=1">У3-33.1.4.1.6.1.2.1.1: Элемент low ОБЯЗАН содержать один [1..1] элемент translation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
			<report test="@unit">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @unit</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low/translation">
			<report test="@nullFlavor">У3-33.1.4.1.6.1.2.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low/translation не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-33.1.4.1.6.1.2.1.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
			<assert test="@codeSystemName!=''">У3-33.1.4.1.6.1.2.1.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@value!=''">У3-33.1.4.1.6.1.2.1.1: Элемент translation обязан содержать один атрибут @value с не пустым значением</assert>
			<assert test="@code!=''">У3-33.1.4.1.6.1.2.1.1: Элемент translation обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@displayName!=''">У3-33.1.4.1.6.1.2.1.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-33.1.4.1.6.1.2.1.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high[not(@nullFlavor)]">
			<assert test="@value!=''">У3-33.1.4.1.6.1.2.2: Элемент high должен содержать один атрибут @value с не пустым значением</assert>
			<assert test="@unit!=''">У3-33.1.4.1.6.1.2.2: Элемент high должен содержать один атрибут @unit с не пустым значением</assert>
			<assert test="count(translation)=1">У3-33.1.4.1.6.1.2.2.1: Элемент high ОБЯЗАН содержать один [1..1] элемент translation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
			<report test="@unit">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @unit</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high/translation">
			<report test="@nullFlavor">У3-33.1.4.1.6.1.2.2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high/translation не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-33.1.4.1.6.1.2.2.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
			<assert test="@codeSystemName!=''">У3-33.1.4.1.6.1.2.2.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@value!=''">У3-33.1.4.1.6.1.2.2.1: Элемент translation обязан содержать один атрибут @value с не пустым значением</assert>
			<assert test="@code!=''">У3-33.1.4.1.6.1.2.2.1: Элемент translation обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@displayName!=''">У3-33.1.4.1.6.1.2.2.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-33.1.4.1.6.1.2.2.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']">
			<report test="@nullFlavor">У2-7: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-7.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section">
			<report test="@nullFlavor">У2-7.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-7.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-7.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-7.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514'])>=1">У3-34: Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/code">
			<report test="@nullFlavor">У2-7.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='SCORES'">У2-7.1.1: Элемент code обязан содержать один атрибут @code со значением "SCORES"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-7.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-7.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-7.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-7.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/title">
			<report test="@nullFlavor">У2-7.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-7.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/text">
			<report test="@nullFlavor">У2-7.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-7.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']">
			<report test="@nullFlavor">У3-34: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-34.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation">
			<report test="@nullFlavor">У3-34.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-34.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-34.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-34.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(effectiveTime)=[0,1]">У3-34.1.2: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента effectiveTime</assert>
			<assert test="count(value)=[0,1]">У3-34.1.3: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента value</assert>
			<assert test="count(performer)=[0,1]">У3-34.1.4: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента performer</assert>
			<assert test="count(entryRelationship[observation/code/@code='8020'])>=0">У3-34.1.5: Элемент observation МОЖЕТ содержать произвольное количество [0..*] элементов entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='8019'])=[0,1]">У3-34.1.6: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/code">
			<report test="@nullFlavor">У3-34.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1514'">У3-34.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1514"</assert>
			<assert test="@codeSystemName!=''">У3-34.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-34.1.1: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-34.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-34.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/effectiveTime">
			<report test="@nullFlavor">У3-34.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-34.1.2: Элемент effectiveTime обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value">
			<report test="@nullFlavor">У3-34.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='PQ'">У3-34.1.3: Элемент value обязан содержать один атрибут @xsi:type со значением "PQ"</assert>
			<assert test="@value!=''">У3-34.1.3: Элемент value обязан содержать один атрибут @value с не пустым значением</assert>
			<assert test="@unit!=''">У3-34.1.3: Элемент value обязан содержать один атрибут @unit с не пустым значением</assert>
			<assert test="count(translation)=1">У3-34.1.3.1: Элемент value ОБЯЗАН содержать один [1..1] элемент translation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value/translation">
			<report test="@nullFlavor">У3-34.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value/translation не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-34.1.3.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
			<assert test="@codeSystemName!=''">У3-34.1.3.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@value!=''">У3-34.1.3.1: Элемент translation обязан содержать один атрибут @value с не пустым значением</assert>
			<assert test="@code!=''">У3-34.1.3.1: Элемент translation обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-34.1.3.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-34.1.3.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer">
			<report test="@nullFlavor">У3-34.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer не должен иметь атрибут @nullFlavor</report>
			<assert test="count(assignedEntity)=1">У3-34.1.4.1: Элемент performer ОБЯЗАН содержать один [1..1] элемент assignedEntity</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity">
			<report test="@nullFlavor">У3-34.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity не должен иметь атрибут @nullFlavor</report>
			<assert test="count(id[1])=1">У3-34.1.4.1.1: Элемент assignedEntity ДОЛЖЕН содержать один [1..1] элемент id (Уникальный идентификатор медицинского работника в МИС)</assert>
			<assert test="count(code)=1">У3-34.1.4.1.2: Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(telecom)=[0,1]">У3-34.1.4.1.3: Элемент assignedEntity МОЖЕТ содержать не более одного [0..1] элемента telecom</assert>
			<assert test="count(assignedPerson)=1">У3-34.1.4.1.4: Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент assignedPerson</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/id[1][not(@nullFlavor)]">
			<assert test="@root!=''">У3-34.1.4.1.1: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.70$')">У3-34.1.4.1.1: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
			<assert test="@extension!=''">У3-34.1.4.1.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/id[1][@nullFlavor]">
			<report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @root</report>
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/code">
			<report test="@nullFlavor">У3-34.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-34.1.4.1.2: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1002"</assert>
			<assert test="@codeSystemName!=''">У3-34.1.4.1.2: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-34.1.4.1.2: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-34.1.4.1.2: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-34.1.4.1.2: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/telecom">
			<report test="@nullFlavor">У3-34.1.4.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/telecom не должен иметь атрибут @nullFlavor</report>
			<assert test="count(@use!='')=[0,1]">У3-34.1.4.1.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="if (@use) then @use!='' else(not(@use))">У3-34.1.4.1.3: Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
			<assert test="@value!=''">У3-34.1.4.1.3: Элемент telecom обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson">
			<report test="@nullFlavor">У3-34.1.4.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor</report>
			<assert test="count(name)=1">У3-34.1.4.1.4.1: Элемент assignedPerson ОБЯЗАН содержать один [1..1] элемент name</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name">
			<report test="@nullFlavor">У3-34.1.4.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor</report>
			<assert test="count(family)=1">У3-34.1.4.1.4.1.1: Элемент name ОБЯЗАН содержать один [1..1] элемент family</assert>
			<assert test="count(given)=1">У3-34.1.4.1.4.1.2: Элемент name ОБЯЗАН содержать один [1..1] элемент given</assert>
			<assert test="count(identity:Patronymic)=[0,1]">У3-34.1.4.1.4.1.3: Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/family">
			<report test="@nullFlavor">У3-34.1.4.1.4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/family не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-34.1.4.1.4.1.1: Элемент family должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/given">
			<report test="@nullFlavor">У3-34.1.4.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/given не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-34.1.4.1.4.1.2: Элемент given должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic">
			<report test="@nullFlavor">У3-34.1.4.1.4.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-34.1.4.1.4.1.3: Элемент identity:Patronymic должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']">
			<report test="@nullFlavor">У3-34.1.5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-34.1.5: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-34.1.5.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation">
			<report test="@nullFlavor">У3-34.1.5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-34.1.5.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-34.1.5.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(id[substring(@root, string-length(@root) - 2)='.52'])=[0,1]">У3-34.1.5.1.1: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента id (Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52)</assert>
			<assert test="count(code)=1">У3-34.1.5.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(effectiveTime)=1">У3-34.1.5.1.3: Элемент observation ДОЛЖЕН содержать один [1..1] элемент effectiveTime</assert>
			<assert test="count(value)=1">У3-34.1.5.1.4: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/id[substring(@root, string-length(@root) - 2)='.52']">
			<report test="@nullFlavor">У3-34.1.5.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/id[substring(@root, string-length(@root) - 2)='.52'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@root!=''">У3-34.1.5.1.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.52$')">У3-34.1.5.1.1: Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52</assert>
			<assert test="@extension!=''">У3-34.1.5.1.1: Элемент id обязан содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/code">
			<report test="@nullFlavor">У3-34.1.5.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8020'">У3-34.1.5.1.2: Элемент code обязан содержать один атрибут @code со значением "8020"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-34.1.5.1.2: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-34.1.5.1.2: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-34.1.5.1.2: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-34.1.5.1.2: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/effectiveTime[not(@nullFlavor)]">
			<assert test="@value!=''">У3-34.1.5.1.3: Элемент effectiveTime должен содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/effectiveTime[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/value">
			<report test="@nullFlavor">У3-34.1.5.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-34.1.5.1.4: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@code!=''">У3-34.1.5.1.4: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystem!=''">У3-34.1.5.1.4: Элемент value обязан содержать один атрибут @codeSystem с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-34.1.5.1.4: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@codeSystemName!=''">У3-34.1.5.1.4: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-34.1.5.1.4: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']">
			<report test="@nullFlavor">У3-34.1.6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-34.1.6: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-34.1.6.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation">
			<report test="@nullFlavor">У3-34.1.6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-34.1.6.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-34.1.6.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-34.1.6.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(text)=[0,1]">У3-34.1.6.1.2: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента text</assert>
			<assert test="count(value)=1">У3-34.1.6.1.3: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/code">
			<report test="@nullFlavor">У3-34.1.6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8019'">У3-34.1.6.1.1: Элемент code обязан содержать один атрибут @code со значением "8019"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-34.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-34.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-34.1.6.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-34.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/text">
			<report test="@nullFlavor">У3-34.1.6.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-34.1.6.1.2: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/value">
			<report test="@nullFlavor">У3-34.1.6.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-34.1.6.1.3: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@code!=''">У3-34.1.6.1.3: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystem!=''">У3-34.1.6.1.3: Элемент value обязан содержать один атрибут @codeSystem с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-34.1.6.1.3: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@codeSystemName!=''">У3-34.1.6.1.3: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-34.1.6.1.3: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']">
			<report test="@nullFlavor">У2-8: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-8.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section">
			<report test="@nullFlavor">У2-8.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-8.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-8.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-8.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077'])>=1">У3-35: Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/code">
			<report test="@nullFlavor">У2-8.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='DGN'">У2-8.1.1: Элемент code обязан содержать один атрибут @code со значением "DGN"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-8.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-8.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-8.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-8.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/title">
			<report test="@nullFlavor">У2-8.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-8.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/text">
			<report test="@nullFlavor">У2-8.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-8.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']">
			<report test="@nullFlavor">У3-35: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-35.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation">
			<report test="@nullFlavor">У3-35.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(text)=[0,1]">У3-35.1.2: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента text</assert>
			<assert test="count(effectiveTime)=[0,1]">У3-35.1.3: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента effectiveTime</assert>
			<assert test="count(value)=1">У3-35.1.4: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
			<assert test="count(entryRelationship[observation/code/@code='7026'])=[0,1]">У3-35.1.5: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='12014'])=[0,1]">У3-35.1.6: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='823'])=[0,1]">У3-35.1.7: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='824'])=[0,1]">У3-35.1.8: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='12120'])=[0,1]">У3-35.1.9: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='8045'])=[0,1]">У3-35.1.10: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='4072'])=1">У3-35.1.11: Элемент observation ОБЯЗАН содержать один [1..1] элемент entryRelationship</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/code">
			<report test="@nullFlavor">У3-35.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1077','1.2.643.5.1.13.2.1.1.1504.4']">У3-35.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1077"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.1: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/text">
			<report test="@nullFlavor">У3-35.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-35.1.2: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/effectiveTime">
			<report test="@nullFlavor">У3-35.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-35.1.3: Элемент effectiveTime обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/value">
			<report test="@nullFlavor">У3-35.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.4: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-35.1.4: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1005"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.4: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.4: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.4: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.4: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']">
			<report test="@nullFlavor">У3-35.1.5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.5: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.5.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation">
			<report test="@nullFlavor">У3-35.1.5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.5.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.5.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.5.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.5.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation/code">
			<report test="@nullFlavor">У3-35.1.5.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='7026'">У3-35.1.5.1.1: Элемент code обязан содержать один атрибут @code со значением "7026"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.5.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation/value">
			<report test="@nullFlavor">У3-35.1.5.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.5.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.795','1.2.643.5.1.13.13.11.1076']">У3-35.1.5.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.795"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.5.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.5.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.5.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.5.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']">
			<report test="@nullFlavor">У3-35.1.6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.6: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.6.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation">
			<report test="@nullFlavor">У3-35.1.6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.6.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.6.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.6.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.6.1.2: Элемент observation ДОЛЖЕН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation/code">
			<report test="@nullFlavor">У3-35.1.6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12014'">У3-35.1.6.1.1: Элемент code обязан содержать один атрибут @code со значением "12014"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.6.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation/value[not(@nullFlavor)]">
			<assert test="@xsi:type='CD'">У3-35.1.6.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1049','1.2.643.5.1.13.2.1.1.586']">У3-35.1.6.1.2: Элемент value должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1049"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.6.1.2: Элемент value должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.6.1.2: Элемент value должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.6.1.2: Элемент value должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.6.1.2: Элемент value должен содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation/value[@nullFlavor]">
			<assert test="@xsi:type='CD'">У3-35.1.6.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']">
			<report test="@nullFlavor">У3-35.1.7: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.7: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.7.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation">
			<report test="@nullFlavor">У3-35.1.7.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.7.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.7.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.7.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.7.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation/code">
			<report test="@nullFlavor">У3-35.1.7.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='823'">У3-35.1.7.1.1: Элемент code обязан содержать один атрибут @code со значением "823"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.7.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.7.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.7.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.7.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation/value">
			<report test="@nullFlavor">У3-35.1.7.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.7.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-35.1.7.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1005"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.7.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.7.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.7.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.7.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']">
			<report test="@nullFlavor">У3-35.1.8: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.8: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.8.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation">
			<report test="@nullFlavor">У3-35.1.8.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.8.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.8.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.8.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.8.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation/code">
			<report test="@nullFlavor">У3-35.1.8.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='824'">У3-35.1.8.1.1: Элемент code обязан содержать один атрибут @code со значением "824"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.8.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.8.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.8.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.8.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation/value">
			<report test="@nullFlavor">У3-35.1.8.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.8.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1036','1.2.643.5.1.13.2.1.1.105']">У3-35.1.8.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1036"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.8.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.8.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.8.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.8.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']">
			<report test="@nullFlavor">У3-35.1.9: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.9: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.9.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation">
			<report test="@nullFlavor">У3-35.1.9.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.9.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.9.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.9.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(effectiveTime)=[0,1]">У3-35.1.9.1.2: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента effectiveTime</assert>
			<assert test="count(value)=1">У3-35.1.9.1.3: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
			<assert test="count(entryRelationship[observation/code/@code='12393'])=[0,1]">У3-35.1.9.1.4: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/code">
			<report test="@nullFlavor">У3-35.1.9.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12120'">У3-35.1.9.1.1: Элемент code обязан содержать один атрибут @code со значением "12120"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.9.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.9.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.9.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.9.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/effectiveTime">
			<report test="@nullFlavor">У3-35.1.9.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-35.1.9.1.2: Элемент effectiveTime обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/value">
			<report test="@nullFlavor">У3-35.1.9.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.9.1.3: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.770'">У3-35.1.9.1.3: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.770"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.9.1.3: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.9.1.3: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.9.1.3: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.9.1.3: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']">
			<report test="@nullFlavor">У3-35.1.9.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.9.1.4: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.9.1.4.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation">
			<report test="@nullFlavor">У3-35.1.9.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.9.1.4.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.9.1.4.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.9.1.4.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.9.1.4.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation/code">
			<report test="@nullFlavor">У3-35.1.9.1.4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='12393'">У3-35.1.9.1.4.1.1: Элемент code обязан содержать один атрибут @code со значением "12393"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.9.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.9.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.9.1.4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.9.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation/value">
			<report test="@nullFlavor">У3-35.1.9.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='INT'">У3-35.1.9.1.4.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "INT"</assert>
			<assert test="@value!=''">У3-35.1.9.1.4.1.2: Элемент value обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']">
			<report test="@nullFlavor">У3-35.1.10: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.10: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.10.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation">
			<report test="@nullFlavor">У3-35.1.10.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.10.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.10.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.10.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.10.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
			<assert test="count(entryRelationship[observation/code/@code='6047'])=[0,1]">У3-35.1.10.1.3: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='6048'])=[0,1]">У3-35.1.10.1.4: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='6049'])=[0,1]">У3-35.1.10.1.5: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='6050'])=[0,1]">У3-35.1.10.1.6: Элемент observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/code">
			<report test="@nullFlavor">У3-35.1.10.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='8045'">У3-35.1.10.1.1: Элемент code обязан содержать один атрибут @code со значением "8045"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.10.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/value">
			<report test="@nullFlavor">У3-35.1.10.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-35.1.10.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-35.1.10.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6047']">
			<report test="@nullFlavor">У3-35.1.10.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6047'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.10.1.3: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.10.1.3.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6047']/observation">
			<report test="@nullFlavor">У3-35.1.10.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6047']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.10.1.3.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.10.1.3.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.10.1.3.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.10.1.3.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6047']/observation/code">
			<report test="@nullFlavor">У3-35.1.10.1.3.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6047']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='6047'">У3-35.1.10.1.3.1.1: Элемент code обязан содержать один атрибут @code со значением "6047"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.10.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.3.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6047']/observation/value">
			<report test="@nullFlavor">У3-35.1.10.1.3.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6047']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.10.1.3.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.547'">У3-35.1.10.1.3.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.547"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.3.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.10.1.3.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.3.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.3.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6048']">
			<report test="@nullFlavor">У3-35.1.10.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6048'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.10.1.4: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.10.1.4.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6048']/observation">
			<report test="@nullFlavor">У3-35.1.10.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6048']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.10.1.4.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.10.1.4.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.10.1.4.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.10.1.4.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6048']/observation/code">
			<report test="@nullFlavor">У3-35.1.10.1.4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6048']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='6048'">У3-35.1.10.1.4.1.1: Элемент code обязан содержать один атрибут @code со значением "6048"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.10.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6048']/observation/value">
			<report test="@nullFlavor">У3-35.1.10.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6048']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.10.1.4.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.547'">У3-35.1.10.1.4.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.547"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.4.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.10.1.4.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.4.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.4.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6049']">
			<report test="@nullFlavor">У3-35.1.10.1.5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6049'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.10.1.5: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.10.1.5.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6049']/observation">
			<report test="@nullFlavor">У3-35.1.10.1.5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6049']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.10.1.5.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.10.1.5.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.10.1.5.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.10.1.5.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6049']/observation/code">
			<report test="@nullFlavor">У3-35.1.10.1.5.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6049']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='6049'">У3-35.1.10.1.5.1.1: Элемент code обязан содержать один атрибут @code со значением "6049"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.10.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.5.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6049']/observation/value">
			<report test="@nullFlavor">У3-35.1.10.1.5.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6049']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.10.1.5.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.547'">У3-35.1.10.1.5.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.547"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.5.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.10.1.5.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.5.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.5.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6050']">
			<report test="@nullFlavor">У3-35.1.10.1.6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6050'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.10.1.6: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.10.1.6.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6050']/observation">
			<report test="@nullFlavor">У3-35.1.10.1.6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6050']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.10.1.6.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.10.1.6.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.10.1.6.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.10.1.6.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6050']/observation/code">
			<report test="@nullFlavor">У3-35.1.10.1.6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6050']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='6050'">У3-35.1.10.1.6.1.1: Элемент code обязан содержать один атрибут @code со значением "6050"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.10.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.6.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6050']/observation/value">
			<report test="@nullFlavor">У3-35.1.10.1.6.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='8045']/observation/entryRelationship[observation/code/@code='6050']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-35.1.10.1.6.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.546'">У3-35.1.10.1.6.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.546"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.10.1.6.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-35.1.10.1.6.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.10.1.6.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.10.1.6.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']">
			<report test="@nullFlavor">У3-35.1.11: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-35.1.11: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-35.1.11.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation">
			<report test="@nullFlavor">У3-35.1.11.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-35.1.11.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-35.1.11.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-35.1.11.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-35.1.11.1.2: Элемент observation ДОЛЖЕН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation/code">
			<report test="@nullFlavor">У3-35.1.11.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='4072'">У3-35.1.11.1.1: Элемент code обязан содержать один атрибут @code со значением "4072"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-35.1.11.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-35.1.11.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-35.1.11.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-35.1.11.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation/value[not(@nullFlavor)]">
			<assert test="@xsi:type='ST'">У3-35.1.11.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-35.1.11.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation/value[@nullFlavor]">
			<assert test="@xsi:type='ST'">У3-35.1.11.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']">
			<report test="@nullFlavor">У2-9: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-9.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']/section">
			<report test="@nullFlavor">У2-9.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-9.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-9.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=[0,1]">У2-9.1.3: Элемент section МОЖЕТ содержать не более одного [0..1] элемента text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']/section/code">
			<report test="@nullFlavor">У2-9.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='MEDINTERVENTIONS'">У2-9.1.1: Элемент code обязан содержать один атрибут @code со значением "MEDINTERVENTIONS"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-9.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-9.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-9.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-9.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']/section/title">
			<report test="@nullFlavor">У2-9.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-9.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']/section/text">
			<report test="@nullFlavor">У2-9.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='MEDINTERVENTIONS']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-9.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']">
			<report test="@nullFlavor">У2-10: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-10.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section">
			<report test="@nullFlavor">У2-10.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-10.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-10.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=[0,1]">У2-10.1.3: Элемент section МОЖЕТ содержать не более одного [0..1] элемента text</assert>
			<assert test="count(component[section/code/@code='OBSPLAN'])=[0,1]">У2-10.1.3: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='TRTMPLAN'])=[0,1]">У2-10.1.4: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/code">
			<report test="@nullFlavor">У2-10.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='PLANACTIVE'">У2-10.1.1: Элемент code обязан содержать один атрибут @code со значением "PLANACTIVE"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-10.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-10.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-10.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-10.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/title">
			<report test="@nullFlavor">У2-10.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-10.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/text">
			<report test="@nullFlavor">У2-10.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-10.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']">
			<report test="@nullFlavor">У2-10.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-10.1.3.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section">
			<report test="@nullFlavor">У2-10.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-10.1.3.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-10.1.3.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-10.1.3.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/code">
			<report test="@nullFlavor">У2-10.1.3.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='OBSPLAN'">У2-10.1.3.1.1: Элемент code обязан содержать один атрибут @code со значением "OBSPLAN"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-10.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-10.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-10.1.3.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-10.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/title">
			<report test="@nullFlavor">У2-10.1.3.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-10.1.3.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/text">
			<report test="@nullFlavor">У2-10.1.3.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-10.1.3.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']">
			<report test="@nullFlavor">У2-10.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-10.1.4.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section">
			<report test="@nullFlavor">У2-10.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-10.1.4.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-10.1.4.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-10.1.4.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/code">
			<report test="@nullFlavor">У2-10.1.4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='TRTMPLAN'">У2-10.1.4.1.1: Элемент code обязан содержать один атрибут @code со значением "TRTMPLAN"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-10.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-10.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-10.1.4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-10.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/title">
			<report test="@nullFlavor">У2-10.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-10.1.4.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/text">
			<report test="@nullFlavor">У2-10.1.4.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-10.1.4.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']">
			<report test="@nullFlavor">У2-11: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-11.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section">
			<report test="@nullFlavor">У2-11.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-11.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-11.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=[0,1]">У2-11.1.3: Элемент section МОЖЕТ содержать не более одного [0..1] элемента text</assert>
			<assert test="count(component[section/code/@code='DRUG'])=[0,1]">У2-11.1.3: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
			<assert test="count(component[section/code/@code='ELSEPROCEDURE'])=[0,1]">У2-11.1.4: Элемент section МОЖЕТ содержать не более одного [0..1] элемента component</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/code">
			<report test="@nullFlavor">У2-11.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='PRESCRIBE'">У2-11.1.1: Элемент code обязан содержать один атрибут @code со значением "PRESCRIBE"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-11.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-11.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-11.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-11.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/title">
			<report test="@nullFlavor">У2-11.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-11.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/text">
			<report test="@nullFlavor">У2-11.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-11.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']">
			<report test="@nullFlavor">У2-11.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-11.1.3.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section">
			<report test="@nullFlavor">У2-11.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-11.1.3.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-11.1.3.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-11.1.3.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611'])>=0">У3-36: Элемент section МОЖЕТ содержать произвольное количество [0..*] элементов entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/code">
			<report test="@nullFlavor">У2-11.1.3.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='DRUG'">У2-11.1.3.1.1: Элемент code обязан содержать один атрибут @code со значением "DRUG"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-11.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-11.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-11.1.3.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-11.1.3.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/title">
			<report test="@nullFlavor">У2-11.1.3.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-11.1.3.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/text">
			<report test="@nullFlavor">У2-11.1.3.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-11.1.3.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']">
			<report test="@nullFlavor">У3-36: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611'])=1">У3-36.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент act</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']">
			<report test="@nullFlavor">У3-36.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='ACT'">У3-36.1: Элемент act обязан содержать один атрибут @classCode со значением "ACT"</assert>
			<assert test="@moodCode='EVN'">У3-36.1: Элемент act обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-36.1.1: Элемент act ДОЛЖЕН содержать один [1..1] элемент code</assert>
			<assert test="count(effectiveTime)=1">У3-36.1.2: Элемент act ОБЯЗАН содержать один [1..1] элемент effectiveTime</assert>
			<assert test="count(entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611'])=1">У3-36.1.3: Элемент act ОБЯЗАН содержать один [1..1] элемент entryRelationship</assert>
			<assert test="count(entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA'])>=1">У3-36.1.4: Элемент act ОБЯЗАН содержать не менее одного [1..*] элемента entryRelationship</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/code">
			<assert test="@nullFlavor='NI'">У3-36.1.1: Элемент code обязан содержать один атрибут @nullFlavor со значением "NI"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/effectiveTime">
			<report test="@nullFlavor">У3-36.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="count(low)=1">У3-36.1.2.1: Элемент effectiveTime ОБЯЗАН содержать один [1..1] элемент low</assert>
			<assert test="count(high)=1">У3-36.1.2.2: Элемент effectiveTime ОБЯЗАН содержать один [1..1] элемент high</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/effectiveTime/low">
			<report test="@nullFlavor">У3-36.1.2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/effectiveTime/low не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-36.1.2.1: Элемент low обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/effectiveTime/high">
			<report test="@nullFlavor">У3-36.1.2.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/effectiveTime/high не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-36.1.2.2: Элемент high обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']">
			<report test="@nullFlavor">У3-36.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-36.1.3: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(substanceAdministration)=1">У3-36.1.3.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент substanceAdministration</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration">
			<report test="@nullFlavor">У3-36.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='SBADM'">У3-36.1.3.1: Элемент substanceAdministration обязан содержать один атрибут @classCode со значением "SBADM"</assert>
			<assert test="@moodCode='EVN'">У3-36.1.3.1: Элемент substanceAdministration обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(consumable)=1">У3-36.1.3.1.1: Элемент substanceAdministration ОБЯЗАН содержать один [1..1] элемент consumable</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration/consumable">
			<report test="@nullFlavor">У3-36.1.3.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration/consumable не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='CSM'">У3-36.1.3.1.1: Элемент consumable обязан содержать один атрибут @typeCode со значением "CSM"</assert>
			<assert test="count(manufacturedProduct)=1">У3-36.1.3.1.1.1: Элемент consumable ОБЯЗАН содержать один [1..1] элемент manufacturedProduct</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration/consumable/manufacturedProduct">
			<report test="@nullFlavor">У3-36.1.3.1.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration/consumable/manufacturedProduct не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='MANU'">У3-36.1.3.1.1.1: Элемент manufacturedProduct обязан содержать один атрибут @classCode со значением "MANU"</assert>
			<assert test="count(manufacturedMaterial)=1">У3-36.1.3.1.1.1.1: Элемент manufacturedProduct ОБЯЗАН содержать один [1..1] элемент manufacturedMaterial</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
			<report test="@nullFlavor">У3-36.1.3.1.1.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='MMAT'">У3-36.1.3.1.1.1.1: Элемент manufacturedMaterial обязан содержать один атрибут @classCode со значением "MMAT"</assert>
			<assert test="@determinerCode='KIND'">У3-36.1.3.1.1.1.1: Элемент manufacturedMaterial обязан содержать один атрибут @determinerCode со значением "KIND"</assert>
			<assert test="count(code)=1">У3-36.1.3.1.1.1.1.1: Элемент manufacturedMaterial ОБЯЗАН содержать один [1..1] элемент code</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code">
			<report test="@nullFlavor">У3-36.1.3.1.1.1.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.611'">У3-36.1.3.1.1.1.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.611"</assert>
			<assert test="@codeSystemName!=''">У3-36.1.3.1.1.1.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-36.1.3.1.1.1.1.1: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@displayName!=''">У3-36.1.3.1.1.1.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-36.1.3.1.1.1.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']">
			<report test="@nullFlavor">У3-36.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-36.1.4: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(substanceAdministration)=1">У3-36.1.4.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент substanceAdministration</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration">
			<report test="@nullFlavor">У3-36.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='SBADM'">У3-36.1.4.1: Элемент substanceAdministration обязан содержать один атрибут @classCode со значением "SBADM"</assert>
			<assert test="@moodCode='EVN'">У3-36.1.4.1: Элемент substanceAdministration обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(effectiveTime[1])=1">У3-36.1.4.1.1: Элемент substanceAdministration ДОЛЖЕН содержать один [1..1] элемент effectiveTime</assert>
			<assert test="count(effectiveTime[2])=1">У3-36.1.4.1.2: Элемент substanceAdministration ДОЛЖЕН содержать один [1..1] элемент effectiveTime</assert>
			<assert test="count(routeCode)=1">У3-36.1.4.1.3: Элемент substanceAdministration ОБЯЗАН содержать один [1..1] элемент routeCode</assert>
			<assert test="count(doseQuantity)=1">У3-36.1.4.1.4: Элемент substanceAdministration ДОЛЖЕН содержать один [1..1] элемент doseQuantity</assert>
			<assert test="count(consumable)=1">У3-36.1.4.1.5: Элемент substanceAdministration ОБЯЗАН содержать один [1..1] элемент consumable</assert>
			<assert test="count(precondition)=[0,1]">У3-36.1.4.1.6: Элемент substanceAdministration МОЖЕТ содержать не более одного [0..1] элемента precondition</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/effectiveTime[1][not(@nullFlavor)]">
			<assert test="@value!=''">У3-36.1.4.1.1: Элемент effectiveTime должен содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/effectiveTime[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/effectiveTime[2][not(@nullFlavor)]">
			<assert test="@xsi:type='PIVL_TS'">У3-36.1.4.1.2: Элемент effectiveTime обязан содержать один атрибут @xsi:type со значением "PIVL_TS"</assert>
			<assert test="@institutionSpecified!=''">У3-36.1.4.1.2: Элемент effectiveTime должен содержать один атрибут @institutionSpecified с не пустым значением</assert>
			<assert test="count(period)=1">У3-36.1.4.1.2.1: Элемент effectiveTime ОБЯЗАН содержать один [1..1] элемент period</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/effectiveTime[2][@nullFlavor]">
			<assert test="@xsi:type='PIVL_TS'">У3-36.1.4.1.2: Элемент effectiveTime обязан содержать один атрибут @xsi:type со значением "PIVL_TS"</assert>
			<report test="@institutionSpecified">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @institutionSpecified</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/effectiveTime[2]/period">
			<report test="@nullFlavor">У3-36.1.4.1.2.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/effectiveTime[2]/period не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-36.1.4.1.2.1: Элемент period обязан содержать один атрибут @value с не пустым значением</assert>
			<assert test="@unit!=''">У3-36.1.4.1.2.1: Элемент period обязан содержать один атрибут @unit с не пустым значением</assert>
			<assert test="count(translation)=1">У3-36.1.4.1.2.1.1: Элемент period ОБЯЗАН содержать один [1..1] элемент translation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/effectiveTime[2]/period/translation">
			<report test="@nullFlavor">У3-36.1.4.1.2.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/effectiveTime[2]/period/translation не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-36.1.4.1.2.1.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
			<assert test="@codeSystemName!=''">У3-36.1.4.1.2.1.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@value!=''">У3-36.1.4.1.2.1.1: Элемент translation обязан содержать один атрибут @value с не пустым значением</assert>
			<assert test="@code!=''">У3-36.1.4.1.2.1.1: Элемент translation обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-36.1.4.1.2.1.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-36.1.4.1.2.1.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/routeCode">
			<report test="@nullFlavor">У3-36.1.4.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/routeCode не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1468'">У3-36.1.4.1.3: Элемент routeCode обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1468"</assert>
			<assert test="@codeSystemName!=''">У3-36.1.4.1.3: Элемент routeCode обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-36.1.4.1.3: Элемент routeCode обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-36.1.4.1.3: Элемент routeCode обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-36.1.4.1.3: Элемент routeCode обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/doseQuantity[not(@nullFlavor)]">
			<assert test="@value!=''">У3-36.1.4.1.4: Элемент doseQuantity должен содержать один атрибут @value с не пустым значением</assert>
			<assert test="@unit!=''">У3-36.1.4.1.4: Элемент doseQuantity должен содержать один атрибут @unit с не пустым значением</assert>
			<assert test="count(translation)=1">У3-36.1.4.1.4.1: Элемент doseQuantity ОБЯЗАН содержать один [1..1] элемент translation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/doseQuantity[@nullFlavor]">
			<report test="@value">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @value</report>
			<report test="@unit">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @unit</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/doseQuantity/translation">
			<report test="@nullFlavor">У3-36.1.4.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/doseQuantity/translation не должен иметь атрибут @nullFlavor</report>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">У3-36.1.4.1.4.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
			<assert test="@codeSystemName!=''">У3-36.1.4.1.4.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@value!=''">У3-36.1.4.1.4.1: Элемент translation обязан содержать один атрибут @value с не пустым значением</assert>
			<assert test="@code!=''">У3-36.1.4.1.4.1: Элемент translation обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-36.1.4.1.4.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-36.1.4.1.4.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/consumable">
			<report test="@nullFlavor">У3-36.1.4.1.5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/consumable не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='CSM'">У3-36.1.4.1.5: Элемент consumable обязан содержать один атрибут @typeCode со значением "CSM"</assert>
			<assert test="count(manufacturedProduct)=1">У3-36.1.4.1.5.1: Элемент consumable ОБЯЗАН содержать один [1..1] элемент manufacturedProduct</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/consumable/manufacturedProduct">
			<report test="@nullFlavor">У3-36.1.4.1.5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/consumable/manufacturedProduct не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='MANU'">У3-36.1.4.1.5.1: Элемент manufacturedProduct обязан содержать один атрибут @classCode со значением "MANU"</assert>
			<assert test="count(manufacturedMaterial)=1">У3-36.1.4.1.5.1.1: Элемент manufacturedProduct ДОЛЖЕН содержать один [1..1] элемент manufacturedMaterial</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
			<assert test="@nullFlavor='NA'">У3-36.1.4.1.5.1.1: Элемент manufacturedMaterial обязан содержать один атрибут @nullFlavor со значением "NA"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/precondition">
			<report test="@nullFlavor">У3-36.1.4.1.6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/precondition не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='PRCN'">У3-36.1.4.1.6: Элемент precondition обязан содержать один атрибут @typeCode со значением "PRCN"</assert>
			<assert test="count(criterion)=1">У3-36.1.4.1.6.1: Элемент precondition ОБЯЗАН содержать один [1..1] элемент criterion</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/precondition/criterion">
			<report test="@nullFlavor">У3-36.1.4.1.6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/precondition/criterion не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У3-36.1.4.1.6.1.1: Элемент criterion ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-36.1.4.1.6.1.2: Элемент criterion ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/precondition/criterion/code">
			<report test="@nullFlavor">У3-36.1.4.1.6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/precondition/criterion/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='ASSERTION'">У3-36.1.4.1.6.1.1: Элемент code обязан содержать один атрибут @code со значением "ASSERTION"</assert>
			<assert test="@codeSystem='2.16.840.1.113883.5.4'">У3-36.1.4.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "2.16.840.1.113883.5.4"</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/precondition/criterion/value">
			<report test="@nullFlavor">У3-36.1.4.1.6.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='DRUG']/section/entry[act/entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/act[entryRelationship/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.99.2.611']/entryRelationship[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/@nullFlavor='NA']/substanceAdministration/precondition/criterion/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-36.1.4.1.6.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-36.1.4.1.6.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']">
			<report test="@nullFlavor">У2-11.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-11.1.4.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']/section">
			<report test="@nullFlavor">У2-11.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-11.1.4.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-11.1.4.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-11.1.4.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']/section/code">
			<report test="@nullFlavor">У2-11.1.4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='ELSEPROCEDURE'">У2-11.1.4.1.1: Элемент code обязан содержать один атрибут @code со значением "ELSEPROCEDURE"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-11.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-11.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-11.1.4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-11.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']/section/title">
			<report test="@nullFlavor">У2-11.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-11.1.4.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']/section/text">
			<report test="@nullFlavor">У2-11.1.4.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='PRESCRIBE']/section/component[section/code/@code='ELSEPROCEDURE']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-11.1.4.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']">
			<report test="@nullFlavor">У2-12: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-12.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section">
			<report test="@nullFlavor">У2-12.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-12.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-12.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=[0,1]">У2-12.1.3: Элемент section МОЖЕТ содержать не более одного [0..1] элемента text</assert>
			<assert test="count(entry[observation/code/@code='6035'])=1">У3-37: Элемент section ОБЯЗАН содержать один [1..1] элемент entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/code">
			<report test="@nullFlavor">У2-12.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='SERVICES'">У2-12.1.1: Элемент code обязан содержать один атрибут @code со значением "SERVICES"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-12.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-12.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-12.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-12.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/title">
			<report test="@nullFlavor">У2-12.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-12.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/text">
			<report test="@nullFlavor">У2-12.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-12.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']">
			<report test="@nullFlavor">У3-37: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(observation)=1">У3-37.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation">
			<report test="@nullFlavor">У3-37.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-37.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-37.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-37.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-37.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
			<assert test="count(entryRelationship[not(@codeSystem=[''])])>=1">У3-37.1.3: Элемент observation ОБЯЗАН содержать не менее одного [1..*] элемента entryRelationship</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/code">
			<report test="@nullFlavor">У3-37.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='6035'">У3-37.1.1: Элемент code обязан содержать один атрибут @code со значением "6035"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-37.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-37.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-37.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-37.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/value">
			<report test="@nullFlavor">У3-37.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='INT'">У3-37.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "INT"</assert>
			<assert test="@value!=''">У3-37.1.2: Элемент value обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]">
			<report test="@nullFlavor">У3-37.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-37.1.3: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(act[not(@codeSystem=[''])])=1">У3-37.1.3.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент act</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]/act[not(@codeSystem=[''])]">
			<report test="@nullFlavor">У3-37.1.3.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]/act[not(@codeSystem=[''])] не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='ACT'">У3-37.1.3.1: Элемент act обязан содержать один атрибут @classCode со значением "ACT"</assert>
			<assert test="@moodCode='EVN'">У3-37.1.3.1: Элемент act обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-37.1.3.1.1: Элемент act ДОЛЖЕН содержать один [1..1] элемент code</assert>
			<assert test="count(text)=[0,1]">У3-37.1.3.1.2: Элемент act МОЖЕТ содержать не более одного [0..1] элемента text</assert>
			<assert test="count(effectiveTime)=1">У3-37.1.3.1.3: Элемент act ОБЯЗАН содержать один [1..1] элемент effectiveTime</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]/act[not(@codeSystem=[''])]/code[not(@nullFlavor)]">
			<assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-37.1.3.1.1: Элемент code должен содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1070"</assert>
			<assert test="@codeSystemName!=''">У3-37.1.3.1.1: Элемент code должен содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-37.1.3.1.1: Элемент code должен содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-37.1.3.1.1: Элемент code должен содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-37.1.3.1.1: Элемент code должен содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]/act[not(@codeSystem=[''])]/code[@nullFlavor]">
			<report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @code</report>
			<report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @displayName</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]/act[not(@codeSystem=[''])]/text">
			<report test="@nullFlavor">У3-37.1.3.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]/act[not(@codeSystem=[''])]/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-37.1.3.1.2: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]/act[not(@codeSystem=[''])]/effectiveTime">
			<report test="@nullFlavor">У3-37.1.3.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship[not(@codeSystem=[''])]/act[not(@codeSystem=[''])]/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-37.1.3.1.3: Элемент effectiveTime обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']">
			<report test="@nullFlavor">У2-13: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS'] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(section)=1">У2-13.1: Элемент component ОБЯЗАН содержать один [1..1] элемент section</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section">
			<report test="@nullFlavor">У2-13.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section не должен иметь атрибут @nullFlavor</report>
			<assert test="count(code)=1">У2-13.1.1: Элемент section ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(title)=1">У2-13.1.2: Элемент section ОБЯЗАН содержать один [1..1] элемент title</assert>
			<assert test="count(text)=1">У2-13.1.3: Элемент section ОБЯЗАН содержать один [1..1] элемент text</assert>
			<assert test="count(entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']])>=1">У3-38: Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/code">
			<report test="@nullFlavor">У2-13.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='LINKDOCS'">У2-13.1.1: Элемент code обязан содержать один атрибут @code со значением "LINKDOCS"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">У2-13.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.197"</assert>
			<assert test="@codeSystemName!=''">У2-13.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У2-13.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У2-13.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/title">
			<report test="@nullFlavor">У2-13.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/title не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-13.1.2: Элемент title должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/text">
			<report test="@nullFlavor">У2-13.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У2-13.1.3: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]">
			<report test="@nullFlavor">У3-38: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']] не должен иметь атрибут @nullFlavor</report>
			<assert test="count(act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']])=1">У3-38.1: Элемент entry ОБЯЗАН содержать один [1..1] элемент act</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]">
			<report test="@nullFlavor">У3-38.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']] не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='ACT'">У3-38.1: Элемент act обязан содержать один атрибут @classCode со значением "ACT"</assert>
			<assert test="@moodCode='EVN'">У3-38.1: Элемент act обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-38.1.1: Элемент act ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(text)=[0,1]">У3-38.1.2: Элемент act МОЖЕТ содержать не более одного [0..1] элемента text</assert>
			<assert test="count(effectiveTime)=1">У3-38.1.3: Элемент act ОБЯЗАН содержать один [1..1] элемент effectiveTime</assert>
			<assert test="count(entryRelationship[observation/code/@code='11002'])=[0,1]">У3-38.1.4: Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='11003'])=[0,1]">У3-38.1.5: Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(entryRelationship[observation/code/@code='6058'])=[0,1]">У3-38.1.6: Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship</assert>
			<assert test="count(reference)=1">У3-38.1.7: Элемент act ОБЯЗАН содержать один [1..1] элемент reference</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/code">
			<report test="@nullFlavor">У3-38.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code!=''">У3-38.1.1: Элемент code обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystem!=''">У3-38.1.1: Элемент code обязан содержать один атрибут @codeSystem с не пустым значением; допустимые значения: "1.2.643.5.1.13.13.99.2.1079", "1.2.643.5.1.13.13.11.1522"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У3-38.1.1: Элемент code обязан содержать один атрибут @codeSystem с не пустым значением; допустимые значения: "1.2.643.5.1.13.13.99.2.1079", "1.2.643.5.1.13.13.11.1522"</assert>
			<assert test="@codeSystemVersion!=''">У3-38.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@codeSystemName!=''">У3-38.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-38.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/text">
			<report test="@nullFlavor">У3-38.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/text не должен иметь атрибут @nullFlavor</report>
			<assert test=".!=''">У3-38.1.2: Элемент text должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/effectiveTime">
			<report test="@nullFlavor">У3-38.1.3: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/effectiveTime не должен иметь атрибут @nullFlavor</report>
			<assert test="@value!=''">У3-38.1.3: Элемент effectiveTime обязан содержать один атрибут @value с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']">
			<report test="@nullFlavor">У3-38.1.4: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-38.1.4: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-38.1.4.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation">
			<report test="@nullFlavor">У3-38.1.4.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-38.1.4.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-38.1.4.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-38.1.4.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-38.1.4.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation/code">
			<report test="@nullFlavor">У3-38.1.4.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='11002'">У3-38.1.4.1.1: Элемент code обязан содержать один атрибут @code со значением "11002"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-38.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-38.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-38.1.4.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-38.1.4.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation/value">
			<report test="@nullFlavor">У3-38.1.4.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-38.1.4.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-38.1.4.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']">
			<report test="@nullFlavor">У3-38.1.5: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-38.1.5: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-38.1.5.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation">
			<report test="@nullFlavor">У3-38.1.5.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-38.1.5.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-38.1.5.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-38.1.5.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-38.1.5.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation/code">
			<report test="@nullFlavor">У3-38.1.5.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='11003'">У3-38.1.5.1.1: Элемент code обязан содержать один атрибут @code со значением "11003"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-38.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-38.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-38.1.5.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-38.1.5.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation/value">
			<report test="@nullFlavor">У3-38.1.5.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='ST'">У3-38.1.5.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "ST"</assert>
			<assert test=".!=''">У3-38.1.5.1.2: Элемент value должен содержать не пустое текстовое наполнение</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']">
			<report test="@nullFlavor">У3-38.1.6: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058'] не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='COMP'">У3-38.1.6: Элемент entryRelationship обязан содержать один атрибут @typeCode со значением "COMP"</assert>
			<assert test="count(observation)=1">У3-38.1.6.1: Элемент entryRelationship ОБЯЗАН содержать один [1..1] элемент observation</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation">
			<report test="@nullFlavor">У3-38.1.6.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='OBS'">У3-38.1.6.1: Элемент observation обязан содержать один атрибут @classCode со значением "OBS"</assert>
			<assert test="@moodCode='EVN'">У3-38.1.6.1: Элемент observation обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(code)=1">У3-38.1.6.1.1: Элемент observation ОБЯЗАН содержать один [1..1] элемент code</assert>
			<assert test="count(value)=1">У3-38.1.6.1.2: Элемент observation ОБЯЗАН содержать один [1..1] элемент value</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation/code">
			<report test="@nullFlavor">У3-38.1.6.1.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation/code не должен иметь атрибут @nullFlavor</report>
			<assert test="@code='6058'">У3-38.1.6.1.1: Элемент code обязан содержать один атрибут @code со значением "6058"</assert>
			<assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-38.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
			<assert test="@codeSystemName!=''">У3-38.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@displayName!=''">У3-38.1.6.1.1: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-38.1.6.1.1: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation/value">
			<report test="@nullFlavor">У3-38.1.6.1.2: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation/value не должен иметь атрибут @nullFlavor</report>
			<assert test="@xsi:type='CD'">У3-38.1.6.1.2: Элемент value обязан содержать один атрибут @xsi:type со значением "CD"</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.1008'">У3-38.1.6.1.2: Элемент value обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.1008"</assert>
			<assert test="@codeSystemName!=''">У3-38.1.6.1.2: Элемент value обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
			<assert test="@code!=''">У3-38.1.6.1.2: Элемент value обязан содержать один атрибут @code с не пустым значением</assert>
			<assert test="@codeSystemVersion!=''">У3-38.1.6.1.2: Элемент value обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
			<assert test="@displayName!=''">У3-38.1.6.1.2: Элемент value обязан содержать один атрибут @displayName с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference">
			<report test="@nullFlavor">У3-38.1.7: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference не должен иметь атрибут @nullFlavor</report>
			<assert test="@typeCode='REFR'">У3-38.1.7: Элемент reference обязан содержать один атрибут @typeCode со значением "REFR"</assert>
			<assert test="count(externalDocument)=1">У3-38.1.7.1: Элемент reference ОБЯЗАН содержать один [1..1] элемент externalDocument</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument">
			<report test="@nullFlavor">У3-38.1.7.1: Элемент ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument не должен иметь атрибут @nullFlavor</report>
			<assert test="@classCode='DOCCLIN'">У3-38.1.7.1: Элемент externalDocument обязан содержать один атрибут @classCode со значением "DOCCLIN"</assert>
			<assert test="@moodCode='EVN'">У3-38.1.7.1: Элемент externalDocument обязан содержать один атрибут @moodCode со значением "EVN"</assert>
			<assert test="count(id[1])=1">У3-38.1.7.1.1: Элемент externalDocument ДОЛЖЕН содержать один [1..1] элемент id (Уникальный идентификатор документа в МИС)</assert>
			<assert test="count(id[2])=1">У3-38.1.7.1.2: Элемент externalDocument ДОЛЖЕН содержать один [1..1] элемент id (Уникальный идентификатор документа в РЭМД)</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[1][not(@nullFlavor)]">
			<assert test="@root!=''">У3-38.1.7.1.1: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.51$')">У3-38.1.7.1.1: Элемент id должен содержать один атрибут @root с не пустым значением; допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
			<assert test="@extension!=''">У3-38.1.7.1.1: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[1][@nullFlavor]">
			<report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @root</report>
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[2][not(@nullFlavor)]">
			<assert test="@root='1.2.643.5.1.13.13.17.1.1'">У3-38.1.7.1.2: Элемент id должен содержать один атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
			<assert test="@extension!=''">У3-38.1.7.1.2: Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[2][@nullFlavor]">
			<report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с атрибутом @extension</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="//id[not(@nullFlavor)]">
			<assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">Элемент //id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//id[@root='1.2.643.100.3'][not(@nullFlavor)]">
			<assert test="matches(@extension,'^([0-9]{3}[-\s]{0,1}){3}[0-9]{2}$')">Элемент //id[@root='1.2.643.100.3'] должен иметь синтаксически корректное значение атрибута @extension, соответствующее СНИЛС: должно состоять из 11 цифр, цифры могут группироваться по 3+3+3+2, между группами может ставиться пробел или тире.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//postalCode[not(@nullFlavor)]">
			<assert test="matches(.,'^[0-9]{6}$')">Элемент //postalCode должен иметь синтаксически корректное значение, соответствующее почтовому индексу: должно состоять из 6 цифр без разделителей.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//id[not(@nullFlavor)][@root='1.2.643.5.1.13.13.17.1.1']">
			<assert test="matches(@extension,'(^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$|^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$)')">Элемент //id[@root='1.2.643.5.1.13.13.17.1.1'] должен иметь синтаксически корректное значение атрибута @extension, соответствующее регулярному выражению '^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$' или '^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//effectiveTime[not(low|high|width)][not(@nullFlavor)][not(@xsi:type=['IVL_TS','PIVL_TS'])]">
			<assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель временной зоны.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//birthTime[not(@nullFlavor)]|//time[not(@nullFlavor)]|//effectiveTime/low[not(@nullFlavor)]|//effectiveTime/high[not(@nullFlavor)]|//value[@xsi:type='TS'][not(@nullFlavor)]">
			<assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель временной зоны.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//identity:effectiveTime/identity:low[not(@nullFlavor)]">
			<assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель временной зоны.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//identity:effectiveTime/identity:high[not(@nullFlavor)]">
			<assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель временной зоны.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//identity:IssueDate[not(@nullFlavor)]">
			<assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель временной зоны.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//identity:IssueDate[not(@nullFlavor)]">
			<assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель временной зоны.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument[id/@root][setId/@root]">
			<report test="id/@root = setId/@root">Значения атрибута @root элементов ClinicalDocument/id и ClinicalDocument/setId должны различаться.</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="//identity:Props[not(@nullFlavor)][identity:Ogrn or identity:Ogrnip]">
			<assert test="(identity:Ogrn and not(identity:Ogrnip)) or (identity:Ogrnip and not(identity:Ogrn)) or (identity:Ogrn and identity:Ogrnip/@nullFlavor) or (identity:Ogrn/@nullFlavor and identity:Ogrnip)">ОГРН и ОГРНИП не могут быть указаны совместно.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//*[@xsi:type='PQ'][not(@nullFlavor)]">
			<assert test="@value!=''">Элемент, содержащий @xsi:type='PQ', должен иметь не пустое значение атрибута @value.</assert>
			<assert test="@unit!=''">Элемент, содержащий @xsi:type='PQ', должен иметь не пустое значение атрибута @unit.</assert>
			<assert test="count(translation)&lt;=1">Элемент, содержащий @xsi:type='PQ', должен иметь не более 1 элемента translation.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//*[@xsi:type='ST'][not(@nullFlavor)]">
			<assert test=".!=''">Элемент, содержащий @xsi:type='ST', должен иметь не пустое значение.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//*[@xsi:type='BL'][not(@nullFlavor)]">
			<assert test="@value=['true','false']">Элемент, содержащий @xsi:type='BL', должен иметь значение атрибута @value равное 'true' или 'false'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//*[@xsi:type='CD'][not(@nullFlavor)]">
			<assert test="@codeSystem!=''">Элемент, содержащий @xsi:type='CD', должен иметь не пустое значение атрибута @codeSystem.</assert>
			<assert test="@codeSystemName!=''">Элемент, содержащий @xsi:type='CD', должен иметь не пустое значение атрибута @codeSystemName.</assert>
			<assert test="@code!=''">Элемент, содержащий @xsi:type='CD', должен иметь не пустое значение атрибута @code.</assert>
			<assert test="@codeSystemVersion!=''">Элемент, содержащий @xsi:type='CD', должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
			<assert test="@displayName!=''">Элемент, содержащий @xsi:type='CD', должен иметь не пустое значение атрибута @displayName.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//*[@xsi:type='INT'][not(@nullFlavor)]">
			<assert test="@value!=''">Элемент, содержащий @xsi:type='INT', должен иметь не пустое значение атрибута @value.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//*[@xsi:type='TS'][not(@nullFlavor)]">
			<assert test="@value!=''">Элемент, содержащий @xsi:type='TS', должен иметь не пустое значение атрибута @value.</assert>
			<assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель временной зоны.</assert>
		</rule>
	</pattern>
	<!-- Проверка наличия корневого элемента -->
	<pattern>
		<rule context="/">
			<assert test="count(ClinicalDocument)=1">Main01-1. Документ должен иметь 1 корневой элемент ClinicalDocument.</assert>
		</rule>
	</pattern>
	<!-- Для периода времени -->
	<pattern>
		<rule context="//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)]">
			<assert test="count(low)&lt;= 1">Элемент, содержащий @xsi:type='IVL_TS', обязан
                иметь 1 элемент low.</assert>
			<assert test="count(high)&lt;= 1">Элемент, содержащий @xsi:type='IVL_TS', обязан
                иметь 1 элемент high.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="//*[@xsi:type = 'IVL_TS'][not(@nullFlavor)][high][low]">
			<assert test="low[not(@nullFlavor)]/@value != ''">Элемент, содержащий
                @xsi:type='IVL_TS', должен иметь не пустое значение атрибута low/@value.</assert>
			<assert test="matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
			<assert test="high[not(@nullFlavor)]/@value != ''">Элемент, содержащий
                @xsi:type='IVL_TS', должен иметь не пустое значение атрибута high/@value.</assert>
			<assert test="matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
		</rule>
	</pattern>
	<!-- Дополнительные правила для блока "Сведения об источнике оплаты" -->
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['8', '9', '10', '11', '12']]">
			<assert test="identity:DocInfo/@nullFlavor = ['NA', 'NAV']">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение
                атрибута @nullFlavor равное 'NA' или 'NAV'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '1']">
			<assert test="identity:DocInfo/identity:IdentityDocType/@code = '1'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '1'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '3']">
			<assert test="identity:DocInfo/identity:IdentityDocType/@code = '2'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '2'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = ['4', '5', '6']]">
			<assert test="identity:DocInfo/identity:IdentityDocType/@code = '3'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '3'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor][identity:DocInfo/identity:IdentityDocType/@code = '1']">
			<assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType][identity:DocInfo/identity:IdentityDocType/@code = ['2', '3']]">
			<assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType
                должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = '1']">
			<assert test="identity:DocInfo/identity:Series != ''">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь не пустое значение.</assert>
			<report test="identity:DocInfo/identity:Series/@nullFlavor">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series не
                должен иметь атрибут @nullFlavor.</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = ['2', '3', '4']]">
			<assert test="identity:DocInfo/identity:Series/@nullFlavor = 'NA'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']">
			<assert test="identity:DocInfo/identity:Series/@nullFlavor = 'NAV'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA']">
			<assert test="identity:DocInfo/identity:Series != ''">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь не пустое значение.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']">
			<assert test="identity:DocInfo/identity:Number/@nullFlavor = 'NAV'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor = 'NAV')]]">
			<assert test="identity:DocInfo/identity:Number != ''">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number
                должен иметь не пустое значение.</assert>
			<report test="identity:DocInfo/identity:Number/@nullFlavor">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number не
                должен иметь атрибут @nullFlavor.</report>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']">
			<assert test="identity:DocInfo/identity:effectiveTime/@nullFlavor = ['NAV', 'NASK']">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime
                должен иметь значение атрибута @nullFlavor равное 'NAV' или 'NASK'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime/identity:high][identity:DocInfo/identity:InsurancePolicyType/@code = '2']">
			<assert test="identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor = 'NAV'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
		</rule>
	</pattern>
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[@nullFlavor]">
			<assert test="@nullFlavor = 'NA'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь
                значение атрибута @nullFlavor равное 'NA'.</assert>
		</rule>
	</pattern>
	<!-- Соответствие наполнения таблице для блока "Сведения об источнике оплаты" -->
	<pattern>
		<rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['1', '3', '4', '5', '6']]">
			<report test="identity:DocInfo/@nullFlavor"> Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo не должен иметь 
                атрибут @nullFlavor при указании данного типа источника оплаты в соответствии с Таблицей "Обязательность заполнения элементов в зависимости от источника оплаты", представленной в руководстве по реализации в разделе "Сведения об источнике оплаты".</report>
		</rule>
	</pattern>
</schema>

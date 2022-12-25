<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
<ns prefix="fias" uri="urn:hl7-ru:fias"/>
<ns prefix="identity" uri="urn:hl7-ru:identity"/>
	<pattern>
		<rule context="ClinicalDocument/recordTarget/patientRole/patient | //assignedPerson">
			<assert test="name[last()=1]">Элементы ClinicalDocument/recordTarget/patientRole/patient, //assignedPerson ДОЛЖНЫ содержать ровно один элемент name.</assert>
			<assert test="name/family[last()=1]">ClinicalDocument/recordTarget/patientRole/patient/name и //assignedPerson/name ДОЛЖНЫ содержать ровно один элемент family, НЕ ДОЛЖЕН содержать @nullFlavor.</assert>
			<assert test="name/given[last()=1] or name/given[last()=2]">Элементы ClinicalDocument/recordTarget/patientRole/patient/name и //assignedPerson/name ДОЛЖНЫ иметь один или два элемента given НЕ ДОЛЖЕН содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole | ClinicalDocument/author/assignedAuthor | ClinicalDocument/participant[@typeCode='REF']/associatedEntity | //assignedPerson">
			<assert test="addr[last()>0] and addr[last()&lt;3] or empty(addr)">Элементам ClinicalDocument/recordTarget/patientRole; ClinicalDocument/author/assignedAuthor; ClinicalDocument/participant[@typeCode=”REF”]/associatedEntity; //assignedPerson СЛЕДУЕТ иметь до двух [0..2] элементов addr.</assert>
			<assert test="telecom[last()>0] or empty(telecom)">Элементы ClinicalDocument/recordTarget/patientRole; ClinicalDocument/author/assignedAuthor; ClinicalDocument/participant[@typeCode=”REF”]/associatedEntity; //assignedPerson СЛЕДУЕТ иметь любое количество [0..*] элементов telecom.</assert>
		</rule>
		<rule context="//addr">
			<assert test="streetAddressLine[last()=1] and empty(streetAddressLine/@nullFlavor)">Все элементы //addr ДОЛЖНЫ иметь один [1..1] streetAddressLine (НЕ ДОЛЖЕН [0..0] содержать @nullFlavor).</assert>
			<assert test="state[last()=1] and empty(state/@nullFlavor)">Все элементы //addr ДОЛЖНЫ иметь один [1..1] state (НЕ ДОЛЖЕН [0..0] содержать @nullFlavor).</assert>
			<assert test="fias:Address[last()=1] or fias:Address/@nullFlavor">Все элементы //addr ДОЛЖНЫ иметь один [1..1] fias:Address. Если элементы fias:Address НЕ МОЖЕТ быть заполнен данными, то атрибут @nullFlavor ДОЛЖЕН быть заполнен значением из справочника "Причины отсутствия информации (Null Flavor)" (идентификатор справочника "1.2.643.5.1.13.13.99.2.286", поле "Код").</assert>
			<assert test="fias:Address/fias:AOGUID[last()=1] and empty(fias:Address/fias:AOGUID/@nullFlavor) or fias:Address/@nullFlavor">Элемент fias:Address ДОЛЖЕН хранить в себе один [1..1] элемент fias:AOGUID (НЕ ДОЛЖЕН [0..0] содержать @nullFlavor).</assert>
			<assert test="fias:Address/fias:HOUSEGUID[last()=1] or fias:Address/fias:HOUSEGUID/@nullFlavor or fias:Address/@nullFlavor">Элемент fias:Address ДОЛЖЕН хранить в себе один [1..1] fias:HOUSEGUID. Если элемент fias:HOUSEGUID НЕ МОЖЕТ быть заполнен данными, то атрибут //fias:HOUSEGUID/@nullFlavor ДОЛЖЕН быть заполнен значением из справочника "Причины отсутствия информации (Null Flavor)" (идентификатор справочника "1.2.643.5.1.13.13.99.2.286", поле "Код").</assert>
		</rule>
		<rule context="//telecom">
			<assert test="matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')">Все элементы //telecom со схемой "tel:" ДОЛЖНЫ соответствовать следующему регулярному выражению: tel:\+?[-0-9().]+ Как минимум одна цифра ДОЛЖНА остаться в номере телефона после удаления всех разделителей.</assert>
		</rule>
		<rule context="ClinicalDocument/author/time | ClinicalDocument/legalAuthenticator/time | ClinicalDocument/effectiveTime">
			<assert test="matches(@value, '^[0-9]{8}(([0-9]{4})([0-9]{2})?[+][0-9]{4})?$')">Времена и временные интервалы в элементах ClinicalDocument/author/time, ClinicalDocument/legalAuthenticator/time, ClinicalDocument/effectiveTime, если такие представлены, ДОЛЖНЫ быть указаны с точностью до дня, СЛЕДУЕТ указывать с точностью до минут. Если указано с точностью до минут, то ДОЛЖНА быть указанная временная зона, МОЖНО уточнить времена до секунд.</assert>
			<report test="@nullFlavor">Элементы ClinicalDocument/author/time, ClinicalDocument/legalAuthenticator/time, ClinicalDocument/effectiveTime НЕ ДОЛЖНЫ содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument">
			<assert test="realmCode[last()=1] and realmCode/@code='RU'">Один [1..1] элемент ClinicalDocument/realmCode ДОЛЖЕН быть представлен со значением атрибута @code равным “RU”.</assert>
			<assert test="typeId[last()=1] and typeId/@extension='POCD_HD000040' and typeId/@root='2.16.840.1.113883.1.3'">Один [1..1] элемент ClinicalDocument/typeId ДОЛЖЕН быть представлен со значением атрибута @extension равным “POCD_HD000040”, атрибута @root равным “2.16.840.1.113883.1.3”.</assert>
			<assert test="templateId[last()=1] and templateId/@root='1.2.643.5.1.13.13.14.38.3'">Один [1..1] элемент ClinicalDocument/templateId ДОЛЖЕН быть представлен со значением атрибута @root равным ”1.2.643.5.1.13.13.14.38.3”.</assert>
			<assert test="id[last()=1] and matches(id/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">Один элемент ClinicalDocument/id ДОЛЖЕН быть. Атрибут @root ДОЛЖЕН быть заполнен синтаксически корректным OID.</assert>
			<assert test="id/@extension">Элемент ClinicalDocument/id/@extension ДОЛЖЕН быть представлен.</assert>
			<assert test="code[last()=1]">Один [1..1] элемент ClinicalDocument/code ДОЛЖЕН быть представлен.</assert>
			<assert test="code/@code='38' and code/@codeSystem='1.2.643.5.1.13.13.99.2.195'">Атрибут ClinicalDocument/code/@code ДОЛЖЕН быть равен коду ”38”, атрибут @codeSystem ДОЛЖЕН быть равен ”1.2.643.5.1.13.13.99.2.195”.</assert>
			<assert test="title[last()=1] and title!=''"> Один [1..1] элемент ClinicalDocument/title ДОЛЖЕН быть представлен и ДОЛЖЕН содержать не пустое наполнение.</assert>
			<assert test="effectiveTime[last()=1] and empty(effectiveTime/@nullFlavor)">Один [1..1] элемент ClinicalDocument/effectiveTime ДОЛЖЕН быть представлен и НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="confidentialityCode[last()=1] and confidentialityCode/@codeSystemName!='' and confidentialityCode/@codeSystem='1.2.643.5.1.13.13.99.2.285' and confidentialityCode/@code!='' and confidentialityCode/@displayName!=''">Один [1..1] элемент ClinicalDocument/confidentialityCode ДОЛЖЕН быть представлен и ДОЛЖЕН содержать значение из справочника НСИ (атрибут @codeSystem ДОЛЖЕН быть представлен и иметь значение “1.2.643.5.1.13.13.99.2.285”, атрибуты @code, @codeSystemName, @displayName ДОЛЖНЫ быть представлены не пустыми значениями).</assert>
			<assert test="languageCode[last()=1] and languageCode/@code='ru-RU'">Один [1..1] элемент ClinicalDocument/languageCode ДОЛЖЕН быть представлен. Атрибут @code ДОЛЖЕН быть равен “ru-RU”.</assert>
			<assert test="versionNumber[last()=1]">Один элемент ClinicalDocument/versionNumber ДОЛЖНЫ быть представлен</assert>
			<assert test="setId/@extension">Элемент ClinicalDocument/setId ДОЛЖЕН содержать атрибут @extension.</assert>
			<assert test="setId[last()=1] and matches(setId/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.[0-9]{2})?$')">Один элемент ClinicalDocument/setId должен быть представлен. Атрибут @root ДОЛЖЕН быть заполнен синтаксически корректным OID.</assert>
			<assert test="setId/@root!=id/@root">Значение атрибута ClinicalDocument/setId/@root ДОЛЖНО быть отлично от значения атрибута ClinicalDocument/id/@root.</assert>
			<assert test="versionNumber/@value!=''">Элемент ClinicalDocument/versionNumber. Атрибут @value ДОЛЖЕН быть представлен не пустым значением.</assert>
			<assert test="recordTarget/patientRole[last()=1]">Один [1..1] элемент ClinicalDocument/recordTarget/patientRole ДОЛЖЕН быть представлен.</assert>
			<assert test="author[last()=1]">Один [1..1] элемент ClinicalDocument/author ДОЛЖЕН быть представлен.</assert>
			<assert test="custodian/assignedCustodian/representedCustodianOrganization[last()=1]">ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ДОЛЖЕН быть представлен.</assert>
			<assert test="informationRecipient/intendedRecipient/receivedOrganization[last()=1]">Один [1..1] элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization ДОЛЖЕН быть представлен.</assert>
			<assert test="legalAuthenticator[last()=1]">Один [1..1] элемент ClinicalDocument/legalAuthenticator ДОЛЖЕН быть представлен.</assert>
			<assert test="component/structuredBody[last()=1]">Один [1..1] элемент ClinicalDocument/component/structuredBody ДОЛЖЕН быть представлен.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole">
			<assert test="id[last()=1] and id/@root='1.2.643.100.3' and id/@extension">Элемент ClinicalDocument/recordTarget/patientRole ДОЛЖЕН иметь один [1..1] элемент id, который ДОЛЖЕН быть страховым номером индивидуального лицевого счѐта (СНИЛС). Элемент ДОЛЖЕН иметь атрибуты @root и @extension. Атрибут @root ДОЛЖЕН быть заполнен значением "1.2.643.100.3".</assert>
			<report test="id/@nullFlavor">ClinicalDocument/recordTarget/patientRole/id НЕ ДОЛЖЕН иметь @nullFlavor.</report>
			<assert test="identity:IdentityDoc[last()=1] or empty(identity:IdentityDoc)">ClinicalDocument/recordTarget/patientRole МОЖЕТ иметь один [0..1] элемент identity:IdentityDoc.</assert>
			<assert test="addr[last()>0] and addr[last()&lt;3] or empty(addr)">ClinicalDocument/recordTarget/patientRole МОЖЕТ иметь от нуля до двух [0..2] элементов addr.</assert>
			<assert test="addr/@use='H' or addr/@use='HP' or empty(addr)">ClinicalDocument/recordTarget/patientRole/addr ДОЛЖЕН иметь атрибут @use со значением “H” или “HP".</assert>
			<assert test="telecom[last()>0] or empty(telecom)">ClinicalDocument/recordTarget/patientRole МОЖЕТ иметь произвольное количество [0..*] элементов telecom.</assert>
			<assert test="patient[last()=1]">ClinicalDocument/recordTarget/patientRole ДОЛЖЕН иметь один [1..1] элемент patient.</assert>
			<assert test="patient/name[last()=1]">ClinicalDocument/recordTarget/patientRole/patient ДОЛЖЕН содержать один [1..1] элемент name.</assert>
			<assert test="providerOrganization[last()=1]">>ClinicalDocument/recordTarget/patientRole ДОЛЖЕН быть указан один [1..1] элемент providerOrganization.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc">
			<assert test="identity:IdentityCardTypeId[last()=1]">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:IdentityCardTypeId.</assert>
			<assert test="identity:Series[last()=1]">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:Series.</assert>
			<assert test="identity:Number[last()=1]">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:Number.</assert>
			<assert test="identity:IssueOrgName[last()=1]">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:IssueOrgName.</assert>
			<assert test="identity:IssueOrgCode[last()=1]">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:IssueOrgCode.</assert>
			<assert test="identity:IssueDate[last()=1]">ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ДОЛЖЕН иметь один [1..1] элемент identity:IssueDate.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId">
			<assert test="@*='CD'">"ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "CD".</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.48'">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId. Атрибут codeSystem ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.48".</assert>
			<assert test="@code!='' and @codeSystemName!='' and @displayName!=''">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId. Атрибуты @code, @codeSystemName, @displayName ДОЛЖНЫ быть представлены не пустыми значениями.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardTypeId НЕ ДОЛЖЕН содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series">
			<assert test="@*='ST' or @nullFlavor">"Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "ST"или МОЖЕТ содержать один [0..1] атрибут @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number">
			<assert test="@*='ST'">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "ST".</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number НЕ ДОЛЖЕН содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName">
			<assert test="@*='ST' or @nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "ST" или МОЖЕТ содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode">
			<assert test="@*='ST' or @nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "ST" или МОЖЕТ содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate">
			<assert test="@*='TS'">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate  ДОЛЖЕН иметь один [1..1] атрибут @xsi:type со значением "TS".</assert>
			<assert test="@value[last()=1]">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate ДОЛЖЕН иметь один [1..1] атрибут @value.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
			<assert test="id[last()=1] or id/@nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization ДОЛЖЕН содержать один [1..1] элемент id, элемент id МОЖЕТ содержать @nullFlavor.</assert>
			<assert test="identity:Ogrn[last()=1] and identity:Ogrn!='' and identity:Ogrnip/@nullFlavor or identity:Ogrnip[last()=1] and identity:Ogrnip!='' and identity:Ogrn/@nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization ДОЛЖЕН содержать один [1..1] элемент identity:Ogrn и ДОЛЖЕН иметь непустое наполнение или ДОЛЖЕН содержать один [1..1] элемент identity:Ogrnip и ДОЛЖЕН иметь непустое наполнение. Элементы identity:Ogrn и identity:Ogrnip НЕ ДОЛЖНЫ быть заполнены совместно, один из элементов ДОЛЖЕН содержать @nullFlavor.</assert>
			<assert test="name[last()=1] and empty(name/@nullFlavor)">Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization ДОЛЖЕН содержать один [1..1] элемент name, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="telecom[last()>0] and empty(telecom/@nullFlavor) or empty(telecom)">Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization МОЖЕТ иметь хотя бы один [0..*] элементов telecom, НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="addr[last()=1] and empty(addr/@nullFlavor) or empty(addr)">Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization МОЖЕТ иметь один [0..1] элемент addr, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn">
			<assert test="@*='ST' or @nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrn ДОЛЖЕН содержать один [1..1] атрибут @xsi:type со значением "ST". МОЖЕТ содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip">
			<assert test="@*='ST' or @nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Ogrnip ДОЛЖЕН содержать один [1..1] атрибут @xsi:type со значением "ST". МОЖЕТ содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/author">
			<assert test="time[last()=1] and empty(time/@nullFlavor)">Элемент ClinicalDocument/author ДОЛЖЕН содержать один [1..1] элемент time. Элемент time НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="assignedAuthor[last()=1]">Элемент ClinicalDocument/author ДОЛЖЕН содержать один [1..1] элемент assignedAuthor.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor">
			<assert test="id[last()=2]">Элемент ClinicalDocument/author/assignedAuthor ДОЛЖЕН содержать два элемента id.</assert>
			<assert test="code[last()=1]">Элемент ClinicalDocument/author/assignedAuthor ДОЛЖЕН содержать один [1..1] элемент code.</assert>
			<assert test="addr[last()&lt;3]">Элемент ClinicalDocument/author/assignedAuthor МОЖЕТ иметь от нуля до двух [0..2] элементов addr.</assert>
			<assert test="addr/@use='H' or addr/@use='HP' or empty(addr)">Элемент ClinicalDocument/author/assignedAuthor/addr ДОЛЖНЫ иметь атрибут @use со значением “H” или “HP”.</assert>
			<assert test="telecom[last()>0] or empty(telecom)">Элемент ClinicalDocument/author/assignedAuthor МОЖЕТ иметь хотя бы один [0..*] элемент telecom.</assert>
			<assert test="assignedPerson[last()=1]">Элемент ClinicalDocument/author/assignedAuthor ДОЛЖЕН содержать один [1..1] элемент assignedPerson.</assert>
			<assert test="representedOrganization[last()=1] and representedOrganization/@classCode='ORG'">Элемент ClinicalDocument/author/assignedAuthor ДОЛЖЕН содержать один [1..1] элемент representedOrganization (атрибут classCode ДОЛЖЕН иметь значение «ORG»).</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/id[1]">
			<assert test="@extension[last()=1]">Элемент ClinicalDocument/author/assignedAuthor/id[1] ДОЛЖЕН содержать атрибут @extension.</assert>
	 		<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}(\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70)?$')">Элемент ClinicalDocument/author/assignedAuthor/id[1]. Атрибут @root уникального идентификатора ДОЛЖЕН быть заполнен синтаксически корректным OID.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/author/assignedAuthor/id[1] НЕ ДОЛЖЕН содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/id[2]">
			<assert test="@root='1.2.643.100.3' and @extension!=''">Элемент ClinicalDocument/author/assignedAuthor/id[2] ДОЛЖЕН содержать элемент root со значением "1.2.643.100.3" и элемент extension.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/author/assignedAuthor/id[2] НЕ ДОЛЖЕН содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1002' and @code!='' and @codeSystemName!='' and @displayName!=''">Элемент ClinicalDocument/author/assignedAuthor/code ДОЛЖЕН содержать атрибут @codeSystem, который ДОЛЖЕН быть представлен и иметь значение «1.2.643.5.1.13.13.11.1002», атрибуты @code, @codeSystemName, @displayName ДОЛЖНЫ быть представлены не пустыми значениями.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/author/assignedAuthor/code НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
			<assert test="id[last()=1] or id/@nullFlavor='OTH'">Элемент ClinicalDocument/author/assignedAuthor/representedOrganization ДОЛЖЕН содержать один [1..1] элемент id. МОЖЕТ содежать @nullFlavor.</assert>
			<assert test="name[last()=1] and empty(name/@nullFlavor)">Элемент ClinicalDocument/author/assignedAuthor/representedOrganization ДОЛЖЕН содержать один [1..1] элемент name.НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="telecom[last()>0] or empty(telecom)">Элемент ClinicalDocument/author/assignedAuthor/representedOrganization МОЖЕТ иметь любое количество [0..*] элементов telecom. </assert>
			<assert test="addr[last()=1] or empty(addr)">Элемент ClinicalDocument/author/assignedAuthor/representedOrganization МОЖЕТ иметь один [0..1] элемент addr.</assert>
		</rule>
		<rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
			<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') and @root!='' or @nullFlavor='OTH'">Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id ДОЛЖЕН иметь атрибуты @root. Атрибут @root ДОЛЖЕН быть заполнен синтаксически корректным OID и ДОЛЖЕН быть представлен непустым значением.</assert>
		</rule>
		<rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
			<assert test="id[last()=1] or id/@nullFlavor">Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ДОЛЖЕН содержать один [1..1] элемент id. Атрибту id МОЖЕТ содержать @nullFlavor</assert>
			<assert test="id/matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') or id/@nullFlavor">Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id. Атрибут @root ДОЛЖЕН быть заполнен синтаксически корректным OID.</assert>
			<assert test="telecom[last()=1] or empty(telecom)">Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization СЛЕДУЕТ содержать один [0..1] элемент telecom.</assert>
			<assert test="addr[last()=1] and empty(addr/@nullFlavor)">Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ДОЛЖЕН содержать один [1..1] элемент addr. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="name[last()=1] and empty(name/@nullFlavor)">Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ДОЛЖЕН иметь один [1..1] элемент name. Элемент name НЕ ДОЛЖЕН содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
			<assert test="id[last()=1] and empty(id/@nullFlavor)">Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization ДОЛЖЕН содержать один [1..1] элемент id. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="name[last()=1] and empty(name/@nullFlavor)">Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization ДОЛЖЕН содержать один [1..1] элемент name. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator">
			<assert test="time[last()=1] and empty(time/@nullFlavor)">Элемент ClinicalDocument/legalAuthenticator ДОЛЖЕН содержать один [1..1] элемент time, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="signatureCode[last()=1] and signatureCode/@code='S' and empty(signatureCode/@nullFlavor)">Элемент ClinicalDocument/legalAuthenticator ДОЛЖЕН содержать один [1..1] элемент signatureCode (ДОЛЖЕН иметь атрибут @code со значением “S”), который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="assignedEntity[last()=1]">Элемент ClinicalDocument/legalAuthenticator ДОЛЖЕН содержать один [1..1] элемент assignedEntity.</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
			<assert test="id[last()=2]">Элемент ClinicalDocument/legalAuthenticator/assignedEntity ДОЛЖЕН содежать 2 элемента id.</assert>
			<assert test="code[last()=1]">Элемент ClinicalDocument/legalAuthenticator/assignedEntity ДОЛЖЕН содежать один [1..1] элемент code.</assert>
			<assert test="addr[last()=1] or empty(addr)">Элемент ClinicalDocument/legalAuthenticator/assignedEntity СЛЕДУЕТ указать один [0..1] элемент addr.</assert>
			<assert test="addr/@use='H' or addr/@use='HP' or empty(addr)">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/addr ДОЛЖНЫ иметь атрибут @use со значением “H” или “HP”.</assert>
			<assert test="telecom[last()>0] or empty(telecom)">Элемент ClinicalDocument/legalAuthenticator/assignedEntity МОЖЕТ содержать хотя бы один [0..*] элемент telecom.</assert>
			<assert test="assignedPerson[last()=1] and empty(assignedPerson/@nullFlavor)">Элемент ClinicalDocument/legalAuthenticator/assignedEntity ДОЛЖЕН содержать один [1..1] элемент name, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="representedOrganization[last()=1] and representedOrganization/@classCode='ORG'">Элемент ClinicalDocument/legalAuthenticator/assignedEntity ДОЛЖЕН один [1..1] элемент representedOrganization (атрибут @classCode ДОЛЖЕН иметь значение “ORG”).</assert>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
			<assert test="matches(@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}\.100\.[0-9]{1,9}\.[0-9]{1,9}\.70$')">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1]. Атрибут @root уникального идентификатора ДОЛЖЕН быть заполнен синтаксически корректным OID.</assert>
			<assert test="@extension">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] ДОЛЖЕН иметь атрибуты @extension.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[1] НЕ ДОЛЖЕН иметь @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
			<assert test="@root='1.2.643.100.3' and @extension">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] ДОЛЖЕН иметь атрибуты @root и @extension. @root ДОЛЖЕН иметь значение «1.2.643.100.3».</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/id[2] НЕ ДОЛЖЕН иметь @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.11.1002'">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code ДОЛЖЕН содержать атрибут @codeSystem=“1.2.643.5.1.13.13.11.1002".</assert>
			<assert test="@code!='' and @codeSystemName!='' and @displayName!=''">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code ДОЛЖЕН содержать атрибуты @code, @codeSystemName, @displayName. Данные атрибуты ДОЛЖНЫ быть представлены не пустыми значениями.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/code НЕ ДОЛЖЕН иметь @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
			<assert test="id[last()=1] or id/@nullFlavor='OTH'">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization ДОЛЖЕН содержать один [1..1] элемент id, МОЖЕТ содержать @nullFlavor="OTH"</assert>
			<assert test="matches(id/@root, '^1.2.643.5.1.13.13.12.[1-4]{1}\.[0-9]{1,2}\.[0-9]{1,6}$') or id/@nullFlavor='OTH'">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id ДОЛЖЕН содержать атрибут @root и ДОЛЖЕН быть заполнен синтаксически корректным OID.</assert>
			<assert test="name[last()=1] and empty(name/@nullFlavor)">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization ДОЛЖЕН содержать один [1..1] элемент name, который НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="telecom[last()>0] and empty(telecom/@nullFlavor) or empty(telecom)">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization МОЖЕТ иметь хотя бы один [0..*] элементов telecom, НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
			<assert test="addr[last()=1] or empty(addr)">Элемент ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization МОЖЕТ иметь один [0..1] элемент addr.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody">
			<assert test="component[last()=2]">Элемент ClinicalDocument/component/structuredBody ДОЛЖЕН содержать два элемента component.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1] | ClinicalDocument/component/structuredBody/component[2]">
			<assert test="section[last()=1]">Элементы ClinicalDocument/component/structuredBody/component[1] и ClinicalDocument/component/structuredBody/component[2] ДОЛЖНЫ иметь один [1..1] section.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section">
			<assert test="code[last()=1] and code/@code='DOCINFO' and code/@codeSystem='1.2.643.5.1.13.13.99.2.197' and empty(code/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[1]/section ДОЛЖЕН иметь один [1..1] code (атрибут @code равным «DOCINFO», @codeSystem ДОЛЖЕН быть представлен и иметь значение «1.2.643.5.1.13.13.99.2.197»). Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="title[last()=1] and empty(title/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[1]/section ДОЛЖЕН содержать один [1..1] элемент title. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="text[last()=1] and empty(text/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[1]/section ДОЛЖЕН содержать один [1..1] элемент text, элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="entry[last()=1] or entry[last()=2]">Элемент ClinicalDocument/component/structuredBody/component[1]/section ДОЛЖЕН содержать один или два [1..2] элемента entry.</assert>
			<assert test="entry[1]/observation[last()=1] and entry[1]/observation/@classCode='OBS' and entry[1]/observation/@moodCode='EVN'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1] ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN".</assert>
			<assert test="entry[2]/observation[last()=1] and entry[2]/observation/@classCode='OBS' and entry[2]/observation/@moodCode='EVN' or empty(entry[2])">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2] ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN".</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[2]/section">
			<assert test="code[last()=1] and code/@code='MEDDISPENSE' and code/@codeSystem='1.2.643.5.1.13.13.99.2.197' and empty(code/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[2]/section ДОЛЖЕН иметь один [1..1] code (атрибут @code равным "MEDDISPENSE", @codeSystem ДОЛЖЕН быть представлен и иметь значение "1.2.643.5.1.13.13.99.2.197"). Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="title[last()=1] and empty(title/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[2]/section ДОЛЖЕН содержать один [1..1] элемент title. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="text[last()=1] and empty(text/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[2]/section ДОЛЖЕН содержать один [1..1] элемент text. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="entry[last()=1] or empty(entry)">Элемент ClinicalDocument/component/structuredBody/component[2]/section МОЖЕТ иметь один элемент [0..1] entry.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation">
			<assert test="code[last()=1]">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation ДОЛЖЕН иметь один [1..1] элемент code.</assert>
			<assert test="value[last()=1] and value/@*='BL' and empty(value/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation ДОЛЖЕН иметь один [1..1] элемент value, в который вносится статус рецепта медицинским работником. Атрибут value/@xsi:type ДОЛЖЕН иметь значение "BL". Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor</assert>
			<assert test="value/@value='true' or value/@value='false'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/value/@value МОЖЕТ принимать значения "true" (Рецепт действителен) и "false" (Рецепт недействителен).</assert>
			<assert test="entryRelationship[last()=2] or entryRelationship[last()=3]">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation ДОЛЖЕН иметь 2 или 3 элемента entryRelationship.</assert>
			<assert test="entryRelationship[1]/@typeCode='COMP' and entryRelationship[2]/@typeCode='COMP'">Элементы ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1] и ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2] ДОЛЖНЫ иметь атрибут @typeCode='COMP'.</assert>
			<assert test="entryRelationship[3]/@typeCode='COMP' or empty(entryRelationship[3])">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3] есди указан, ДОЛЖЕН иметь атрибут @typeCode="COMP".</assert>
			<assert test="entryRelationship[1]/observation[last()=1] and entryRelationship[1]/observation/@classCode='OBS' and entryRelationship[1]/observation/@moodCode='EVN'">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1] ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN").</assert>
			<assert test="entryRelationship[2]/observation[last()=1] and entryRelationship[2]/observation/@classCode='OBS' and entryRelationship[2]/observation/@moodCode='EVN'">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2] ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN").</assert>
			<assert test="entryRelationship[3]/observation[last()=1] and entryRelationship[3]/observation/@classCode='OBS' and entryRelationship[3]/observation/@moodCode='EVN' or empty(entryRelationship[3])">ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship ДОЛЖЕН иметь элемент observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS", атрибут @moodCode ДОЛЖЕН иметь значение "EVN").</assert>
			<assert test="reference[last()=1] and reference/@typeCode='REFR' or reference/@nullFlavor">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation ДОЛЖЕН иметь элемент reference [1..1] (атрибут @typeCode ДОЛЖЕН иметь значение "REFR"), элемент reference ДОЛЖЕН иметь @nullFlavor, если не может быть заполнен данными.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code  ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</assert>
			<assert test="@displayName!='' and @codeSystemVersion!='' and @codeSystemName!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/code НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation">
			<assert test="code[last()=1]">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation ДОЛЖЕН иметь один [1..1] элемент code.</assert>
			<assert test="code/@codeSystem='1.2.643.5.1.13.13.99.2.166'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</assert>
			<assert test="code/@code='6001'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code ДОЛЖЕН иметь атрибут @code, который ДОЛЖЕН иметь значение "6001".</assert>
			<assert test="code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</assert>
			<assert test="code/originalText/reference[last()=1] and code/originalText/reference/@value!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</assert>
			<report test="code/@nullFlavor">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</report>
			<assert test="value[last()=1] and value/@*='ST' and empty(value/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[1]/observation ДОЛЖЕН иметь один [1..1] элемент value. Атрибут value/@xsi:type ДОЛЖЕН иметь значение "ST". Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation">
			<assert test="code[last()=1]">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation ДОЛЖЕН иметь один [1..1] элемент code.</assert>
			<assert test="code/@codeSystem='1.2.643.5.1.13.13.99.2.166'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation/code ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</assert>
			<assert test="code/@code='6002'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation/code ДОЛЖЕН иметь атрибут @code, который ДОЛЖЕН иметь значение "6002".</assert>
			<assert test="code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</assert>
			<assert test="code/originalText/reference[last()=1] and code/originalText/reference/@value!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</assert>
			<report test="code/@nullFlavor">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry/observation/entryRelationship[2]/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</report>
			<assert test="value[last()=1] and value/@*='ST' and empty(value/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[2]/observation ДОЛЖЕН иметь один [1..1] элемент value. Атрибут value/@xsi:type ДОЛЖЕН иметь значение "ST". Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation">
			<assert test="code[last()=1]">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation ДОЛЖЕН иметь один [1..1] элемент code.</assert>
			<assert test="code/@codeSystem='1.2.643.5.1.13.13.99.2.166'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</assert>
			<assert test="code/@code='6014'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code ДОЛЖЕН иметь атрибут @code, который ДОЛЖЕН иметь значение "6014".</assert>
			<assert test="code/@displayName!='' and code/@codeSystemVersion!='' and code/@codeSystemName!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</assert>
			<assert test="code/originalText/reference[last()=1] and code/originalText/reference/@value!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</assert>
			<report test="code/@nullFlavor">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</report>
			<assert test="value[last()=1] and value/@*='CD' and empty(value/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation ДОЛЖЕН иметь один [1..1] элемент value. Атрибут value/@xsi:type ДОЛЖЕН иметь значение "CD". Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.654' and @code!='' and @displayName!='' and @codeSystemVersion!='' and @codeSystemName!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.654"; ДОЛЖЕН иметь атрибуты @code, @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/entryRelationship[3]/observation/value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference">
			<assert test="externalDocument[last()=1]">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference ДОЛЖЕН иметь один [1..1] элемент externalDocument.</assert>
			<assert test="externalDocument/id[last()=1] and externalDocument/id/@root and externalDocument/id/@extension">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference/externalDocument ДОЛЖЕН иметь элемент id (ДОЛЖЕН иметь атрибуты @root и @extension. Правила внесения информации в @root указано в Таблица 3).</assert>
			<assert test="externalDocument/setId[last()=1] and externalDocument/setId/@root and externalDocument/setId/@extension">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[1]/observation/reference/externalDocument ДОЛЖЕН иметь элемент setId (ДОЛЖЕН иметь атрибуты @root и @extension. Правила внесения информации в @root указано в Таблица 3).</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation">
			<assert test="code[last()=1]">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation ДОЛЖЕН иметь один элемент code.</assert>
			<assert test="value[last()=1] and empty(value/@nullFlavor)">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation ДОЛЖЕН иметь один [1..1] элемент value. Элемент value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</assert>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code ДОЛЖЕН иметь атрибут @codeSystem ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166".</assert>
			<assert test="@displayName='Отсроченное обслуживание' and @code='6013'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code ДОЛЖЕН иметь атрибут @code ДОЛЖЕН иметь значение "6013", атрибут @displayName ДОЛЖЕН иметь значение "Отсроченное обслуживание".</assert>
			<assert test="@displayName!='' and @codeSystemVersion!='' and @codeSystemName!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code ДОЛЖЕН иметь атрибуты @displayName, @codeSystemVersion, @codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</assert>
			<assert test="originalText[last()=1]/reference[last()=1] and originalText/reference/@value!='' or empty(originalText)">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</report>
		</rule>
		<rule context="ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value">
			<assert test="@*='CD'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation ДОЛЖЕН иметь атрибут value/@xsi:type, который ДОЛЖЕН иметь значение "CD".</assert>
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.637'">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.637".</assert>
			<assert test="@code!='' and @codeSystemName!='' and @codeSystemVersion!=''">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation ДОЛЖЕН иметь value/@code, value/@codeSystemVersion, value/@codeSystemName, которые ДОЛЖНЫ иметь ненулевое значение.</assert>
			<report test="@nullFlavor">Элемент ClinicalDocument/component/structuredBody/component[1]/section/entry[2]/observation/value НЕ ДОЛЖЕН иметь @nullFlavor.</report>
		</rule>
		<rule context="//ClinicalDocument/component/structuredBody/component[2]/section/entry">
			<assert test="supply[last()=1] and supply/@classCode='SPLY' and supply/@moodCode='EVN'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry ДОЛЖНЫ иметь элемент supply (атрибут @classCode ДОЛЖЕН иметь значение "SPLY" и атрибут @moodCode ДОЛЖЕН иметь значение "ENV").</assert>
		</rule>
		<rule context="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply">
			<assert test="quantity[last()=1] and quantity/@value!='' and empty(quantity/@nullFlavor)">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply ДОЛЖЕН иметь один [1..1] quantity (атрибут @value ДОЛЖЕН иметь непустое наполнение), в котором хранится информация о количестве отпущенного препарата в потрибительских упаковках. Элемент НЕ ДОЛЖЕН иметь @nullFlavor.</assert>
			<assert test="product[last()=1] and product/@typeCode='PRD'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply ДОЛЖЕН иметь один [1..1] product (атрибут @typeCode ДОЛЖЕН иметь значение "PRD").</assert>
			<assert test="entryRelationship[last()=1] and entryRelationship/@typeCode='COMP'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply ДОЛЖЕН иметь один [1..1] entryRelationship (атрибут @typeCode ДОЛЖЕН иметь значение "COMP").</assert>
		</rule>
		<rule context="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product">
			<assert test="manufacturedProduct[last()=1] and manufacturedProduct/@classCode='MANU'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product ДОЛЖЕН иметь элемент manufacturedProduct (атрибут @classCode ДОЛЖЕН иметь значение "MANU").</assert>
		</rule>
		<rule context="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct">
			<assert test="manufacturedMaterial[last()=1] and manufacturedMaterial/@classCode='MMAT' and manufacturedMaterial/@determinerCode='KIND'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct ДОЛЖЕН иметь элемент manufacturedMaterial (атрибуты @classCode ДОЛЖЕН иметь значение "MMAT" и атрибут determinerCode ДОЛЖЕН иметь значение "KIND").</assert>
			<assert test="manufacturedMaterial/code[last()=1]">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial ДОЛЖЕН иметь элемент code.</assert>
		</rule>
		<rule context="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.540' or @codeSystem='1.2.643.5.1.13.13.99.2.603' or @codeSystem='1.2.643.5.1.13.13.99.2.604'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.540" (При кодировании отпущенного лекарственного препарата) или ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.603"(При кодировании отпущенного специального питания), или ДОЛЖЕН иметь атрибут @codeSystem, который ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.604" (При кодировании отпущенного медицинского изделия).</assert>
			<assert test="@displayName!='' and @code!='' and @codeSystemVersion!='' and @codeSystemName!=''">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code ДОЛЖЕН иметь атрибуты @code, @codeSystemVersion, @codeSystemName, @displayName которые ДОЛЖНЫ иметь ненулевое значение.</assert>
			<report test="@nullFlavor">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/product/manufacturedProduct/manufacturedMaterial/code НЕ ДОЛЖЕН иметь @nullFlavor.</report>
		</rule>
		<rule context="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship">
			<assert test="observation[last()=1] and observation/@classCode='OBS' and observation/@moodCode='EVN'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship ДОЛЖЕН иметь один элемент [1..1] observation (атрибут @classCode ДОЛЖЕН иметь значение "OBS" и атрибут @moodCode ДОЛЖЕН иметь значение "EVN").</assert>
			<assert test="observation/code[last()=1]">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation ДОЛЖЕН иметь один [1..1] элемент code.</assert>
			<assert test="observation/value[last()=1]">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation ДОЛЖЕН иметь один [1..1] элемент value.</assert>
		</rule>
		<rule context="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code">
			<assert test="@codeSystem='1.2.643.5.1.13.13.99.2.166' and @code='6015' and @displayName='Стоимость'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code ДОЛЖЕН иметь атрибут @codeSystem ДОЛЖЕН иметь значение "1.2.643.5.1.13.13.99.2.166"; ДОЛЖЕН иметь атрибут @code ДОЛЖЕН иметь значение "6015", атрибут @displayName ДОЛЖЕН иметь значение "Стоимость".</assert>
			<assert test="originalText[last()=1]/reference[last()=1] and originalText/reference/@value!=''">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code МОЖЕТ содержать один [0..1] элемент originalText/reference с атрибутом @value, значение которого является ссылкой на оригинальный текст закодированного понятия.</assert>
			<report test="@nullFlavor">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/code НЕ ДОЛЖЕН иметь @nullFlavor.</report>
		</rule>
		<rule context="//ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value">
			<assert test="@*='REAL'">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value ДОЛЖЕН иметь атрибут value/@xsi:type, который ДОЛЖЕН иметь значение "REAL".</assert>
			<report test="@nullFlavor">Элементы ClinicalDocument/component/structuredBody/component[2]/section/entry/supply/entryRelationship/observation/value НЕ ДОЛЖЕН [0..0] содержать @nullFlavor.</report>
		</rule>
	</pattern>
</schema>
			
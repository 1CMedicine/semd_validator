<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="address" uri="urn:hl7-ru:address"/>
    <ns prefix="medService" uri="urn:hl7-ru:medService"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>
    <pattern>
        <rule context="ClinicalDocument">
            <report test="@nullFlavor">Элемент ClinicalDocument не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(realmCode) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент realmCode (ClinicalDocument) </assert>
            <assert test="count(typeId) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один [1..1]
                элемент typeId (ClinicalDocument) </assert>
            <assert test="count(templateId) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент templateId (ClinicalDocument) </assert>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.51']) = 1">Элемент
                ClinicalDocument ОБЯЗАН содержать один [1..1] элемент id (ClinicalDocument) </assert>
            <assert test="count(code) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один [1..1]
                элемент code (ClinicalDocument) </assert>
            <assert test="count(title) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один [1..1]
                элемент title (ClinicalDocument) </assert>
            <assert test="count(effectiveTime) = 1">Элемент ClinicalDocument ДОЛЖЕН содержать один
                [1..1] элемент effectiveTime (ClinicalDocument) </assert>
            <assert test="count(confidentialityCode) = 1">Элемент ClinicalDocument ОБЯЗАН содержать
                один [1..1] элемент confidentialityCode (ClinicalDocument) </assert>
            <assert test="count(languageCode) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент languageCode (ClinicalDocument) </assert>
            <assert test="count(setId) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один [1..1]
                элемент setId (ClinicalDocument) </assert>
            <assert test="count(versionNumber) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент versionNumber (ClinicalDocument) </assert>
            <assert test="count(recordTarget) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент recordTarget (ClinicalDocument) </assert>
            <assert test="count(author) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один [1..1]
                элемент author (ClinicalDocument) </assert>
            <assert test="count(custodian) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент custodian (ClinicalDocument) </assert>
            <assert
                test="count(informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']) = 1"
                >Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент informationRecipient
                (ClinicalDocument) </assert>
            <assert
                test="count(informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]) >= 0"
                >Элемент ClinicalDocument МОЖЕТ содержать произвольное количество [0..*] элементов
                informationRecipient (ClinicalDocument) </assert>
            <assert test="count(legalAuthenticator) = 1">Элемент ClinicalDocument ОБЯЗАН содержать
                один [1..1] элемент legalAuthenticator (ClinicalDocument) </assert>
            <assert test="count(participant[@typeCode = 'IND']) = [0, 1]">Элемент ClinicalDocument
                МОЖЕТ содержать не более одного [0..1] элемента participant (ClinicalDocument) </assert>
            <assert test="count(inFulfillmentOf) = [0, 1]">Элемент ClinicalDocument МОЖЕТ содержать
                не более одного [0..1] элемента inFulfillmentOf (ClinicalDocument) </assert>
            <assert test="count(documentationOf) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент documentationOf (ClinicalDocument) </assert>
            <assert test="count(component) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент component (ClinicalDocument) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/realmCode">
            <report test="@nullFlavor">Элемент ClinicalDocument/realmCode не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@code = 'RU'">Элемент realmCode обязан содержать один атрибут @code со
                значением "RU"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/typeId">
            <report test="@nullFlavor">Элемент ClinicalDocument/typeId не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@root = '2.16.840.1.113883.1.3'">Элемент typeId обязан содержать один
                атрибут @root со значением "2.16.840.1.113883.1.3"</assert>
            <assert test="@extension = 'POCD_MT000040'">Элемент typeId обязан содержать один атрибут
                @extension со значением "POCD_MT000040"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/templateId">
            <report test="@nullFlavor">Элемент ClinicalDocument/templateId не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@root = '1.2.643.5.1.13.13.15.47.2'">Элемент templateId обязан содержать
                один атрибут @root со значением "1.2.643.5.1.13.13.15.47.2"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/id[substring(@root, string-length(@root) - 2) = '.51']">
            <report test="@nullFlavor">Элемент ClinicalDocument/id[substring(@root,
                string-length(@root) - 2)='.51'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.51$')">Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/code">
            <report test="@nullFlavor">Элемент ClinicalDocument/code не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@code = '47'">Элемент code обязан содержать один атрибут @code со
                значением "47"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.1079'">Элемент code обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.1079"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/title">
            <report test="@nullFlavor">Элемент ClinicalDocument/title не должен иметь атрибут
                @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/effectiveTime[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент effectiveTime должен содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/effectiveTime[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/confidentialityCode">
            <report test="@nullFlavor">Элемент ClinicalDocument/confidentialityCode не должен иметь
                атрибут @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9', '1.2.643.5.1.13.13.11.1116']"
                >Элемент confidentialityCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.285"</assert>
            <assert test="@codeSystemName != ''">Элемент confidentialityCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент confidentialityCode обязан содержать один атрибут
                @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент confidentialityCode обязан содержать
                один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент confidentialityCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/languageCode">
            <report test="@nullFlavor">Элемент ClinicalDocument/languageCode не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@code = 'ru-RU'">Элемент languageCode обязан содержать один атрибут @code
                со значением "ru-RU"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/setId">
            <report test="@nullFlavor">Элемент ClinicalDocument/setId не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@root != ''">Элемент setId обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.50$')">Элемент setId обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50</assert>
            <assert test="@extension != ''">Элемент setId обязан содержать один атрибут @extension с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/versionNumber">
            <report test="@nullFlavor">Элемент ClinicalDocument/versionNumber не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент versionNumber обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget">
            <report test="@nullFlavor">Элемент ClinicalDocument/recordTarget не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(patientRole) = 1">Элемент recordTarget ОБЯЗАН содержать один [1..1]
                элемент patientRole (ClinicalDocument/recordTarget) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <report test="@nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.10']) = 1">Элемент
                patientRole ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(id[2]) = 1">Элемент patientRole ДОЛЖЕН содержать один [1..1] элемент
                id (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(identity:IdentityDoc) = 1">Элемент patientRole ДОЛЖЕН содержать один
                [1..1] элемент identity:IdentityDoc (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(identity:InsurancePolicy) = 1">Элемент patientRole ДОЛЖЕН содержать
                один [1..1] элемент identity:InsurancePolicy
                (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(addr) = [1, 2]">Элемент patientRole ДОЛЖЕН содержать от одного до
                двух [1..2] элементов addr (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(telecom) >= 0">Элемент patientRole МОЖЕТ содержать произвольное
                количество [0..*] элементов telecom (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(patient) = 1">Элемент patientRole ОБЯЗАН содержать один [1..1]
                элемент patient (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(providerOrganization) = 1">Элемент patientRole ОБЯЗАН содержать один
                [1..1] элемент providerOrganization (ClinicalDocument/recordTarget/patientRole)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) - 2) = '.10']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) -
                2)='.10'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.10$')">Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.100.3'">Элемент id должен содержать один атрибут @root со
                значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc[not(@nullFlavor)]">
            <assert test="count(identity:IdentityCardType) = 1">Элемент identity:IdentityDoc ОБЯЗАН
                содержать один [1..1] элемент identity:IdentityCardType
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:Series) = 1">Элемент identity:IdentityDoc ДОЛЖЕН содержать
                один [1..1] элемент identity:Series
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:Number) = 1">Элемент identity:IdentityDoc ОБЯЗАН содержать
                один [1..1] элемент identity:Number
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueOrgName) = 1">Элемент identity:IdentityDoc ДОЛЖЕН
                содержать один [1..1] элемент identity:IssueOrgName
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueOrgCode) = 1">Элемент identity:IdentityDoc ДОЛЖЕН
                содержать один [1..1] элемент identity:IssueOrgCode
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueDate) = 1">Элемент identity:IdentityDoc ОБЯЗАН
                содержать один [1..1] элемент identity:IssueDate
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType
                не должен иметь атрибут @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011', '1.2.643.5.1.13.2.1.1.736']"
                >Элемент identity:IdentityCardType обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.48"</assert>
            <assert test="@codeSystemName != ''">Элемент identity:IdentityCardType обязан содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент identity:IdentityCardType обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент identity:IdentityCardType обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент identity:IdentityCardType обязан содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:Series должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Number должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:IssueOrgName должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:IssueOrgCode должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент identity:IssueDate обязан содержать один атрибут
                @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy[not(@nullFlavor)]">
            <assert test="count(identity:InsurancePolicyType) = 1">Элемент identity:InsurancePolicy
                ОБЯЗАН содержать один [1..1] элемент identity:InsurancePolicyType
                (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </assert>
            <assert test="count(identity:Series) = [0, 1]">Элемент identity:InsurancePolicy МОЖЕТ
                содержать не более одного [0..1] элемента identity:Series
                (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </assert>
            <assert test="count(identity:Number) = 1">Элемент identity:InsurancePolicy ОБЯЗАН
                содержать один [1..1] элемент identity:Number
                (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1035'">Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1035"</assert>
            <assert test="@codeSystemName != ''">Элемент identity:InsurancePolicyType обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент identity:InsurancePolicyType обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент identity:InsurancePolicyType обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент identity:InsurancePolicyType обязан содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Series должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Number должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(address:Type) = 1">Элемент addr ОБЯЗАН содержать один [1..1] элемент
                address:Type (ClinicalDocument/recordTarget/patientRole/addr) </assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine (ClinicalDocument/recordTarget/patientRole/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode (ClinicalDocument/recordTarget/patientRole/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode (ClinicalDocument/recordTarget/patientRole/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address (ClinicalDocument/recordTarget/patientRole/addr) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/address:Type">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/addr/address:Type не должен иметь атрибут
                @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415', '1.2.643.5.1.13.13.99.2.241']"
                >Элемент address:Type обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1504"</assert>
            <assert test="@codeSystemName != ''">Элемент address:Type обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:Type обязан содержать один атрибут @code с не
                пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:Type обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:Type обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/addr/address:stateCode не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID (ClinicalDocument/recordTarget/patientRole/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/recordTarget/patientRole/addr/fias:Address) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID не должен
                иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/telecom">
            <report test="@nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/telecom не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <report test="@nullFlavor">Элемент ClinicalDocument/recordTarget/patientRole/patient не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент patient ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/recordTarget/patientRole/patient) </assert>
            <assert test="count(administrativeGenderCode) = 1">Элемент patient ОБЯЗАН содержать один
                [1..1] элемент administrativeGenderCode
                (ClinicalDocument/recordTarget/patientRole/patient) </assert>
            <assert test="count(birthTime) = 1">Элемент patient ОБЯЗАН содержать один [1..1] элемент
                birthTime (ClinicalDocument/recordTarget/patientRole/patient) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family (ClinicalDocument/recordTarget/patientRole/patient/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/recordTarget/patientRole/patient/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/recordTarget/patientRole/patient/name) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/family не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/given не должен иметь атрибут
                @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic не должен
                иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1040', '1.2.643.5.1.13.2.1.1.156']"
                >Элемент administrativeGenderCode обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1040"</assert>
            <assert test="@codeSystemName != ''">Элемент administrativeGenderCode обязан содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент administrativeGenderCode обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент administrativeGenderCode обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент administrativeGenderCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/birthTime не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@value != ''">Элемент birthTime обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization не должен иметь
                атрибут @nullFlavor</report>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >Элемент providerOrganization ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(id[@root = '1.2.643.5.1.13.2.1.1.1504.101']) = [0, 1]">Элемент
                providerOrganization МОЖЕТ содержать не более одного [0..1] элемента id
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(identity:Props) = 1">Элемент providerOrganization ДОЛЖЕН содержать
                один [1..1] элемент identity:Props
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(name) = 1">Элемент providerOrganization ОБЯЗАН содержать один [1..1]
                элемент name (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(telecom) >= 0">Элемент providerOrganization МОЖЕТ содержать
                произвольное количество [0..*] элементов telecom
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(addr) = [0, 1]">Элемент providerOrganization МОЖЕТ содержать не
                более одного [0..1] элемента addr
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением</assert>
            <assert test="count(@extension != '') = [0, 1]">Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root = '1.2.643.5.1.13.2.1.1.1504.101']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root='1.2.643.5.1.13.2.1.1.1504.101']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.5.1.13.2.1.1.1504.101'">Элемент id обязан содержать один
                атрибут @root со значением "1.2.643.5.1.13.2.1.1.1504.101"</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
            <assert test="@assigningAuthorityName != ''">Элемент id обязан содержать один атрибут
                @assigningAuthorityName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props[not(@nullFlavor)]">
            <assert test="count(identity:Ogrn) = [0, 1]">Элемент identity:Props МОЖЕТ содержать не
                более одного [0..1] элемента identity:Ogrn
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </assert>
            <assert test="count(identity:Ogrnip) = [0, 1]">Элемент identity:Props МОЖЕТ содержать не
                более одного [0..1] элемента identity:Ogrnip
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </assert>
            <assert test="count(identity:Okpo) = [0, 1]">Элемент identity:Props МОЖЕТ содержать не
                более одного [0..1] элемента identity:Okpo
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </assert>
            <assert test="count(identity:Okato) = [0, 1]">Элемент identity:Props МОЖЕТ содержать не
                более одного [0..1] элемента identity:Okato
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Ogrn должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Ogrnip должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Okpo должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Okato должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/name не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author">
            <report test="@nullFlavor">Элемент ClinicalDocument/author не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(time) = 1">Элемент author ДОЛЖЕН содержать один [1..1] элемент time
                (ClinicalDocument/author) </assert>
            <assert test="count(assignedAuthor) = 1">Элемент author ОБЯЗАН содержать один [1..1]
                элемент assignedAuthor (ClinicalDocument/author) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/time">
            <assert test="@nullFlavor = 'NI'">Элемент time обязан содержать один атрибут @nullFlavor
                со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <report test="@nullFlavor">Элемент ClinicalDocument/author/assignedAuthor не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1">Элемент
                assignedAuthor ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = 1">Элемент assignedAuthor ОБЯЗАН
                содержать один [1..1] элемент id (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(code) = 1">Элемент assignedAuthor ОБЯЗАН содержать один [1..1]
                элемент code (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(addr) = [0, 1]">Элемент assignedAuthor МОЖЕТ содержать не более
                одного [0..1] элемента addr (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(telecom) >= 0">Элемент assignedAuthor МОЖЕТ содержать произвольное
                количество [0..*] элементов telecom (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(assignedPerson) = 1">Элемент assignedAuthor ОБЯЗАН содержать один
                [1..1] элемент assignedPerson (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(representedOrganization) = [0, 1]">Элемент assignedAuthor МОЖЕТ
                содержать не более одного [0..1] элемента representedOrganization
                (ClinicalDocument/author/assignedAuthor) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) - 2) = '.70']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) -
                2)='.70'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/id[@root='1.2.643.100.3'] не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">Элемент id обязан содержать один атрибут @root со
                значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <report test="@nullFlavor">Элемент ClinicalDocument/author/assignedAuthor/code не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr">
            <report test="@nullFlavor">Элемент ClinicalDocument/author/assignedAuthor/addr не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine (ClinicalDocument/author/assignedAuthor/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode (ClinicalDocument/author/assignedAuthor/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode (ClinicalDocument/author/assignedAuthor/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address (ClinicalDocument/author/assignedAuthor/addr) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/addr/streetAddressLine не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/addr/address:stateCode не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID (ClinicalDocument/author/assignedAuthor/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/author/assignedAuthor/addr/fias:Address) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/telecom">
            <report test="@nullFlavor">Элемент ClinicalDocument/author/assignedAuthor/telecom не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <report test="@nullFlavor">Элемент ClinicalDocument/author/assignedAuthor/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент assignedPerson ОБЯЗАН содержать один [1..1]
                элемент name (ClinicalDocument/author/assignedAuthor/assignedPerson) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/family не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/given не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">Элемент representedOrganization обязан содержать один
                атрибут @classCode со значением "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >Элемент representedOrganization ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/author/assignedAuthor/representedOrganization) </assert>
            <assert test="count(name) = 1">Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент name (ClinicalDocument/author/assignedAuthor/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">Элемент representedOrganization МОЖЕТ содержать
                произвольное количество [0..*] элементов telecom
                (ClinicalDocument/author/assignedAuthor/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">Элемент representedOrganization МОЖЕТ содержать не
                более одного [0..1] элемента addr
                (ClinicalDocument/author/assignedAuthor/representedOrganization) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением</assert>
            <assert test="count(@extension != '') = [0, 1]">Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/name не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/telecom не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address (ClinicalDocument/author/assignedAuthor/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian">
            <report test="@nullFlavor">Элемент ClinicalDocument/custodian не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(assignedCustodian) = 1">Элемент custodian ОБЯЗАН содержать один
                [1..1] элемент assignedCustodian (ClinicalDocument/custodian) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <report test="@nullFlavor">Элемент ClinicalDocument/custodian/assignedCustodian не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(representedCustodianOrganization) = 1">Элемент assignedCustodian
                ОБЯЗАН содержать один [1..1] элемент representedCustodianOrganization
                (ClinicalDocument/custodian/assignedCustodian) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">Элемент representedCustodianOrganization обязан
                содержать один атрибут @classCode со значением "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >Элемент representedCustodianOrganization ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </assert>
            <assert test="count(name) = 1">Элемент representedCustodianOrganization ОБЯЗАН содержать
                один [1..1] элемент name
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </assert>
            <assert test="count(telecom) = [0, 1]">Элемент representedCustodianOrganization МОЖЕТ
                содержать не более одного [0..1] элемента telecom
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </assert>
            <assert test="count(addr) = 1">Элемент representedCustodianOrganization ОБЯЗАН содержать
                один [1..1] элемент addr
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением</assert>
            <assert test="count(@extension != '') = [0, 1]">Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(intendedRecipient) = 1">Элемент informationRecipient ОБЯЗАН
                содержать один [1..1] элемент intendedRecipient
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(receivedOrganization) = 1">Элемент intendedRecipient ОБЯЗАН
                содержать один [1..1] элемент receivedOrganization
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[@root = '1.2.643.5.1.13']) = 1">Элемент receivedOrganization
                ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization) </assert>
            <assert test="count(name) = 1">Элемент receivedOrganization ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root = '1.2.643.5.1.13']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.5.1.13'">Элемент id обязан содержать один атрибут @root
                со значением "1.2.643.5.1.13"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(intendedRecipient) = 1">Элемент informationRecipient ОБЯЗАН
                содержать один [1..1] элемент intendedRecipient
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(receivedOrganization) = 1">Элемент intendedRecipient ОБЯЗАН
                содержать один [1..1] элемент receivedOrganization
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент receivedOrganization ДОЛЖЕН содержать один
                [1..1] элемент id
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization) </assert>
            <assert test="count(name) = 1">Элемент receivedOrganization ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">Элемент id должен содержать один атрибут @root с не пустым
                значением</assert>
            <assert test="count(@extension != '') = [0, 1]">Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator">
            <report test="@nullFlavor">Элемент ClinicalDocument/legalAuthenticator не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(time) = 1">Элемент legalAuthenticator ДОЛЖЕН содержать один [1..1]
                элемент time (ClinicalDocument/legalAuthenticator) </assert>
            <assert test="count(signatureCode) = 1">Элемент legalAuthenticator ДОЛЖЕН содержать один
                [1..1] элемент signatureCode (ClinicalDocument/legalAuthenticator) </assert>
            <assert test="count(assignedEntity) = 1">Элемент legalAuthenticator ОБЯЗАН содержать
                один [1..1] элемент assignedEntity (ClinicalDocument/legalAuthenticator) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@nullFlavor = 'NI'">Элемент time обязан содержать один атрибут @nullFlavor
                со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@nullFlavor = 'NI'">Элемент signatureCode обязан содержать один атрибут
                @nullFlavor со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <report test="@nullFlavor">Элемент ClinicalDocument/legalAuthenticator/assignedEntity не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1">Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = 1">Элемент assignedEntity ОБЯЗАН
                содержать один [1..1] элемент id
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(code) = 1">Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент code (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(addr) = [0, 1]">Элемент assignedEntity МОЖЕТ содержать не более
                одного [0..1] элемента addr (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(telecom) >= 0">Элемент assignedEntity МОЖЕТ содержать произвольное
                количество [0..*] элементов telecom
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент assignedPerson (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(representedOrganization) = [0, 1]">Элемент assignedEntity МОЖЕТ
                содержать не более одного [0..1] элемента representedOrganization
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root,
                string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/id[@root='1.2.643.100.3'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">Элемент id обязан содержать один атрибут @root со
                значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine не должен
                иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/telecom не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент assignedPerson ОБЯЗАН содержать один [1..1]
                элемент name (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">Элемент representedOrganization обязан содержать один
                атрибут @classCode со значением "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >Элемент representedOrganization ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент name
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">Элемент representedOrganization МОЖЕТ содержать
                произвольное количество [0..*] элементов telecom
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">Элемент representedOrganization МОЖЕТ содержать не
                более одного [0..1] элемента addr
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением</assert>
            <assert test="count(@extension != '') = [0, 1]">Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode = 'IND']">
            <report test="@nullFlavor">Элемент ClinicalDocument/participant[@typeCode='IND'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'IND'">Элемент participant обязан содержать один атрибут
                @typeCode со значением "IND"</assert>
            <assert test="count(associatedEntity) = 1">Элемент participant ОБЯЗАН содержать один
                [1..1] элемент associatedEntity (ClinicalDocument/participant[@typeCode='IND'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@classCode = 'GUAR'">Элемент associatedEntity обязан содержать один
                атрибут @classCode со значением "GUAR"</assert>
            <assert test="count(code) = 1">Элемент associatedEntity ОБЯЗАН содержать один [1..1]
                элемент code (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </assert>
            <assert test="count(identity:DocInfo) = 1">Элемент associatedEntity ДОЛЖЕН содержать
                один [1..1] элемент identity:DocInfo
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </assert>
            <assert test="count(scopingOrganization) = [0, 1]">Элемент associatedEntity МОЖЕТ
                содержать не более одного [0..1] элемента scopingOrganization
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/code не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1039'">Элемент code обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1039"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo[not(@nullFlavor)]">
            <assert test="count(identity:IdentityDocType) = 1">Элемент identity:DocInfo ОБЯЗАН
                содержать один [1..1] элемент identity:IdentityDocType
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:InsurancePolicyType) = 1">Элемент identity:DocInfo ДОЛЖЕН
                содержать один [1..1] элемент identity:InsurancePolicyType
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:Series) = 1">Элемент identity:DocInfo ДОЛЖЕН содержать один
                [1..1] элемент identity:Series
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:Number) = 1">Элемент identity:DocInfo ДОЛЖЕН содержать один
                [1..1] элемент identity:Number
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:INN) = 1">Элемент identity:DocInfo ДОЛЖЕН содержать один
                [1..1] элемент identity:INN
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:effectiveTime) = 1">Элемент identity:DocInfo ДОЛЖЕН
                содержать один [1..1] элемент identity:effectiveTime
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.724'">Элемент
                identity:IdentityDocType обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.724"</assert>
            <assert test="@codeSystemName != ''">Элемент identity:IdentityDocType обязан содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент identity:IdentityDocType обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент identity:IdentityDocType обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент identity:IdentityDocType обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]">
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1035'">Элемент
                identity:InsurancePolicyType должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1035"</assert>
            <assert test="@codeSystemName != ''">Элемент identity:InsurancePolicyType должен
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент identity:InsurancePolicyType должен содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент identity:InsurancePolicyType должен
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент identity:InsurancePolicyType должен содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Series[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:Series должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Number[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:Number должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:INN[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:INN должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]">
            <assert test="count(identity:low) = 1">Элемент identity:effectiveTime ОБЯЗАН содержать
                один [1..1] элемент identity:low
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime) </assert>
            <assert test="count(identity:high) = 1">Элемент identity:effectiveTime ДОЛЖЕН содержать
                один [1..1] элемент identity:high
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент identity:low обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент identity:high должен содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент scopingOrganization ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </assert>
            <assert test="count(name) = 1">Элемент scopingOrganization ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </assert>
            <assert test="count(telecom) >= 1">Элемент scopingOrganization ДОЛЖЕН содержать не менее
                одного [1..*] элемента telecom
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </assert>
            <assert test="count(addr) = 1">Элемент scopingOrganization ДОЛЖЕН содержать один [1..1]
                элемент addr
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.99.2.183'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.99.2.183"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom должен содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/inFulfillmentOf">
            <report test="@nullFlavor">Элемент ClinicalDocument/inFulfillmentOf не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(order) = 1">Элемент inFulfillmentOf ОБЯЗАН содержать один [1..1]
                элемент order (ClinicalDocument/inFulfillmentOf) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/inFulfillmentOf/order">
            <report test="@nullFlavor">Элемент ClinicalDocument/inFulfillmentOf/order не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент order ДОЛЖЕН содержать один [1..1] элемент id
                (ClinicalDocument/inFulfillmentOf/order) </assert>
            <assert test="count(id[2]) = 1">Элемент order ДОЛЖЕН содержать один [1..1] элемент id
                (ClinicalDocument/inFulfillmentOf/order) </assert>
            <assert test="count(code) = 1">Элемент order ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/inFulfillmentOf/order) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/inFulfillmentOf/order/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">Элемент id должен содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.51$')">Элемент id должен
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/inFulfillmentOf/order/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/inFulfillmentOf/order/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/inFulfillmentOf/order/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/inFulfillmentOf/order/code">
            <report test="@nullFlavor">Элемент ClinicalDocument/inFulfillmentOf/order/code не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']"
                >Элемент code обязан содержать один атрибут @codeSystem с не пустым значением;
                допустимые значения: "1.2.643.5.1.13.13.99.2.1079",
                "1.2.643.5.1.13.13.11.1522"</assert>
            <assert test="@codeSystem != ''">Элемент code обязан содержать один атрибут @codeSystem
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf">
            <report test="@nullFlavor">Элемент ClinicalDocument/documentationOf не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(serviceEvent) = 1">Элемент documentationOf ОБЯЗАН содержать один
                [1..1] элемент serviceEvent (ClinicalDocument/documentationOf) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent">
            <report test="@nullFlavor">Элемент ClinicalDocument/documentationOf/serviceEvent не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент serviceEvent ОБЯЗАН содержать один [1..1] элемент
                code (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(effectiveTime) = 1">Элемент serviceEvent ОБЯЗАН содержать один
                [1..1] элемент effectiveTime (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(medService:serviceForm) = [0, 1]">Элемент serviceEvent МОЖЕТ
                содержать не более одного [0..1] элемента medService:serviceForm
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(medService:serviceType) = [0, 1]">Элемент serviceEvent МОЖЕТ
                содержать не более одного [0..1] элемента medService:serviceType
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(medService:serviceCond) = [0, 1]">Элемент serviceEvent МОЖЕТ
                содержать не более одного [0..1] элемента medService:serviceCond
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(performer) >= 1">Элемент serviceEvent ОБЯЗАН содержать не менее
                одного [1..*] элемента performer (ClinicalDocument/documentationOf/serviceEvent)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <report test="@nullFlavor">Элемент ClinicalDocument/documentationOf/serviceEvent/code не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '5'">Элемент code обязан содержать один атрибут @code со значением
                "5"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.726'">Элемент code обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.726"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/effectiveTime не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(low) = 1">Элемент effectiveTime ОБЯЗАН содержать один [1..1] элемент
                low (ClinicalDocument/documentationOf/serviceEvent/effectiveTime) </assert>
            <assert test="count(high) = [0, 1]">Элемент effectiveTime МОЖЕТ содержать не более
                одного [0..1] элемента high
                (ClinicalDocument/documentationOf/serviceEvent/effectiveTime) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент low обязан содержать один атрибут @value с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент high обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm не должен иметь
                атрибут @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1551', '1.2.643.5.1.13.2.1.1.568', '1.2.643.5.1.13.13.99.2.377']"
                >Элемент medService:serviceForm обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1551"</assert>
            <assert test="@codeSystemName != ''">Элемент medService:serviceForm обязан содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент medService:serviceForm обязан содержать один атрибут
                @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент medService:serviceForm обязан содержать
                один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент medService:serviceForm обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceType">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/medService:serviceType не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1034'">Элемент medService:serviceType
                обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1034"</assert>
            <assert test="@codeSystemName != ''">Элемент medService:serviceType обязан содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент medService:serviceType обязан содержать один атрибут
                @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент medService:serviceType обязан содержать
                один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент medService:serviceType обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.322', '1.2.643.5.1.13.2.1.1.103']"
                >Элемент medService:serviceCond обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.322"</assert>
            <assert test="@codeSystemName != ''">Элемент medService:serviceCond обязан содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент medService:serviceCond обязан содержать один атрибут
                @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент medService:serviceCond обязан содержать
                один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент medService:serviceCond обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@typeCode != ''">Элемент performer обязан содержать один атрибут @typeCode
                с не пустым значением</assert>
            <assert test="count(functionCode) = 1">Элемент performer ОБЯЗАН содержать один [1..1]
                элемент functionCode (ClinicalDocument/documentationOf/serviceEvent/performer) </assert>
            <assert test="count(assignedEntity) = 1">Элемент performer ОБЯЗАН содержать один [1..1]
                элемент assignedEntity (ClinicalDocument/documentationOf/serviceEvent/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/functionCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/functionCode не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.368', '1.2.643.5.1.13.2.1.1.734']"
                >Элемент functionCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.368"</assert>
            <assert test="@codeSystemName != ''">Элемент functionCode обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент functionCode обязан содержать один атрибут @code с не
                пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент functionCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент functionCode обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент assignedEntity ДОЛЖЕН содержать один [1..1]
                элемент id (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент code
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(telecom) = [0, 1]">Элемент assignedEntity МОЖЕТ содержать не более
                одного [0..1] элемента telecom
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент assignedPerson
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">Элемент id должен содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">Элемент id должен
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/telecom не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент assignedPerson ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component">
            <report test="@nullFlavor">Элемент ClinicalDocument/component не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(structuredBody) = 1">Элемент component ОБЯЗАН содержать один [1..1]
                элемент structuredBody (ClinicalDocument/component) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <report test="@nullFlavor">Элемент ClinicalDocument/component/structuredBody не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(component[section/code/@code = 'DOCINFO']) = 1">Элемент
                structuredBody ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'RESLAB']) = [0, 1]">Элемент
                structuredBody МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'RESPSYCHOPHYSIOLEXAM']) = [0, 1]"
                >Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'LINKDOCS']) = [0, 1]">Элемент
                structuredBody МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '4073']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8085']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8006']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '4074']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8086']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '813']) >= 0">Элемент section МОЖЕТ
                содержать произвольное количество [0..*] элементов entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '837']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8007']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '9021']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '6020']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8087']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '10000']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'DOCINFO'">Элемент code обязан содержать один атрибут @code со
                значением "DOCINFO"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation) </assert>
            <assert test="count(performer) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '4073'">Элемент code обязан содержать один атрибут @code со
                значением "4073"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation/performer">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">Элемент performer ОБЯЗАН содержать один [1..1]
                элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation/performer/assignedEntity">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id) = 1">Элемент assignedEntity ДОЛЖЕН содержать один [1..1] элемент
                id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer/assignedEntity) </assert>
            <assert test="count(representedOrganization) = 1">Элемент assignedEntity ОБЯЗАН
                содержать один [1..1] элемент representedOrganization
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation/performer/assignedEntity/id">
            <assert test="@nullFlavor = 'NI'">Элемент id обязан содержать один атрибут @nullFlavor
                со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer/assignedEntity/representedOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">Элемент representedOrganization обязан содержать один
                атрибут @classCode со значением "ORG"</assert>
            <assert test="count(id[1]) = 1">Элемент representedOrganization ДОЛЖЕН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation/performer/assignedEntity/representedOrganization/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">Элемент id должен содержать один атрибут @root с не пустым
                значением</assert>
            <assert test="count(@extension != '') = [0, 1]">Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation/performer/assignedEntity/representedOrganization/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4073']/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4073']/observation/performer/assignedEntity/representedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8085']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8085']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8085'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8085']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8085']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8085']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8085']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8085']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8085']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8085'">Элемент code обязан содержать один атрибут @code со
                значением "8085"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8085']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8085']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8006']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8006']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8006'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8006']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8006']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8006']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8006']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8006']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8006']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8006'">Элемент code обязан содержать один атрибут @code со
                значением "8006"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8006']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8006']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4074']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4074']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4074']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '4074'">Элемент code обязан содержать один атрибут @code со
                значением "4074"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4074']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.855', '1.2.643.5.1.13.2.1.1.658']"
                >Элемент value должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.855"</assert>
            <assert test="@codeSystemName != ''">Элемент value должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value должен содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="count(originalText) = [0, 1]">Элемент value МОЖЕТ содержать не более
                одного [0..1] элемента originalText
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4074']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
            <assert test="if (@nullFlavor='OTH') then count(originalText) = 1 else(count(originalText) = [0, 1])">Элемент value МОЖЕТ содержать не более
                одного [0..1] элемента originalText; Если value/@nullFlavor=="OTH", то элемент originalText обязан быть представлен
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074']/observation/value)</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '4074']/observation/value/originalText">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='4074']/observation/value/originalText
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент originalText должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8086']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8086']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8086'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8086']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8086']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8086']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8086']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8086']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8086']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8086'">Элемент code обязан содержать один атрибут @code со
                значением "8086"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8086']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8086']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '813']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='813']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='813'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '813']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='813']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='813']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='813']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '813']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='813']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '813'">Элемент code обязан содержать один атрибут @code со
                значением "813"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '813']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='813']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1060', '1.2.643.5.1.13.2.1.1.714']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1060"</assert>
            <assert test="@codeSystemName != ''">Элемент value обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '837']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='837']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='837'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '837']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='837']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='837']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='837']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '837']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='837']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '837'">Элемент code обязан содержать один атрибут @code со
                значением "837"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '837']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='837']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.725'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.725"</assert>
            <assert test="@codeSystemName != ''">Элемент value обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@code = ['31','32']">Элемент value обязан содержать один атрибут @code с не пустым
                значением; допустимые значения '31', '32'</assert>
            <assert test="@codeSystemVersion != ''">Элемент value обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8007']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8007']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8007'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8007']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8007']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8007']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8007']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8007']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8007']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8007'">Элемент code обязан содержать один атрибут @code со
                значением "8007"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8007']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8007']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '9021']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='9021']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='9021'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '9021']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='9021']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='9021']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='9021']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '9021']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='9021']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '9021'">Элемент code обязан содержать один атрибут @code со
                значением "9021"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '9021']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '9021']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '6020']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='6020']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='6020'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '6020']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='6020']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='6020']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='6020']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '6020']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='6020']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6020'">Элемент code обязан содержать один атрибут @code со
                значением "6020"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '6020']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='6020']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.766'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.766"</assert>
            <assert test="@codeSystemName != ''">Элемент value обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8087']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8087']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8087'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8087']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8087']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8087']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ДОЛЖЕН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8087']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8087']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8087']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8087'">Элемент code обязан содержать один атрибут @code со
                значением "8087"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8087']/observation/effectiveTime[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент effectiveTime должен содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8087']/observation/effectiveTime[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '10000'">Элемент code обязан содержать один атрибут @code со
                значением "10000"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RESLAB'">Элемент code обязан содержать один атрибут @code со
                значением "RESLAB"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESPSYCHOPHYSIOLEXAM']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESPSYCHOPHYSIOLEXAM']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESPSYCHOPHYSIOLEXAM']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RESPSYCHOPHYSIOLEXAM'">Элемент code обязан содержать один атрибут
                @code со значением "RESPSYCHOPHYSIOLEXAM"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESPSYCHOPHYSIOLEXAM']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESPSYCHOPHYSIOLEXAM']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESPSYCHOPHYSIOLEXAM']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section) </assert>
            <assert
                test="count(entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]) >= 1"
                >Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'LINKDOCS'">Элемент code обязан содержать один атрибут @code со
                значением "LINKDOCS"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]
                не должен иметь атрибут @nullFlavor</report>
            <assert
                test="count(act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]) = 1"
                >Элемент entry ОБЯЗАН содержать один [1..1] элемент act
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ACT'">Элемент act обязан содержать один атрибут @classCode
                со значением "ACT"</assert>
            <assert test="@moodCode = 'EVN'">Элемент act обязан содержать один атрибут @moodCode со
                значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент act ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(text) = [0, 1]">Элемент act МОЖЕТ содержать не более одного [0..1]
                элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(effectiveTime) = 1">Элемент act ОБЯЗАН содержать один [1..1] элемент
                effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(performer) = [0, 1]">Элемент act МОЖЕТ содержать не более одного
                [0..1] элемента performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '11002']) = [0, 1]"
                >Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '11003']) = [0, 1]"
                >Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '6058']) = [0, 1]"
                >Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(reference) = 1">Элемент act ОБЯЗАН содержать один [1..1] элемент
                reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystem != ''">Элемент code обязан содержать один атрибут @codeSystem
                с не пустым значением; допустимые значения: "1.2.643.5.1.13.13.99.2.1079",
                "1.2.643.5.1.13.13.11.1522"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']"
                >Элемент code обязан содержать один атрибут @codeSystem с не пустым значением;
                допустимые значения: "1.2.643.5.1.13.13.99.2.1079",
                "1.2.643.5.1.13.13.11.1522"</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">Элемент performer ОБЯЗАН содержать один [1..1]
                элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент assignedEntity ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity) </assert>
            <assert test="count(telecom) = [0, 1]">Элемент assignedEntity МОЖЕТ содержать не более
                одного [0..1] элемента telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity) </assert>
            <assert test="count(representedOrganization) = [0, 1]">Элемент assignedEntity МОЖЕТ
                содержать не более одного [0..1] элемента representedOrganization
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">Элемент id должен содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">Элемент id должен
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/telecom
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент assignedPerson ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">Элемент representedOrganization обязан содержать один
                атрибут @classCode со значением "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >Элемент representedOrganization ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">Элемент representedOrganization МОЖЕТ содержать
                произвольное количество [0..*] элементов telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">Элемент representedOrganization МОЖЕТ содержать не
                более одного [0..1] элемента addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением</assert>
            <assert test="count(@extension != '') = [0, 1]">Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/telecom
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="@value != ''">Элемент telecom обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >Элемент addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >Элемент address:stateCode обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент address:stateCode обязан содержать один атрибут @code
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент address:stateCode обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент address:stateCode обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11002']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11002']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11002']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '11002'">Элемент code обязан содержать один атрибут @code со
                значением "11002"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11002']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11003']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11003']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11003']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '11003'">Элемент code обязан содержать один атрибут @code со
                значением "11003"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11003']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '6058']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '6058']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '6058']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6058'">Элемент code обязан содержать один атрибут @code со
                значением "6058"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '6058']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.1008'">Элемент value обязан
                содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.1008"</assert>
            <assert test="@codeSystemName != ''">Элемент value обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem=['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">Элемент id должен содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.51$')">Элемент id должен
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//id[not(@nullFlavor)]">
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+$')">Элемент //id должен иметь
                синтаксически корректное значение атрибута @root, соответствующее регулярному
                выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//id[@root = '1.2.643.100.3'][not(@nullFlavor)]">
            <assert test="matches(@extension, '^([0-9]{3}[-\s]{0,1}){3}[0-9]{2}$')">Элемент
                //id[@root='1.2.643.100.3'] должен иметь синтаксически корректное значение атрибута
                @extension, соответствующее СНИЛС: должно состоять из 11 цифр, цифры могут
                группироваться по 3+3+3+2, между группами может ставиться пробел или тире.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//postalCode[not(@nullFlavor)]">
            <assert test="matches(., '^[0-9]{6}$')">Элемент //postalCode должен иметь синтаксически
                корректное значение, соответствующее почтовому индексу: должно состоять из 6 цифр
                без разделителей.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//id[not(@nullFlavor)][@root = '1.2.643.5.1.13.13.17.1.1']">
            <assert
                test="matches(@extension, '(^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$|^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$)')"
                >Элемент //id[@root='1.2.643.5.1.13.13.17.1.1'] должен иметь синтаксически
                корректное значение атрибута @extension, соответствующее регулярному выражению
                '^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$' или
                '^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="//effectiveTime[not(low | high | width)][not(@nullFlavor)][not(@xsi:type = ['IVL_TS', 'PIVL_TS'])]">
            <assert
                test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="//birthTime[not(@nullFlavor)] | //time[not(@nullFlavor)] | //effectiveTime/low[not(@nullFlavor)] | //effectiveTime/high[not(@nullFlavor)] | //value[@xsi:type = 'TS'][not(@nullFlavor)]">
            <assert
                test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//identity:effectiveTime/identity:low[not(@nullFlavor)]">
            <assert
                test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//identity:effectiveTime/identity:high[not(@nullFlavor)]">
            <assert
                test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//identity:IssueDate[not(@nullFlavor)]">
            <assert
                test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//identity:IssueDate[not(@nullFlavor)]">
            <assert
                test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[id/@root][setId/@root]">
            <report test="id/@root = setId/@root">Значения атрибута @root элементов
                ClinicalDocument/id и ClinicalDocument/setId должны различаться.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//identity:Props[not(@nullFlavor)]">
            <assert
                test="(identity:Ogrn and not(identity:Ogrnip)) or (identity:Ogrnip and not(identity:Ogrn)) or (identity:Ogrn and identity:Ogrnip/@nullFlavor) or (identity:Ogrn/@nullFlavor and identity:Ogrnip)"
                >ОГРН и ОГРНИП не могут быть указаны совместно.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[@xsi:type = 'PQ'][not(@nullFlavor)]">
            <assert test="@value != ''">Элемент, содержащий @xsi:type='PQ', должен иметь не пустое
                значение атрибута @value.</assert>
            <assert test="@unit != ''">Элемент, содержащий @xsi:type='PQ', должен иметь не пустое
                значение атрибута @unit.</assert>
            <assert test="count(translation) &lt;= 1">Элемент, содержащий @xsi:type='PQ', должен
                иметь не более 1 элемента translation.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[@xsi:type = 'ST'][not(@nullFlavor)]">
            <assert test=". != ''">Элемент, содержащий @xsi:type='ST', должен иметь не пустое
                значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[@xsi:type = 'BL'][not(@nullFlavor)]">
            <assert test="@value = ['true', 'false']">Элемент, содержащий @xsi:type='BL', должен
                иметь значение атрибута @value равное 'true' или 'false'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[@xsi:type = 'CD'][not(@nullFlavor)]">
            <assert test="@codeSystem != ''">Элемент, содержащий @xsi:type='CD', должен иметь не
                пустое значение атрибута @codeSystem.</assert>
            <assert test="@codeSystemName != ''">Элемент, содержащий @xsi:type='CD', должен иметь не
                пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code != ''">Элемент, содержащий @xsi:type='CD', должен иметь не пустое
                значение атрибута @code.</assert>
            <assert test="@codeSystemVersion != ''">Элемент, содержащий @xsi:type='CD', должен иметь
                не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName != ''">Элемент, содержащий @xsi:type='CD', должен иметь не
                пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[@xsi:type = 'INT'][not(@nullFlavor)]">
            <assert test="@value != ''">Элемент, содержащий @xsi:type='INT', должен иметь не пустое
                значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[@xsi:type = 'TS'][not(@nullFlavor)]">
            <assert test="@value != ''">Элемент, содержащий @xsi:type='TS', должен иметь не пустое
                значение атрибута @value.</assert>
            <assert
                test="matches(@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
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
            <assert test="low[not(@nullFlavor)]/@value != ''">Элемент, содержащий @xsi:type='IVL_TS', должен иметь не пустое
                значение атрибута low/@value.</assert>
            <assert
                test="matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
            <assert test="high[not(@nullFlavor)]/@value != ''">Элемент, содержащий @xsi:type='IVL_TS', должен иметь не пустое
                значение атрибута high/@value.</assert>
            <assert
                test="matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
        </rule>
    </pattern>
    
    
    
    <!-- Дополнительные правила для блока "Сведения об источнике оплаты" -->
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['8', '9', '10', '11', '12']]">
            <assert test="identity:DocInfo/@nullFlavor = ['NA', 'NAV']">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение
                атрибута @nullFlavor равное 'NA' или 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '1']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code = '1'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '1'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = '3']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code = '2'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '2'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code = ['4', '5', '6']]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code = '3'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType
                должен иметь значение атрибута @code равное '3'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor][identity:DocInfo/identity:IdentityDocType/@code = '1']">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV'"
                >Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType][identity:DocInfo/identity:IdentityDocType/@code = ['2', '3']]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA'"
                >Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType
                должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = '1']">
            <assert test="identity:DocInfo/identity:Series != ''">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь не пустое значение.</assert>
            <report test="identity:DocInfo/identity:Series/@nullFlavor">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series не
                должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code = ['2', '3', '4']]">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor = 'NA'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor = 'NAV'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NA']">
            <assert test="identity:DocInfo/identity:Series != ''">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series
                должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']">
            <assert test="identity:DocInfo/identity:Number/@nullFlavor = 'NAV'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor = 'NAV')]]">
            <assert test="identity:DocInfo/identity:Number != ''">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number
                должен иметь не пустое значение.</assert>
            <report test="identity:DocInfo/identity:Number/@nullFlavor">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number не
                должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor = 'NAV']">
            <assert test="identity:DocInfo/identity:effectiveTime/@nullFlavor = ['NAV', 'NASK']"
                >Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime
                должен иметь значение атрибута @nullFlavor равное 'NAV' или 'NASK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo/identity:effectiveTime/identity:high][identity:DocInfo/identity:InsurancePolicyType/@code = '2']">
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor = 'NAV'"
                >Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high
                должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor = 'NA'">Main07-1. Элемент
                ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь
                значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    
    <!-- Соответствие наполнения таблице для блока "Сведения об источнике оплаты" --> 
    
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity[identity:DocInfo][code/@code = ['1', '3', '4', '5', '6']]">
            <report test="identity:DocInfo/@nullFlavor"> Элемент
                ClinicalDocument/participant/associatedEntity/identity:DocInfo не должен иметь 
                атрибут @nullFlavor при указании данного типа источника оплаты в соответствии с Таблицей "Обязательность заполнения элементов в зависимости от источника оплаты", представленной в руководстве по реализации в разделе "Сведения об источнике оплаты".</report>
        </rule>
    </pattern>
    
</schema>

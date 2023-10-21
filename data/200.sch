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
            <assert test="count(documentationOf) = [0, 1]">Элемент ClinicalDocument МОЖЕТ содержать
                не более одного [0..1] элемента documentationOf (ClinicalDocument) </assert>
            <assert test="count(componentOf) = 1">Элемент ClinicalDocument ОБЯЗАН содержать один
                [1..1] элемент componentOf (ClinicalDocument) </assert>
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
            <assert test="@root = '1.2.643.5.1.13.13.15.30.2'">Элемент templateId обязан содержать
                один атрибут @root со значением "1.2.643.5.1.13.13.15.30.2"</assert>
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
            <assert test="@code = '30'">Элемент code обязан содержать один атрибут @code со
                значением "30"</assert>
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
        <rule context="ClinicalDocument/code">
            <assert test="count(translation)=1">Элемент ClinicalDocument/code ОБЯЗАН содержать один [1..1] элемент translation</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/code/translation">
            <report test="@nullFlavor">Элемент ClinicalDocument/code/translation не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@code!= ''">Элемент translation обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@code = '200'">Элемент translation обязан содержать один
                атрибут @code со значением "200"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1520'">Элемент
                translation обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1520"</assert>
            <assert test="@codeSystemName != ''">Элемент translation обязан содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один
                атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент translation обязан содержать
                один атрибут @codeSystemVersion с не пустым значением</assert>
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
            <assert test="count(administrativeGenderCode) = 1">Элемент patient ДОЛЖЕН содержать один
                [1..1] элемент administrativeGenderCode
                (ClinicalDocument/recordTarget/patientRole/patient) </assert>
            <assert test="count(birthTime) = 1">Элемент patient ДОЛЖЕН содержать один [1..1] элемент
                birthTime (ClinicalDocument/recordTarget/patientRole/patient) </assert>
            <assert test="count(guardian) = [0, 1]">Элемент patient МОЖЕТ содержать не более одного
                [0..1] элемента guardian (ClinicalDocument/recordTarget/patientRole/patient)
            </assert>
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
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]">
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1040', '1.2.643.5.1.13.2.1.1.156']"
                >Элемент administrativeGenderCode должен содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1040"</assert>
            <assert test="@codeSystemName != ''">Элемент administrativeGenderCode должен содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент administrativeGenderCode должен содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент administrativeGenderCode должен
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент administrativeGenderCode должен содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент birthTime должен содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@classCode = 'GUARD'">Элемент guardian обязан содержать один атрибут
                @classCode со значением "GUARD"</assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = [0, 1]">Элемент guardian МОЖЕТ
                содержать не более одного [0..1] элемента id
                (ClinicalDocument/recordTarget/patientRole/patient/guardian) </assert>
            <assert test="count(identity:IdentityDoc) = [0, 1]">Элемент guardian МОЖЕТ содержать не
                более одного [0..1] элемента identity:IdentityDoc
                (ClinicalDocument/recordTarget/patientRole/patient/guardian) </assert>
            <assert test="count(identity:AuthorityDoc) = [0, 1]">Элемент guardian МОЖЕТ содержать не
                более одного [0..1] элемента identity:AuthorityDoc
                (ClinicalDocument/recordTarget/patientRole/patient/guardian) </assert>
            <assert test="count(code) = [0, 1]">Элемент guardian МОЖЕТ содержать не более одного
                [0..1] элемента code (ClinicalDocument/recordTarget/patientRole/patient/guardian) </assert>
            <assert test="count(addr) = [0, 1]">Элемент guardian МОЖЕТ содержать не более одного
                [0..1] элемента addr (ClinicalDocument/recordTarget/patientRole/patient/guardian) </assert>
            <assert test="count(telecom) >= 0">Элемент guardian МОЖЕТ содержать произвольное
                количество [0..*] элементов telecom
                (ClinicalDocument/recordTarget/patientRole/patient/guardian) </assert>
            <assert test="count(guardianPerson) = [0, 1]">Элемент guardian МОЖЕТ содержать не более
                одного [0..1] элемента guardianPerson
                (ClinicalDocument/recordTarget/patientRole/patient/guardian) </assert>
            <assert test="count(guardianOrganization) = [0, 1]">Элемент guardian МОЖЕТ содержать не
                более одного [0..1] элемента guardianOrganization
                (ClinicalDocument/recordTarget/patientRole/patient/guardian) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/id[@root='1.2.643.100.3']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">Элемент id обязан содержать один атрибут @root со
                значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(identity:IdentityCardType) = 1">Элемент identity:IdentityDoc ОБЯЗАН
                содержать один [1..1] элемент identity:IdentityCardType
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc) </assert>
            <assert test="count(identity:Series) = 1">Элемент identity:IdentityDoc ДОЛЖЕН содержать
                один [1..1] элемент identity:Series
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc) </assert>
            <assert test="count(identity:Number) = 1">Элемент identity:IdentityDoc ОБЯЗАН содержать
                один [1..1] элемент identity:Number
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueOrgName) = 1">Элемент identity:IdentityDoc ДОЛЖЕН
                содержать один [1..1] элемент identity:IssueOrgName
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueOrgCode) = 1">Элемент identity:IdentityDoc ДОЛЖЕН
                содержать один [1..1] элемент identity:IssueOrgCode
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueDate) = 1">Элемент identity:IdentityDoc ОБЯЗАН
                содержать один [1..1] элемент identity:IssueDate
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IdentityCardType
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
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Series[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:Series должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Number">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:Number
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Number должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:IssueOrgName должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:IssueOrgCode должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueDate">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc/identity:IssueDate
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент identity:IssueDate обязан содержать один атрибут
                @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(identity:IdentityCardType) = 1">Элемент identity:AuthorityDoc ОБЯЗАН
                содержать один [1..1] элемент identity:IdentityCardType
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc) </assert>
            <assert test="count(identity:Series) = 1">Элемент identity:AuthorityDoc ДОЛЖЕН содержать
                один [1..1] элемент identity:Series
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc) </assert>
            <assert test="count(identity:Number) = 1">Элемент identity:AuthorityDoc ОБЯЗАН содержать
                один [1..1] элемент identity:Number
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc) </assert>
            <assert test="count(identity:IssueOrgName) = 1">Элемент identity:AuthorityDoc ДОЛЖЕН
                содержать один [1..1] элемент identity:IssueOrgName
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc) </assert>
            <assert test="count(identity:IssueDate) = 1">Элемент identity:AuthorityDoc ОБЯЗАН
                содержать один [1..1] элемент identity:IssueDate
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.313'">Элемент
                identity:IdentityCardType обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.313"</assert>
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
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Series[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:Series должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Number">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Number
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Number должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueOrgName[not(@nullFlavor)]">
            <assert test=". != ''">Элемент identity:IssueOrgName должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент identity:IssueDate обязан содержать один атрибут
                @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/code не должен иметь
                атрибут @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.14', '1.2.643.5.1.13.2.1.1.1504.40']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.14"</assert>
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
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/addr не должен иметь
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
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode (ClinicalDocument/recordTarget/patientRole/patient/guardian/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address (ClinicalDocument/recordTarget/patientRole/patient/guardian/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/streetAddressLine не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/address:stateCode не
                должен иметь атрибут @nullFlavor</report>
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
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/telecom не должен иметь
                атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент guardianPerson ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization не
                должен иметь атрибут @nullFlavor</report>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = [0, 1]"
                >Элемент guardianOrganization МОЖЕТ содержать не более одного [0..1] элемента id
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization) </assert>
            <assert test="count(identity:Props) = 1">Элемент guardianOrganization ДОЛЖЕН содержать
                один [1..1] элемент identity:Props
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization) </assert>
            <assert test="count(name) = 1">Элемент guardianOrganization ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization) </assert>
            <assert test="count(addr) = [0, 1]">Элемент guardianOrganization МОЖЕТ содержать не
                более одного [0..1] элемента addr
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
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
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props[not(@nullFlavor)]">
            <assert test="count(identity:Ogrn) = [0, 1]">Элемент identity:Props МОЖЕТ содержать не
                более одного [0..1] элемента identity:Ogrn
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props) </assert>
            <assert test="count(identity:Ogrnip) = [0, 1]">Элемент identity:Props МОЖЕТ содержать не
                более одного [0..1] элемента identity:Ogrnip
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props) </assert>
            <assert test="count(identity:Okpo) = [0, 1]">Элемент identity:Props МОЖЕТ содержать не
                более одного [0..1] элемента identity:Okpo
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props) </assert>
            <assert test="count(identity:Okato) = [0, 1]">Элемент identity:Props МОЖЕТ содержать не
                более одного [0..1] элемента identity:Okato
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrn">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrn
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Ogrn должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrnip">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrnip
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Ogrnip должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okpo">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okpo
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Okpo должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okato">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Okato
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Okato должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент name должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr
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
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">Элемент addr ОБЯЗАН содержать один [1..1]
                элемент address:stateCode
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                postalCode
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">Элемент addr ДОЛЖЕН содержать один [1..1] элемент
                fias:Address
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент streetAddressLine должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/address:stateCode
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
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">Элемент postalCode должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">Элемент fias:Address ОБЯЗАН содержать один [1..1]
                элемент fias:AOGUID
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">Элемент fias:Address ДОЛЖЕН содержать один
                [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент fias:AOGUID должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">Элемент fias:HOUSEGUID должен содержать не пустое текстовое
                наполнение</assert>
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
            <assert test="count(medService:serviceForm) = 1">Элемент serviceEvent ОБЯЗАН содержать
                один [1..1] элемент medService:serviceForm
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(medService:serviceType) = [0, 1]">Элемент serviceEvent МОЖЕТ
                содержать не более одного [0..1] элемента medService:serviceType
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(medService:serviceCond) = 1">Элемент serviceEvent ОБЯЗАН содержать
                один [1..1] элемент medService:serviceCond
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <report test="@nullFlavor">Элемент ClinicalDocument/documentationOf/serviceEvent/code не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '13'">Элемент code обязан содержать один атрибут @code со
                значением "13"</assert>
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
        <rule context="ClinicalDocument/componentOf">
            <report test="@nullFlavor">Элемент ClinicalDocument/componentOf не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(encompassingEncounter) = 1">Элемент componentOf ОБЯЗАН содержать
                один [1..1] элемент encompassingEncounter (ClinicalDocument/componentOf) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <report test="@nullFlavor">Элемент ClinicalDocument/componentOf/encompassingEncounter не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.15']) = 1">Элемент
                encompassingEncounter ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/componentOf/encompassingEncounter) </assert>
            <assert
                test="count(id[substring(@root, string-length(@root) - 2) = ['.16', '.17']]) = [0, 1]"
                >Элемент encompassingEncounter МОЖЕТ содержать не более одного [0..1] элемента id
                (ClinicalDocument/componentOf/encompassingEncounter) </assert>
            <assert test="count(code) = [0, 1]">Элемент encompassingEncounter МОЖЕТ содержать не
                более одного [0..1] элемента code
                (ClinicalDocument/componentOf/encompassingEncounter) </assert>
            <assert test="count(medService:DocType) = [0, 1]">Элемент encompassingEncounter МОЖЕТ
                содержать не более одного [0..1] элемента medService:DocType
                (ClinicalDocument/componentOf/encompassingEncounter) </assert>
            <assert test="count(effectiveTime) = 1">Элемент encompassingEncounter ОБЯЗАН содержать
                один [1..1] элемент effectiveTime
                (ClinicalDocument/componentOf/encompassingEncounter) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root, string-length(@root) - 2) = '.15']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root,
                string-length(@root) - 2)='.15'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.15$')">Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root, string-length(@root) - 2) = ['.16', '.17']]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root,
                string-length(@root) - 2)=['.16','.17']] не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.(16|17)$')">Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/componentOf/encompassingEncounter/code не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.723'">Элемент code обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.723"</assert>
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
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/medService:DocType">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/componentOf/encompassingEncounter/medService:DocType не должен
                иметь атрибут @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']"
                >Элемент medService:DocType обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1522"</assert>
            <assert test="@codeSystemName != ''">Элемент medService:DocType обязан содержать один
                атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент medService:DocType обязан содержать один атрибут
                @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент medService:DocType обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент medService:DocType обязан содержать один
                атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/componentOf/encompassingEncounter/effectiveTime не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(low) = 1">Элемент effectiveTime ОБЯЗАН содержать один [1..1] элемент
                low (ClinicalDocument/componentOf/encompassingEncounter/effectiveTime) </assert>
            <assert test="count(high) = [0, 1]">Элемент effectiveTime МОЖЕТ содержать не более
                одного [0..1] элемента high
                (ClinicalDocument/componentOf/encompassingEncounter/effectiveTime) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент low обязан содержать один атрибут @value с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент high обязан содержать один атрибут @value с не
                пустым значением</assert>
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
            <assert test="count(component[section/code/@code = 'HOSP']) = 1">Элемент structuredBody
                ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(entry[observation/code/@code = '6042']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'STATEADM']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'ANAM']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'LANAM']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'STATECUR']) = 1">Элемент section
                ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'DGN']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'RESCONS']) >= 0">Элемент section
                МОЖЕТ содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'CONSILIUMDECISION']) >= 0">Элемент
                section МОЖЕТ содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'COMMISSION']) >= 0">Элемент section
                МОЖЕТ содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'RESLAB']) >= 0">Элемент section
                МОЖЕТ содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'RESINSTR']) >= 0">Элемент section
                МОЖЕТ содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'GISTRESULT']) >= 0">Элемент section
                МОЖЕТ содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'RESOTHEXAM']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'SUR']) >= 0">Элемент section МОЖЕТ
                содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'VITALPARAM']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'SCORES']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'DRUG']) >= 0">Элемент section МОЖЕТ
                содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'ELSEPROCEDURE']) >= 0">Элемент
                section МОЖЕТ содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'POLT']) >= 0">Элемент section МОЖЕТ
                содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'RADIOTHERAPY']) >= 0">Элемент
                section МОЖЕТ содержать произвольное количество [0..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'SPECIALTREAT']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'PLANACTIVE']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'RESINFO']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'REGIME']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'SERVICES']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section) </assert>
            <assert test="count(component[section/code/@code = 'LINKDOCS']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'HOSP'">Элемент code обязан содержать один атрибут @code со
                значением "HOSP"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/entry[observation/code/@code = '6042']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/entry[observation/code/@code='6042']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/entry[observation/code/@code='6042'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/entry[observation/code/@code = '6042']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/entry[observation/code/@code='6042']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/entry[observation/code/@code='6042']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/entry[observation/code/@code='6042']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/entry[observation/code/@code = '6042']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/entry[observation/code/@code='6042']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6042'">Элемент code обязан содержать один атрибут @code со
                значением "6042"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/entry[observation/code/@code = '6042']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1496'">Элемент value должен содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1496"</assert>
            <assert test="@codeSystemName != ''">Элемент value должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value должен содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="count(translation) = [0, 1]">Элемент value МОЖЕТ содержать не более одного
                [0..1] элемента translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/entry[observation/code/@code='6042']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/entry[observation/code/@code = '6042']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/entry[observation/code/@code = '6042']/observation/value/translation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/entry[observation/code/@code='6042']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.1057'">Элемент translation обязан
                содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.1057"</assert>
            <assert test="@codeSystemName != ''">Элемент translation обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент translation обязан содержать один атрибут @code с не
                пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент translation обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент translation обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section) </assert>
            <assert test="count(entry[observation/code/@code = '804']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section) </assert>
            <assert test="count(component[section/code/@code = 'COMPLNTS']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section) </assert>
            <assert test="count(component[section/code/@code = 'PATOBJ']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'STATEADM'">Элемент code обязан содержать один атрибут @code со
                значением "STATEADM"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/entry[observation/code/@code = '804']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/entry[observation/code/@code='804']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/entry[observation/code/@code='804'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/entry[observation/code/@code = '804']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/entry[observation/code/@code='804']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/entry[observation/code/@code='804']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/entry[observation/code/@code='804']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/entry[observation/code/@code = '804']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/entry[observation/code/@code='804']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '804'">Элемент code обязан содержать один атрибут @code со
                значением "804"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/entry[observation/code/@code = '804']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/entry[observation/code/@code='804']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1006', '1.2.643.5.1.13.2.1.1.111']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1006"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'COMPLNTS']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'COMPLNTS']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'COMPLNTS']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'COMPLNTS'">Элемент code обязан содержать один атрибут @code со
                значением "COMPLNTS"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'COMPLNTS']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'COMPLNTS']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='COMPLNTS']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section) </assert>
            <assert
                test="count(entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']) = 1"
                >Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'PATOBJ'">Элемент code обязан содержать один атрибут @code со
                значением "PATOBJ"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(text) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(performer) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/code">
            <assert test="@nullFlavor = 'NI'">Элемент code обязан содержать один атрибут @nullFlavor
                со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/text[not(@nullFlavor)]">
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">Элемент performer ОБЯЗАН содержать один [1..1]
                элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент assignedEntity ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(telecom) = [0, 1]">Элемент assignedEntity МОЖЕТ содержать не более
                одного [0..1] элемента telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/telecom
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент assignedPerson ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATEADM']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATEADM']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ANAM']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ANAM']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ANAM']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'ANAM'">Элемент code обязан содержать один атрибут @code со
                значением "ANAM"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ANAM']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ANAM']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ANAM']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section) </assert>
            <assert test="count(entry[observation/code/@code = '7006']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section) </assert>
            <assert test="count(entry[observation/code/@code = '814']) >= 0">Элемент section МОЖЕТ
                содержать произвольное количество [0..*] элементов entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section) </assert>
            <assert test="count(entry[observation/code/@code = '812']) >= 0">Элемент section МОЖЕТ
                содержать произвольное количество [0..*] элементов entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section) </assert>
            <assert test="count(entry[observation/code/@code = '9052']) >= 0">Элемент section МОЖЕТ
                содержать произвольное количество [0..*] элементов entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section) </assert>
            <assert
                test="count(entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1038']) = [0, 1]"
                >Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section) </assert>
            <assert test="count(entry[observation/code/@code = '9053']) >= 0">Элемент section МОЖЕТ
                содержать произвольное количество [0..*] элементов entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'LANAM'">Элемент code обязан содержать один атрибут @code со
                значением "LANAM"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '7006']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='7006']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='7006'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '7006']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='7006']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='7006']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='7006']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '7006']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='7006']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '7006'">Элемент code обязан содержать один атрибут @code со
                значением "7006"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '7006']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='7006']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ДОЛЖЕН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '8043']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '815']) = [0, 1]">Элемент
                observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '4058']) >= 0">Элемент
                observation МОЖЕТ содержать произвольное количество [0..*] элементов
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '8040']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '814'">Элемент code обязан содержать один атрибут @code со
                значением "814"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/effectiveTime[not(@nullFlavor)]">
            <assert test="count(low) = 1">Элемент effectiveTime ДОЛЖЕН содержать один [1..1] элемент
                low
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/effectiveTime) </assert>
            <assert test="count(high) = 1">Элемент effectiveTime ОБЯЗАН содержать один [1..1]
                элемент high
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/effectiveTime)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/effectiveTime/low[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент low должен содержать один атрибут @value с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/effectiveTime/low[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/effectiveTime/high">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/effectiveTime/high
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент high обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1053', '1.2.643.5.1.13.2.1.1.702']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1053"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8043']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8043']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8043'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8043']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8043']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8043']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8043']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8043']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8043']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8043'">Элемент code обязан содержать один атрибут @code со
                значением "8043"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8043']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8043']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'BL'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "BL"</assert>
            <assert test="@value != ''">Элемент value обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '815']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='815']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='815'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '815']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='815']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='815']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='815']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '815']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='815']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '815'">Элемент code обязан содержать один атрибут @code со
                значением "815"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '815']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='815']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1041'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1041"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ДОЛЖЕН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '4083']) = 1">Элемент
                observation ОБЯЗАН содержать один [1..1] элемент entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '4058'">Элемент code обязан содержать один атрибут @code со
                значением "4058"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/effectiveTime[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент effectiveTime должен содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/effectiveTime[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "PQ"</assert>
            <assert test="@unit = '%'">Элемент value обязан содержать один атрибут @unit со
                значением "%"</assert>
            <assert test="@value != ''">Элемент value обязан содержать один атрибут @value с не
                пустым значением</assert>
            <assert test="count(translation) = 1">Элемент value ОБЯЗАН содержать один [1..1] элемент
                translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/value/translation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '53'">Элемент translation обязан содержать один атрибут @code со
                значением "53"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >Элемент translation обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">Элемент translation обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент translation обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@value != ''">Элемент translation обязан содержать один атрибут @value с
                не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент translation обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/entryRelationship[observation/code/@code = '4083']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/entryRelationship[observation/code/@code='4083']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/entryRelationship[observation/code/@code='4083'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/entryRelationship[observation/code/@code = '4083']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/entryRelationship[observation/code/@code='4083']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/entryRelationship[observation/code/@code='4083']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/entryRelationship[observation/code/@code='4083']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/entryRelationship[observation/code/@code = '4083']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/entryRelationship[observation/code/@code='4083']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '4083'">Элемент code обязан содержать один атрибут @code со
                значением "4083"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '4058']/observation/entryRelationship[observation/code/@code = '4083']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='4058']/observation/entryRelationship[observation/code/@code='4083']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.325'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.325"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation) </assert>
            <assert test="count(text) = [0, 1]">Элемент observation МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '8041']) = [0, 3]"
                >Элемент observation МОЖЕТ содержать не более трёх [0..3] элементов
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8040'">Элемент code обязан содержать один атрибут @code со
                значением "8040"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1474', '1.2.643.5.1.13.2.1.1.169']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1474"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']/observation/entryRelationship[observation/code/@code = '8041']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/entryRelationship[observation/code/@code='8041']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/entryRelationship[observation/code/@code='8041'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']/observation/entryRelationship[observation/code/@code = '8041']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/entryRelationship[observation/code/@code='8041']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/entryRelationship[observation/code/@code='8041']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/entryRelationship[observation/code/@code='8041']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']/observation/entryRelationship[observation/code/@code = '8041']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/entryRelationship[observation/code/@code='8041']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8041'">Элемент code обязан содержать один атрибут @code со
                значением "8041"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '814']/observation/entryRelationship[observation/code/@code = '8040']/observation/entryRelationship[observation/code/@code = '8041']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='814']/observation/entryRelationship[observation/code/@code='8040']/observation/entryRelationship[observation/code/@code='8041']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.686'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.686"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '812']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='812']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='812'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '812']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='812']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='812']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='812']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '812']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='812']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '812'">Элемент code обязан содержать один атрибут @code со
                значением "812"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '812']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='812']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1059', '1.2.643.5.1.13.2.1.1.713']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1059"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '9052']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9052']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9052'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '9052']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9052']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9052']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9052']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '9052']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9052']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '9052'">Элемент code обязан содержать один атрибут @code со
                значением "9052"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '9052']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9052']/observation/value
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1038']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1038']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1038'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1038']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1038']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1038']/observation) </assert>
            <assert test="count(text) = [0, 1]">Элемент observation МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1038']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1038']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1038']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1038'">Элемент code обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1038"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1038']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1038']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '9053']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9053']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9053'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '9053']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9053']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9053']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9053']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '9053']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9053']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '9053'">Элемент code обязан содержать один атрибут @code со
                значением "9053"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LANAM']/section/entry[observation/code/@code = '9053']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LANAM']/section/entry[observation/code/@code='9053']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1058', '1.2.643.5.1.13.2.1.1.701']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1058"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section) </assert>
            <assert test="count(entry[observation/code/@code = '804']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8055']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8056']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8057']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section) </assert>
            <assert test="count(component[section/code/@code = 'COMPLNTS']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section) </assert>
            <assert test="count(component[section/code/@code = 'PATOBJ']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'STATECUR'">Элемент code обязан содержать один атрибут @code со
                значением "STATECUR"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '804']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='804']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='804'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '804']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='804']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='804']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='804']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '804']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='804']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '804'">Элемент code обязан содержать один атрибут @code со
                значением "804"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '804']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='804']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1006', '1.2.643.5.1.13.2.1.1.111']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1006"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8055']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8055']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8055'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8055']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8055']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8055']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8055']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8055']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8055']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8055'">Элемент code обязан содержать один атрибут @code со
                значением "8055"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8055']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8055']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8056']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8056']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8056'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8056']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8056']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8056']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8056']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8056']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8056']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8056'">Элемент code обязан содержать один атрибут @code со
                значением "8056"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8056']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8056']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8057']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8057']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8057'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8057']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8057']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8057']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8057']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8057']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8057']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8057'">Элемент code обязан содержать один атрибут @code со
                значением "8057"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/entry[observation/code/@code = '8057']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/entry[observation/code/@code='8057']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'COMPLNTS']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'COMPLNTS']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'COMPLNTS']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'COMPLNTS'">Элемент code обязан содержать один атрибут @code со
                значением "COMPLNTS"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'COMPLNTS']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'COMPLNTS']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='COMPLNTS']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section) </assert>
            <assert
                test="count(entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']) = 1"
                >Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section) </assert>
            <assert test="count(entry[observation/code/@code = '12075']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'PATOBJ'">Элемент code обязан содержать один атрибут @code со
                значением "PATOBJ"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(text) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(performer) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/code">
            <assert test="@nullFlavor = 'NI'">Элемент code обязан содержать один атрибут @nullFlavor
                со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/text[not(@nullFlavor)]">
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">Элемент performer ОБЯЗАН содержать один [1..1]
                элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент assignedEntity ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(telecom) = [0, 1]">Элемент assignedEntity МОЖЕТ содержать не более
                одного [0..1] элемента telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/telecom
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент assignedPerson ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/code/@code = '12075']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/code/@code='12075']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/code/@code='12075'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/code/@code = '12075']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/code/@code='12075']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/code/@code='12075']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/code/@code='12075']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/code/@code = '12075']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/code/@code='12075']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '12075'">Элемент code обязан содержать один атрибут @code со
                значением "12075"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'STATECUR']/section/component[section/code/@code = 'PATOBJ']/section/entry[observation/code/@code = '12075']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='STATECUR']/section/component[section/code/@code='PATOBJ']/section/entry[observation/code/@code='12075']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section) </assert>
            <assert
                test="count(entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']) >= 1"
                >Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'DGN'">Элемент code обязан содержать один атрибут @code со
                значением "DGN"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(text) = [0, 1]">Элемент observation МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(effectiveTime) = [0, 1]">Элемент observation МОЖЕТ содержать не
                более одного [0..1] элемента effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '7026']) = 1">Элемент
                observation ОБЯЗАН содержать один [1..1] элемент entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '12014']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '823']) = [0, 1]">Элемент
                observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '824']) = [0, 1]">Элемент
                observation МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '12120']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '6047']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '6048']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '6049']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '6050']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '4072']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1077', '1.2.643.5.1.13.2.1.1.1504.4']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1077"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641', '1.2.643.5.1.13.2.1.1.718']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1005"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '7026']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '7026']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '7026']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='7026']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '7026'">Элемент code обязан содержать один атрибут @code со
                значением "7026"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '7026']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.795', '1.2.643.5.1.13.13.11.1076']"
                >Элемент value должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.795"</assert>
            <assert test="@codeSystemName != ''">Элемент value должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value должен содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '7026']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12014']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12014']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12014']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12014']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '12014'">Элемент code обязан содержать один атрибут @code со
                значением "12014"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12014']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1049', '1.2.643.5.1.13.2.1.1.586']"
                >Элемент value должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1049"</assert>
            <assert test="@codeSystemName != ''">Элемент value должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value должен содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12014']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '823']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '823']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '823']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '823'">Элемент code обязан содержать один атрибут @code со
                значением "823"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '823']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='823']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641', '1.2.643.5.1.13.2.1.1.718']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1005"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '824']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '824']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '824']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '824'">Элемент code обязан содержать один атрибут @code со
                значением "824"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '824']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='824']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1036', '1.2.643.5.1.13.2.1.1.105']"
                >Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1036"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation) </assert>
            <assert test="count(effectiveTime) = [0, 1]">Элемент observation МОЖЕТ содержать не
                более одного [0..1] элемента effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '12393']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '12120'">Элемент code обязан содержать один атрибут @code со
                значением "12120"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.770'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.770"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']/observation/entryRelationship[observation/code/@code = '12393']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']/observation/entryRelationship[observation/code/@code = '12393']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']/observation/entryRelationship[observation/code/@code = '12393']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '12393'">Элемент code обязан содержать один атрибут @code со
                значением "12393"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '12120']/observation/entryRelationship[observation/code/@code = '12393']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='12120']/observation/entryRelationship[observation/code/@code='12393']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'INT'">Элемент value обязан содержать один атрибут @xsi:type
                со значением "INT"</assert>
            <assert test="@value != ''">Элемент value обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6047']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6047']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6047'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6047']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6047']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6047']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6047']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6047']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6047']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6047'">Элемент code обязан содержать один атрибут @code со
                значением "6047"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6047']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6047']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.547'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.547"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6048']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6048']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6048'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6048']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6048']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6048']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6048']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6048']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6048']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6048'">Элемент code обязан содержать один атрибут @code со
                значением "6048"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6048']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6048']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.547'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.547"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6049']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6049']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6049'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6049']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6049']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6049']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6049']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6049']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6049']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6049'">Элемент code обязан содержать один атрибут @code со
                значением "6049"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6049']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6049']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.547'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.547"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6050']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6050']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6050'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6050']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6050']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6050']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6050']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6050']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6050']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6050'">Элемент code обязан содержать один атрибут @code со
                значением "6050"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '6050']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='6050']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.546'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.546"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '4072']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '4072']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '4072']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '4072'">Элемент code обязан содержать один атрибут @code со
                значением "4072"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DGN']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code = '4072']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DGN']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1077']/observation/entryRelationship[observation/code/@code='4072']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section) </assert>
            <assert
                test="count(entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']) = 1"
                >Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RESCONS'">Элемент code обязан содержать один атрибут @code со
                значением "RESCONS"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(text) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(performer) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/code">
            <assert test="@nullFlavor = 'NI'">Элемент code обязан содержать один атрибут @nullFlavor
                со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/text[not(@nullFlavor)]">
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">Элемент performer ОБЯЗАН содержать один [1..1]
                элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент assignedEntity ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(telecom) = [0, 1]">Элемент assignedEntity МОЖЕТ содержать не более
                одного [0..1] элемента telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/telecom
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент assignedPerson ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem='1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESCONS']/section/entry[observation/performer/assignedEntity/code/@codeSystem = '1.2.643.5.1.13.13.11.1002']/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section) </assert>
            <assert
                test="count(entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']) = 1"
                >Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'CONSILIUMDECISION'">Элемент code обязан содержать один атрибут
                @code со значением "CONSILIUMDECISION"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation) </assert>
            <assert test="count(text) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '6026']) = 1">Элемент
                observation ОБЯЗАН содержать один [1..1] элемент entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.780'">Элемент code обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.780"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code = '6026']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code = '6026']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026']/observation) </assert>
            <assert test="count(text) = [0, 1]">Элемент observation МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code = '6026']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6026'">Элемент code обязан содержать один атрибут @code со
                значением "6026"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code = '6026']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code = '6026']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/entryRelationship[observation/code/@code='6026']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1506'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1506"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='CONSILIUMDECISION']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.780']/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'CONSILIUMDECISION']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.780']/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section) </assert>
            <assert
                test="count(entry[observation/entryRelationship/observation/code/@code = '12475']) = 1"
                >Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'COMMISSION'">Элемент code обязан содержать один атрибут @code со
                значением "COMMISSION"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation) </assert>
            <assert test="count(text) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '12475']) = 1">Элемент
                observation ОБЯЗАН содержать один [1..1] элемент entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/code[not(@nullFlavor)]">
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.941'">Элемент code должен содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.941"</assert>
            <assert test="@codeSystemName != ''">Элемент code должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code должен содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="count(originalText) = [0, 1]">Элемент code МОЖЕТ содержать не более одного
                [0..1] элемента originalText
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/code)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/code[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/code/originalText">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/code/originalText
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент originalText должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/entryRelationship[observation/code/@code = '12475']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/entryRelationship[observation/code/@code = '12475']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475']/observation) </assert>
            <assert test="count(text) = [0, 1]">Элемент observation МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/entryRelationship[observation/code/@code = '12475']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '12475'">Элемент code обязан содержать один атрибут @code со
                значением "12475"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/entryRelationship[observation/code/@code = '12475']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/entryRelationship[observation/code/@code = '12475']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/entryRelationship[observation/code/@code='12475']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1506'">Элемент value обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1506"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code='12475']/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'COMMISSION']/section/entry[observation/entryRelationship/observation/code/@code = '12475']/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section) </assert>
            <assert test="count(entry) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation) </assert>
            <assert test="count(text) = [0, 1]">Элемент observation МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/code[not(@nullFlavor)]">
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1437', '1.2.643.5.1.13.13.11.10043']"
                >Элемент code должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1437"</assert>
            <assert test="@codeSystemName != ''">Элемент code должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code должен содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="count(originalText) = [0, 1]">Элемент code МОЖЕТ содержать не более одного
                [0..1] элемента originalText
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/code)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/code[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/code/originalText">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/code/originalText
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент originalText должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESLAB']/section/entry/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESLAB']/section/entry/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section) </assert>
            <assert
                test="count(entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']) = 1"
                >Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RESINSTR'">Элемент code обязан содержать один атрибут @code со
                значением "RESINSTR"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation) </assert>
            <assert test="count(text) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1471'">Элемент code обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1471"</assert>
            <assert test="@codeSystemName != ''">Элемент code обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@displayName != ''">Элемент code обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINSTR']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1471']/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINSTR']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1471']/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section) </assert>
            <assert test="count(entry) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'GISTRESULT'">Элемент code обязан содержать один атрибут @code со
                значением "GISTRESULT"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation) </assert>
            <assert test="count(text) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/code">
            <assert test="@nullFlavor = 'NI'">Элемент code обязан содержать один атрибут @nullFlavor
                со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='GISTRESULT']/section/entry/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'GISTRESULT']/section/entry/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESOTHEXAM']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESOTHEXAM']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM']/section) </assert>
            <assert test="count(text) = [0, 1]">Элемент section МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESOTHEXAM']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RESOTHEXAM'">Элемент code обязан содержать один атрибут @code со
                значением "RESOTHEXAM"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESOTHEXAM']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESOTHEXAM']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESOTHEXAM']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section) </assert>
            <assert test="count(entry) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'SUR'">Элемент code обязан содержать один атрибут @code со
                значением "SUR"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation) </assert>
            <assert test="count(text) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation) </assert>
            <assert test="count(reference) = 1">Элемент observation ОБЯЗАН содержать один [1..1]
                элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/code[not(@nullFlavor)]">
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1070', '1.2.643.5.1.13.2.1.1.473']"
                >Элемент code должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1070"</assert>
            <assert test="@codeSystemName != ''">Элемент code должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code должен содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="count(originalText) = 1">Элемент code ОБЯЗАН содержать один [1..1] элемент
                originalText
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/code)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/code[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/code/originalText">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/code/originalText
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент originalText должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(low) = 1">Элемент effectiveTime ОБЯЗАН содержать один [1..1] элемент
                low
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/effectiveTime) </assert>
            <assert test="count(high) = 1">Элемент effectiveTime ДОЛЖЕН содержать один [1..1]
                элемент high
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/effectiveTime)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/effectiveTime/low">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/effectiveTime/low
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент low обязан содержать один атрибут @value с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/effectiveTime/high[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент high должен содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/effectiveTime/high[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SUR']/section/entry/observation/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SUR']/section/entry/observation/reference/externalDocument/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section) </assert>
            <assert
                test="count(entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']) >= 1"
                >Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'VITALPARAM'">Элемент code обязан содержать один атрибут @code со
                значением "VITALPARAM"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']
                не должен иметь атрибут @nullFlavor</report>
            <assert
                test="count(organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']) = 1"
                >Элемент entry ОБЯЗАН содержать один [1..1] элемент organizer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'CLUSTER'">Элемент organizer обязан содержать один атрибут
                @classCode со значением "CLUSTER"</assert>
            <assert test="@moodCode = 'EVN'">Элемент organizer обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(statusCode) = 1">Элемент organizer ОБЯЗАН содержать один [1..1]
                элемент statusCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']) </assert>
            <assert test="count(effectiveTime) = 1">Элемент organizer ОБЯЗАН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']) </assert>
            <assert test="count(precondition) = [0, 1]">Элемент organizer МОЖЕТ содержать не более
                одного [0..1] элемента precondition
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']) </assert>
            <assert
                test="count(component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']) = [1, 2]"
                >Элемент organizer ОБЯЗАН содержать от одного до двух [1..2] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/statusCode">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/statusCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'completed'">Элемент statusCode обязан содержать один атрибут
                @code со значением "completed"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/precondition">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'PRCN'">Элемент precondition обязан содержать один атрибут
                @typeCode со значением "PRCN"</assert>
            <assert test="count(criterion) = 1">Элемент precondition ОБЯЗАН содержать один [1..1]
                элемент criterion
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/precondition/criterion">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент criterion ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion) </assert>
            <assert test="count(value) = 1">Элемент criterion ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/precondition/criterion/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'ASSERTION'">Элемент code обязан содержать один атрибут @code со
                значением "ASSERTION"</assert>
            <assert test="@codeSystem = '2.16.840.1.113883.5.4'">Элемент code обязан содержать один
                атрибут @codeSystem со значением "2.16.840.1.113883.5.4"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/precondition/criterion/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/precondition/criterion/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент component обязан содержать один атрибут
                @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент component ОБЯЗАН содержать один [1..1]
                элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation) </assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '6034']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '8034']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation) </assert>
            <assert test="count(referenceRange) = [0, 1]">Элемент observation МОЖЕТ содержать не
                более одного [0..1] элемента referenceRange
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">Элемент id должен содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.52$')">Элемент id должен
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.262', '1.2.643.5.1.13.13.11.1010']"
                >Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.262"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type != ''">Элемент value обязан содержать один атрибут @xsi:type с
                не пустым значением</assert>
            <assert test="count(translation) = [0, 1]">Элемент value МОЖЕТ содержать не более одного
                [0..1] элемента translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/value/translation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >Элемент translation обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">Элемент translation обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@value != ''">Элемент translation обязан содержать один атрибут @value с
                не пустым значением</assert>
            <assert test="@code != ''">Элемент translation обязан содержать один атрибут @code с не
                пустым значением</assert>
            <assert test="@displayName != ''">Элемент translation обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент translation обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '6034']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '6034']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ДОЛЖЕН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '6034']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='6034']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6034'">Элемент code обязан содержать один атрибут @code со
                значением "6034"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '6034']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.778'">Элемент value должен содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.778"</assert>
            <assert test="@codeSystemName != ''">Элемент value должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент value должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value должен содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '6034']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '8034']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '8034']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '8034']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8034'">Элемент code обязан содержать один атрибут @code со
                значением "8034"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code = '8034']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/entryRelationship[observation/code/@code='8034']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'INT'">Элемент value обязан содержать один атрибут @xsi:type
                со значением "INT"</assert>
            <assert test="@value != ''">Элемент value обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observationRange) = 1">Элемент referenceRange ОБЯЗАН содержать один
                [1..1] элемент observationRange
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(text) = 1">Элемент observationRange ОБЯЗАН содержать один [1..1]
                элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange) </assert>
            <assert test="count(value) = 1">Элемент observationRange ОБЯЗАН содержать один [1..1]
                элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'IVL_PQ'">Элемент value обязан содержать один атрибут
                @xsi:type со значением "IVL_PQ"</assert>
            <assert test="count(low) = 1">Элемент value ДОЛЖЕН содержать один [1..1] элемент low
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value) </assert>
            <assert test="count(high) = 1">Элемент value ДОЛЖЕН содержать один [1..1] элемент high
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент low должен содержать один атрибут @value с не пустым
                значением</assert>
            <assert test="@unit != ''">Элемент low должен содержать один атрибут @unit с не пустым
                значением</assert>
            <assert test="count(translation) = 1">Элемент low ОБЯЗАН содержать один [1..1] элемент
                translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
            <report test="@unit">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @unit</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low/translation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/low/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >Элемент translation обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">Элемент translation обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@value != ''">Элемент translation обязан содержать один атрибут @value с
                не пустым значением</assert>
            <assert test="@code != ''">Элемент translation обязан содержать один атрибут @code с не
                пустым значением</assert>
            <assert test="@displayName != ''">Элемент translation обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент translation обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент high должен содержать один атрибут @value с не
                пустым значением</assert>
            <assert test="@unit != ''">Элемент high должен содержать один атрибут @unit с не пустым
                значением</assert>
            <assert test="count(translation) = 1">Элемент high ОБЯЗАН содержать один [1..1] элемент
                translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
            <report test="@unit">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @unit</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high/translation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/organizer[component/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/component[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.262']/observation/referenceRange/observationRange/value/high/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >Элемент translation обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">Элемент translation обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@value != ''">Элемент translation обязан содержать один атрибут @value с
                не пустым значением</assert>
            <assert test="@code != ''">Элемент translation обязан содержать один атрибут @code с не
                пустым значением</assert>
            <assert test="@displayName != ''">Элемент translation обязан содержать один атрибут
                @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент translation обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section) </assert>
            <assert
                test="count(entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']) >= 1"
                >Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'SCORES'">Элемент code обязан содержать один атрибут @code со
                значением "SCORES"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(effectiveTime) = [0, 1]">Элемент observation МОЖЕТ содержать не
                более одного [0..1] элемента effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(value) = [0, 1]">Элемент observation МОЖЕТ содержать не более одного
                [0..1] элемента value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(performer) = [0, 1]">Элемент observation МОЖЕТ содержать не более
                одного [0..1] элемента performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '8020']) >= 0">Элемент
                observation МОЖЕТ содержать произвольное количество [0..*] элементов
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '8019']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1514'">Элемент code обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1514"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "PQ"</assert>
            <assert test="@value != ''">Элемент value обязан содержать один атрибут @value с не
                пустым значением</assert>
            <assert test="@unit != ''">Элемент value обязан содержать один атрибут @unit с не пустым
                значением</assert>
            <assert test="count(translation) = 1">Элемент value ОБЯЗАН содержать один [1..1] элемент
                translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/value/translation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >Элемент translation обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">Элемент translation обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@value != ''">Элемент translation обязан содержать один атрибут @value с
                не пустым значением</assert>
            <assert test="@code != ''">Элемент translation обязан содержать один атрибут @code с не
                пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент translation обязан содержать один
                атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент translation обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">Элемент performer ОБЯЗАН содержать один [1..1]
                элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">Элемент assignedEntity ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity) </assert>
            <assert test="count(telecom) = [0, 1]">Элемент assignedEntity МОЖЕТ содержать не более
                одного [0..1] элемента telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/telecom">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/telecom
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">Элемент assignedPerson ОБЯЗАН содержать один [1..1]
                элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент
                family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">Элемент name ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">Элемент name МОЖЕТ содержать не более
                одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент family должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент given должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент identity:Patronymic должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8020']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8020']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.52']) = [0, 1]"
                >Элемент observation МОЖЕТ содержать не более одного [0..1] элемента id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation) </assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation) </assert>
            <assert test="count(effectiveTime) = 1">Элемент observation ДОЛЖЕН содержать один [1..1]
                элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8020']/observation/id[substring(@root, string-length(@root) - 2) = '.52']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/id[substring(@root,
                string-length(@root) - 2)='.52'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.52$')">Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52</assert>
            <assert test="@extension != ''">Элемент id обязан содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8020']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8020'">Элемент code обязан содержать один атрибут @code со
                значением "8020"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8020']/observation/effectiveTime[not(@nullFlavor)]">
            <assert test="@value != ''">Элемент effectiveTime должен содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8020']/observation/effectiveTime[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8020']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8020']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@code != ''">Элемент value обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystem != ''">Элемент value обязан содержать один атрибут @codeSystem
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@codeSystemName != ''">Элемент value обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation) </assert>
            <assert test="count(text) = [0, 1]">Элемент observation МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8019'">Элемент code обязан содержать один атрибут @code со
                значением "8019"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']/observation/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "CD"</assert>
            <assert test="@code != ''">Элемент value обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystem != ''">Элемент value обязан содержать один атрибут @codeSystem
                с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент value обязан содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@codeSystemName != ''">Элемент value обязан содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент value обязан содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DRUG']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DRUG']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DRUG']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'DRUG'">Элемент code обязан содержать один атрибут @code со
                значением "DRUG"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DRUG']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'DRUG']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='DRUG']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ELSEPROCEDURE']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ELSEPROCEDURE']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ELSEPROCEDURE']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'ELSEPROCEDURE'">Элемент code обязан содержать один атрибут @code
                со значением "ELSEPROCEDURE"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ELSEPROCEDURE']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'ELSEPROCEDURE']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='ELSEPROCEDURE']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'POLT']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'POLT']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'POLT']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'POLT'">Элемент code обязан содержать один атрибут @code со
                значением "POLT"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'POLT']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'POLT']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='POLT']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RADIOTHERAPY']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RADIOTHERAPY']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RADIOTHERAPY']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RADIOTHERAPY'">Элемент code обязан содержать один атрибут @code
                со значением "RADIOTHERAPY"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RADIOTHERAPY']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RADIOTHERAPY']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RADIOTHERAPY']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SPECIALTREAT']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SPECIALTREAT']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SPECIALTREAT']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'SPECIALTREAT'">Элемент code обязан содержать один атрибут @code
                со значением "SPECIALTREAT"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SPECIALTREAT']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SPECIALTREAT']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SPECIALTREAT']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section) </assert>
            <assert test="count(component[section/code/@code = 'TRTMPLAN']) = [0, 1]">Элемент
                section МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section) </assert>
            <assert test="count(component[section/code/@code = 'OBSPLAN']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'PLANACTIVE'">Элемент code обязан содержать один атрибут @code со
                значением "PLANACTIVE"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'TRTMPLAN']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'TRTMPLAN']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'TRTMPLAN']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'TRTMPLAN'">Элемент code обязан содержать один атрибут @code со
                значением "TRTMPLAN"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'TRTMPLAN']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'TRTMPLAN']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='TRTMPLAN']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'OBSPLAN']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'OBSPLAN']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'OBSPLAN']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'OBSPLAN'">Элемент code обязан содержать один атрибут @code со
                значением "OBSPLAN"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'OBSPLAN']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'PLANACTIVE']/section/component[section/code/@code = 'OBSPLAN']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='PLANACTIVE']/section/component[section/code/@code='OBSPLAN']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8058']) = [0, 1]">Элемент section
                МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RESINFO'">Элемент code обязан содержать один атрибут @code со
                значением "RESINFO"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']/section/entry[observation/code/@code = '8058']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/entry[observation/code/@code='8058']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/entry[observation/code/@code='8058'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']/section/entry[observation/code/@code = '8058']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/entry[observation/code/@code='8058']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/entry[observation/code/@code='8058']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/entry[observation/code/@code='8058']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']/section/entry[observation/code/@code = '8058']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/entry[observation/code/@code='8058']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8058'">Элемент code обязан содержать один атрибут @code со
                значением "8058"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'RESINFO']/section/entry[observation/code/@code = '8058']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='RESINFO']/section/entry[observation/code/@code='8058']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'REGIME']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'REGIME']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'REGIME']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'REGIME'">Элемент code обязан содержать один атрибут @code со
                значением "REGIME"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'REGIME']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'REGIME']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='REGIME']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section) </assert>
            <assert test="count(text) = [0, 1]">Элемент section МОЖЕТ содержать не более одного
                [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section) </assert>
            <assert test="count(entry[observation/code/@code = '6035']) = 1">Элемент section ОБЯЗАН
                содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'SERVICES'">Элемент code обязан содержать один атрибут @code со
                значением "SERVICES"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">Элемент entry ОБЯЗАН содержать один [1..1] элемент
                observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation) </assert>
            <assert test="count(entryRelationship) >= 1">Элемент observation ОБЯЗАН содержать не
                менее одного [1..*] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '6035'">Элемент code обязан содержать один атрибут @code со
                значением "6035"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'INT'">Элемент value обязан содержать один атрибут @xsi:type
                со значением "INT"</assert>
            <assert test="@value != ''">Элемент value обязан содержать один атрибут @value с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation/entryRelationship">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(act) = 1">Элемент entryRelationship ОБЯЗАН содержать один [1..1]
                элемент act
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation/entryRelationship/act">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship/act
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ACT'">Элемент act обязан содержать один атрибут @classCode
                со значением "ACT"</assert>
            <assert test="@moodCode = 'EVN'">Элемент act обязан содержать один атрибут @moodCode со
                значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент act ДОЛЖЕН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship/act) </assert>
            <assert test="count(text) = [0, 1]">Элемент act МОЖЕТ содержать не более одного [0..1]
                элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship/act) </assert>
            <assert test="count(effectiveTime) = 1">Элемент act ОБЯЗАН содержать один [1..1] элемент
                effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship/act)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation/entryRelationship/act/code[not(@nullFlavor)]">
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1070', '1.2.643.5.1.13.2.1.1.473']"
                >Элемент code должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1070"</assert>
            <assert test="@codeSystemName != ''">Элемент code должен содержать один атрибут
                @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">Элемент code должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">Элемент code должен содержать один атрибут
                @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">Элемент code должен содержать один атрибут
                @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation/entryRelationship/act/code[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation/entryRelationship/act/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship/act/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'SERVICES']/section/entry[observation/code/@code = '6035']/observation/entryRelationship/act/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='SERVICES']/section/entry[observation/code/@code='6035']/observation/entryRelationship/act/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">Элемент component ОБЯЗАН содержать один [1..1] элемент
                section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section) </assert>
            <assert test="count(title) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент
                title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section) </assert>
            <assert test="count(text) = 1">Элемент section ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section) </assert>
            <assert
                test="count(entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]) >= 1"
                >Элемент section ОБЯЗАН содержать не менее одного [1..*] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/title">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент title должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']] не должен иметь
                атрибут @nullFlavor</report>
            <assert
                test="count(act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]) = 1"
                >Элемент entry ОБЯЗАН содержать один [1..1] элемент act
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']] не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@classCode = 'ACT'">Элемент act обязан содержать один атрибут @classCode
                со значением "ACT"</assert>
            <assert test="@moodCode = 'EVN'">Элемент act обязан содержать один атрибут @moodCode со
                значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент act ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(text) = [0, 1]">Элемент act МОЖЕТ содержать не более одного [0..1]
                элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(effectiveTime) = 1">Элемент act ОБЯЗАН содержать один [1..1] элемент
                effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '11002']) = [0, 1]"
                >Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '11003']) = [0, 1]"
                >Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '6058']) = [0, 1]"
                >Элемент act МОЖЕТ содержать не более одного [0..1] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
            <assert test="count(reference) = 1">Элемент act ОБЯЗАН содержать один [1..1] элемент
                reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/code не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@code != ''">Элемент code обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystem != ''">Элемент code обязан содержать один атрибут @codeSystem
                с не пустым значением; допустимые значения: "1.2.643.5.1.13.13.99.2.1079",
                "1.2.643.5.1.13.13.11.1522"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']"
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/text">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/text не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">Элемент text должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/effectiveTime">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/effectiveTime не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">Элемент effectiveTime обязан содержать один атрибут @value с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11002']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11002']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11002']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11002']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11002']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11003']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11003']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11003']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '11003']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='11003']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">Элемент value обязан содержать один атрибут @xsi:type со
                значением "ST"</assert>
            <assert test=". != ''">Элемент value должен содержать не пустое текстовое
                наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '6058']">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">Элемент entryRelationship обязан содержать один
                атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">Элемент entryRelationship ОБЯЗАН содержать один
                [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '6058']/observation">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">Элемент observation обязан содержать один атрибут
                @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">Элемент observation обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation) </assert>
            <assert test="count(value) = 1">Элемент observation ОБЯЗАН содержать один [1..1] элемент
                value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '6058']/observation/code">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation/code
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code = '6058']/observation/value">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/entryRelationship[observation/code/@code='6058']/observation/value
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">Элемент reference обязан содержать один атрибут
                @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">Элемент reference ОБЯЗАН содержать один
                [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument">
            <report test="@nullFlavor">Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'DOCCLIN'">Элемент externalDocument обязан содержать один
                атрибут @classCode со значением "DOCCLIN"</assert>
            <assert test="@moodCode = 'EVN'">Элемент externalDocument обязан содержать один атрибут
                @moodCode со значением "EVN"</assert>
            <assert test="count(id[1]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument) </assert>
            <assert test="count(id[2]) = 1">Элемент externalDocument ДОЛЖЕН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='HOSP']/section/component[section/code/@code='LINKDOCS']/section/entry[act/code/@codeSystem
                in ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem
                in
                ['1.2.643.5.1.13.13.99.2.1079','1.2.643.5.1.13.13.11.1522']]/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[1][not(@nullFlavor)]">
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.17.1.1'">Элемент id должен содержать один
                атрибут @root со значением "1.2.643.5.1.13.13.17.1.1"</assert>
            <assert test="@extension != ''">Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'HOSP']/section/component[section/code/@code = 'LINKDOCS']/section/entry[act/code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/act[code/@codeSystem = ['1.2.643.5.1.13.13.99.2.1079', '1.2.643.5.1.13.13.11.1522']]/reference/externalDocument/id[2][@nullFlavor]">
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
        <rule context="//identity:Props[not(@nullFlavor)][identity:Ogrn or identity:Ogrnip]">
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
            <assert
                test="matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(low[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
                >Дата должна соответствовать формату "YYYYMMDDHHmmSS +| ZZZZ", где "YYYY" – год,
                "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, " +| ZZZZ" - указатель
                временной зоны.</assert>
            <assert test="high[not(@nullFlavor)]/@value != ''">Элемент, содержащий
                @xsi:type='IVL_TS', должен иметь не пустое значение атрибута high/@value.</assert>
            <assert
                test="matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(high[not(@nullFlavor)]/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')"
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
